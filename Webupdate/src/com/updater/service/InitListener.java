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
            myThread1.start(); // servlet �����ĳ�ʼ��ʱ���� socket  
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
 * �Զ���һ�� Class �߳���̳����߳��࣬��д run() ���������ڴӺ�̨��ȡ���������� 
 *  
 * @author Champion.Wong 
 *  
 */  
class MyThread1 extends Thread {  
    public void run() {  
    	while (!this.isInterrupted()) {// �߳�δ�ж�ִ��ѭ��  
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
              
            // ------------------ ��ʼִ�� ---------------------------  
            //System.out.println("____FUCK TIME:" + System.currentTimeMillis());  
        }  
    }  
} 