package com.updater.model;

import java.io.UnsupportedEncodingException;  
import java.util.Date;  
import java.util.Properties;  
   
import javax.mail.Address;  
import javax.mail.Authenticator;  
import javax.mail.BodyPart;  
import javax.mail.Message;  
import javax.mail.MessagingException;  
import javax.mail.Multipart;  
import javax.mail.Session;  
import javax.mail.Transport;  
import javax.mail.internet.InternetAddress;  
import javax.mail.internet.MimeBodyPart;  
import javax.mail.internet.MimeMessage;  
import javax.mail.internet.MimeMultipart;
import com.sun.mail.util.MailSSLSocketFactory;

public class send_email {
	
	public static String Emailaccout="631319951@qq.com";
	public static String Emailpassword="mgqemrodypdvbdja";
	public static String myEmailSMTPHost = "smtp.qq.com";
	
	public static void send_mail(String receiveMailAccount,String object,int a) throws Exception {
        //创建参数配置, 用于连接邮件服务器的参数配置
        Properties props = new Properties();                    // 参数配置
        props.put("mail.smtp.host", "host");
        props.put("mail.transport.protocol", "smtp");   // 使用的协议（JavaMail规范要求）
        props.put("mail.host", myEmailSMTPHost);        // 发件人的邮箱的 SMTP 服务器地址
        props.put("mail.smtp.auth", "true");            // 请求认证，参数名称与具体实现有关
        
        //创建ssl安全连接
        MailSSLSocketFactory sf = new MailSSLSocketFactory();
        sf.setTrustAllHosts(true);
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.ssl.socketFactory", sf);
        //根据配置创建会话对象, 用于和邮件服务器交互

        Session session = Session.getDefaultInstance(props);
        session.setDebug(true);                                 // 设置为debug模式, 可以查看详细的发送 log
        
        MimeMessage message;
        //创建一封邮件
        if(a==0){
        	message = createMimeMessage0(session,Emailaccout, receiveMailAccount,object);
        }else if(a==1){
        	message = createMimeMessage1(session,Emailaccout, receiveMailAccount,object);
        }else {
        	message = createMimeMessage2(session,Emailaccout, receiveMailAccount,object);
        }
        
        // 根据 Session 获取邮件传输对象
        Transport transport = session.getTransport();

        //使用 邮箱账号 和 密码 连接邮件服务器
        transport.connect(myEmailSMTPHost,Emailaccout,Emailpassword);
        //发送邮件, 发到所有的收件地址, message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
        try{
        	transport.sendMessage(message, message.getAllRecipients());
        }catch(MessagingException ex){
        	ex.printStackTrace();
        }
        transport.close();
    }
	
	//findpassword
    public static MimeMessage createMimeMessage0(Session session, String sendMail, String receiveMail,String pw) throws Exception {

        MimeMessage message = new MimeMessage(session);

        message.setFrom(new InternetAddress(sendMail));
        //收件人可以为多个
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail));
        
        message.setSubject("Your password is almost get reback!","UTF-8");
        message.addHeader("Disposition-Notification-To","1");
        //message.setText("这是一封自己写程序发的邮件，如果你收到了，请不要回复！无意冒犯！");
        Multipart mainPart = new MimeMultipart();
        BodyPart html = new MimeBodyPart();
        html.setContent("  亲爱的用户，您的密码已经找回，请记住你的密码，不要丢失;您的当前密码为:"+pw+";  感谢您对我们的软件的使用，再见", "text/html; charset=utf-8");
        mainPart.addBodyPart(html);
        message.setContent(mainPart);
        message.setSentDate(new Date());
        message.saveChanges();

        return message;
    }
    
    //register
    public static MimeMessage createMimeMessage1(Session session, String sendMail, String receiveMail,String username) throws Exception {
        MimeMessage message = new MimeMessage(session);

        message.setFrom(new InternetAddress(sendMail));
        //收件人可以为多个
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail));
        
        message.setSubject("欢迎注册updater，感谢您的使用","UTF-8");
        message.addHeader("Disposition-Notification-To","1");
        //message.setText("这是一封自己写程序发的邮件，如果你收到了，请不要回复！无意冒犯！");
        Multipart mainPart = new MimeMultipart();
        BodyPart html = new MimeBodyPart();
        html.setContent("  亲爱的用户"+username+",欢迎使用我们的软件。这封邮件是为了确认您所注册的邮箱是您本人在使用。不用回复，谢谢", "text/html; charset=utf-8");
        mainPart.addBodyPart(html);
        message.setContent(mainPart);
        message.setSentDate(new Date());
        message.saveChanges();

        return message;
    }
    
    //trigger-email
    public static MimeMessage createMimeMessage2(Session session, String sendMail, String receiveMail,String url) throws Exception {
        MimeMessage message = new MimeMessage(session);

        message.setFrom(new InternetAddress(sendMail));
        //收件人可以为多个
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail));
        
        message.setSubject("您所订阅的网站已更新","UTF-8");
        message.addHeader("Disposition-Notification-To","1");
        //message.setText("这是一封自己写程序发的邮件，如果你收到了，请不要回复！无意冒犯！");
        Multipart mainPart = new MimeMultipart();
        BodyPart html = new MimeBodyPart();
        html.setContent("  亲爱的用户，您所订阅的网站"+url+" 已经有了更新，快去查看吧", "text/html; charset=utf-8");
        mainPart.addBodyPart(html);
        message.setContent(mainPart);
        message.setSentDate(new Date());
        message.saveChanges();

        return message;
    }
}