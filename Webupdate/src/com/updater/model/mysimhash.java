package com.updater.model;
import java.math.BigInteger;
import java.util.*; 
import java.util.regex.*;

public class mysimhash {
	
	//通过正则将一些常用的在文本查重中无用的标签去掉
	private static String sp="=|\\.|。|，|\"|'|\\[|\\]|！|\\!|\\?|/|\n|\r| |<html|/html|<h1|</h1>|<h2|/h2|<h3|/h3|<ul|/ul|<br|/br|<head|/head|<li|/li|<div|/div|<a|/a|<p|/p|<body|/body|"
			+ "-_-|\\)|\\(|,|\\{|\\}|;|:|--|<|>|<script|/scirpt|<title|/title|<pre|</pre>|<meta|</meta>|<header|</header>|<span|/span|_|#|&|%|-";
	
	private String tokens;  //文本
	
	public BigInteger intSimHash; //没有长度限制的数
    
    public String strSimHash;
    
    private int hashbits = 64;
    
    private int max=100000;
    
    public mysimhash(String tokens,int hashbits){
    	this.tokens=tokens;
        this.hashbits = hashbits;
        this.intSimHash = this.simhash();
    }
    //用map来保存键值和权重。由于map键值唯一的特性，方便管理
	public Map<String, Integer> countString(){
		
		//先切割字符串，去掉一些分隔符
    	String[] st=this.tokens.split(sp);
    	String[] s=new String[max];
		int k=0;
		
		//去掉因为正则切割而造成的空格，并且将含中文的字符串分开
		for(int i=0;i<st.length;i++){
			if (st[i].length()<=0){
			}
			else
			{
				if(isChinese(st[i])==1){
					for(int j=0;j<st[i].length();j++){
						//System.out.println(String.valueOf(st[i].charAt(j)));
						s[k]=String.valueOf(st[i].charAt(j));
						k++;
					}
				}
				else{
					s[k]=st[i];
					k++;
				}
			}
		}
		
		Map<String, Integer> hash_Data = new HashMap<String, Integer>();
		for(int i=0;i<k;i++){
			String word=s[i];
			if(hash_Data.containsKey(word)){
				int t=hash_Data.get(word).intValue()+1;
				hash_Data.put(word, new Integer(t));
			}
			else{
				hash_Data.put(word, new Integer(1));
			 }
		 }
		 return hash_Data;
    }
    
	//判断是否为中文
	public int isChinese(String str) {
        String regEx1 = "[\\u4e00-\\u9fa5]+";
        String regEx2 = "[\\uFF00-\\uFFEF]+";
        String regEx3 = "[\\u2E80-\\u2EFF]+";
        String regEx4 = "[\\u3000-\\u303F]+";
        String regEx5 = "[\\u31C0-\\u31EF]+";
        Pattern p1 = Pattern.compile(regEx1);
        Pattern p2 = Pattern.compile(regEx2);
        Pattern p3 = Pattern.compile(regEx3);
        Pattern p4 = Pattern.compile(regEx4);
        Pattern p5 = Pattern.compile(regEx5);
        Matcher m1 = p1.matcher(str);
        Matcher m2 = p2.matcher(str);
        Matcher m3 = p3.matcher(str);
        Matcher m4 = p4.matcher(str);
        Matcher m5 = p5.matcher(str);
        if (m1.find() || m2.find() || m3.find() || m4.find() || m5.find())
            return 1;
        else
            return 0;
    }
	
	//主函数
    public BigInteger simhash(){
    	int[] v = new int[this.hashbits];
    	Map<String, Integer> hash_Data=countString();
    	Iterator<String> iter = hash_Data.keySet().iterator();
    	while(iter.hasNext()){
    		String word=(String) iter.next();
    		
    		//计算hash值，并且按照64位的每一位进行计算，结果保存在v内
    		BigInteger t = this.hash(word);
    		for(int j=0;j<this.hashbits;j++){
    			BigInteger bitmask = new BigInteger("1").shiftLeft(j);
    			if (t.and(bitmask).signum() != 0) {
                    v[j] += hash_Data.get(word);
                } 
    			else {
                    v[j] -= hash_Data.get(word);
                }
    		}
    	}
    	
    	//生成fingerprint
    	BigInteger fingerprint = new BigInteger("0");
    	StringBuffer simHashBuffer = new StringBuffer();
    	for (int i = 0; i < this.hashbits; i++) {
            if (v[i] >= 0) {
                fingerprint = fingerprint.add(new BigInteger("1").shiftLeft(i));
                simHashBuffer.append("1");
            }else{
                simHashBuffer.append("0");
            }
        }
    	this.strSimHash = simHashBuffer.toString();
        return fingerprint;
    }
    
    //计算每个字符的hash值
    private BigInteger hash(String source) {
    	if (source == null || source.length() == 0) {
            return new BigInteger("0");
        } else {
            char[] sourceArray = source.toCharArray();
            BigInteger x = BigInteger.valueOf(((long) sourceArray[0]) << 7);
            BigInteger m = new BigInteger("1000003");
            BigInteger mask = new BigInteger("2").pow(this.hashbits).subtract(
                    new BigInteger("1"));
            for (char item : sourceArray) {
                BigInteger temp = BigInteger.valueOf((long) item);
                x = x.multiply(m).xor(temp).and(mask);
            }
            x = x.xor(new BigInteger(String.valueOf(source.length())));
            if (x.equals(new BigInteger("-1"))) {
                x = new BigInteger("-2");
            }
            return x;
        }
    }
    
    //求两字符串之间的距离
    public int getDistance(String str1, String str2) {  
        int distance;  
        if (str1.length() != str2.length()) {  
            distance = -1;  
        } else {  
            distance = 0;  
            for (int i = 0; i < str1.length(); i++) {  
                if (str1.charAt(i) != str2.charAt(i)) {  
                    distance++;  
                }  
            }  
        }  
        return distance;  
    }
}
