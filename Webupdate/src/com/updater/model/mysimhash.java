package com.updater.model;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

public class mysimhash {
	
	/*
	 *将文本中的通用项给去掉
	 */
	private String sp="=|\\.|\n|\r| |<html|/html|<h1|</h1>|<h2|/h2|<h3|/h3|<ul|/ul|<br|/br|<head|/head|<li|/li|<div|/div|<a|/a|<p|/p|<body|/body|"
			+ "<|>|<script|/scirpt|<title|/title|<pre|</pre>|<meta|</meta>|<header|</header>|<span|/span";
	
	private String tokens;  //文本
	
	public BigInteger intSimHash; //没有长度限制的数
    
    public String strSimHash;
    
    private int hashbits = 64;
    
    public mysimhash(String tokens){
    	this.tokens = tokens;
        //看错了，这个和类SimHash比较相似，看花眼了
        this.intSimHash = this.simhash();
    }
    
    public mysimhash(String tokens,int hashbits){
        this.tokens = tokens;
        this.hashbits = hashbits;
        this.intSimHash = this.simhash();
    }
    
    public BigInteger simhash(){
    	int[] v = new int[this.hashbits];
    	String[] st=this.tokens.split(sp);
    	String[] s=new String[st.length];
		int k=0;
		for(int i=0;i<s.length;i++){
			if (st[i].length()<=0){
			}
			else
			{
				s[k]=st[i];
				k++;
			}
		}
    	int i=0;
    	while(i<k){
    		String temp=s[i];
    		BigInteger t = this.hash(temp);
    		for(int j=0;j<this.hashbits;j++){
    			BigInteger bitmask = new BigInteger("1").shiftLeft(j);
    			if (t.and(bitmask).signum() != 0) {
                    v[j] += 1;
                } 
    			else {
                    v[j] -= 1;
                }
    		}
    		i++;
    	}
    	BigInteger fingerprint = new BigInteger("0");
    	StringBuffer simHashBuffer = new StringBuffer();
    	for (i = 0; i < this.hashbits; i++) {
            if (v[i] >= 0) {
                fingerprint = fingerprint.add(new BigInteger("1").shiftLeft(i));
                simHashBuffer.append("1");
            }else{
                simHashBuffer.append("0");
            }
        }
    	this.strSimHash = simHashBuffer.toString();
        //System.out.println(this.strSimHash + " length " + this.strSimHash.length());
        return fingerprint;
    }
    
    //计算每一位的哈希码
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
    
    public List<BigInteger> subByDistance(mysimhash simHash, int distance){
    	int numEach = this.hashbits/(distance+1);
    	List<BigInteger> characters = new ArrayList();
        
    	StringBuffer buffer = new StringBuffer();

    	for( int i = 0; i < this.intSimHash.bitLength(); i++){
        	boolean sr = simHash.intSimHash.testBit(i);
        	
        	if(sr){
        		buffer.append("1");
        	}	
        	else{
        		buffer.append("0");
        	}
        	
        	if( (i+1)%numEach == 0 ){
            	BigInteger eachValue = new BigInteger(buffer.toString(),2);
            	System.out.println("----" +eachValue );
            	buffer.delete(0, buffer.length());
            	characters.add(eachValue);
        	}
        }

    	return characters;
    }
    
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
    
    public int hammingDistance(mysimhash other) {
    	
        BigInteger x = this.intSimHash.xor(other.intSimHash);
        int tot = 0;
        
        //统计x中二进制位数为1的个数
        //我们想想，一个二进制数减去1，那么，从最后那个1（包括那个1）后面的数字全都反了，对吧，然后，n&(n-1)就相当于把后面的数字清0，
        //我们看n能做多少次这样的操作就OK了。
        
         while (x.signum() != 0) {
            tot += 1;
            x = x.and(x.subtract(new BigInteger("1")));
        }
        return tot;
    }
    /*
    public static void main(String[] args) {
    	 String s = "我爱读书";
    	 mysimhash hash1=new mysimhash(s,64);
    	 System.out.println(hash1.intSimHash + "  " + hash1.intSimHash.bitLength());
    	 hash1.subByDistance(hash1, 3);
    	 System.out.println("\n");
         s = "我爱读书，哈哈123";
         mysimhash hash2 = new mysimhash(s, 64);
      
         System.out.println(hash2.intSimHash+ "  " + hash2.intSimHash.bitCount());
         hash1.subByDistance(hash2, 3);
         s = "i love bashing";
         mysimhash hash3 = new mysimhash(s, 64);
         System.out.println(hash3.intSimHash+ "  " + hash3.intSimHash.bitCount());
         hash1.subByDistance(hash3, 3);
         System.out.println("============================");
         int dis = hash1.getDistance(hash1.strSimHash,hash2.strSimHash);
         double score=1.0*dis/64;
         System.out.println(score);
         System.out.println(hash1.hammingDistance(hash2) + " "+ dis);
         
         int dis2 = hash1.getDistance(hash1.strSimHash,hash3.strSimHash);
         
         System.out.println(hash1.hammingDistance(hash3) + " " + dis2);
    }
    */
}
