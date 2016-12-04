package com.updater.service;  
  
import java.io.IOException;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;

import com.updater.db.getSQL;
import com.updater.model.Url;
import com.updater.model.updata_trigger;  
  
public class InitListener extends HttpServlet{  
  
    private static final long serialVersionUID = 1L;  
    private MyThread1 myThread1;  
      
    public InitListener(){  
    }  
  
    public void init(){  
    	System.out.println("in it");
        String str = null;  
        if (str == null && myThread1 == null) {  
            myThread1 = new MyThread1();  
            myThread1.start(); // servlet 上下文初始化时启动 socket  
        }  
    }  
  
    public void doGet(HttpServletRequest httpservletrequest, HttpServletResponse httpservletresponse)  
        throws ServletException, IOException{  
    }  
  
    public void destory(){  

    	System.out.println("in it");
        if (myThread1 != null && myThread1.isInterrupted()) {  
            myThread1.interrupt();  
        }  
    }  
}  
  
/** 
 * 自定义一个 Class 线程类继承自线程类，重写 run() 方法，用于从后台获取并处理数据 
 *  
 * @author Champion.Wong 
 *  
 */  
class MyThread1 extends Thread {  
    public void run() {  
    	while (!this.isInterrupted()) {// 线程未中断执行循环  
            try {  
                Thread.sleep(2000);  
            } catch (InterruptedException e) {  
                e.printStackTrace();  
            }  
             
            getSQL down = new getSQL();
            Url url = new Url();
            url=down.GetUrlById("0");
            
            updata_trigger up=new updata_trigger();
            try {
            	if (url.equals(null)) continue;
				up.spider_trigger(url);
			} catch (Exception e) {
				e.printStackTrace();
			}
              
            // ------------------ 开始执行 ---------------------------  
            //System.out.println("____FUCK TIME:" + System.currentTimeMillis());  
        }  
    }  
} 