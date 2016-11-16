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

public class send_email {
	
	public static String Emailaccout="ruansheproject@163.com";
	public static String Emailpassword="yx123456";
	public static String myEmailSMTPHost = "smtp.163.com";
	
	public static void send_mail(String receiveMailAccount) throws Exception {
        // 1. 创建参数配置, 用于连接邮件服务器的参数配置
        Properties props = new Properties();                    // 参数配置
        props.put("mail.smtp.host", "host");
        props.put("mail.transport.protocol", "smtp");   // 使用的协议（JavaMail规范要求）
        props.put("mail.host", myEmailSMTPHost);        // 发件人的邮箱的 SMTP 服务器地址
        props.put("mail.smtp.auth", "true");            // 请求认证，参数名称与具体实现有关

        // 2. 根据配置创建会话对象, 用于和邮件服务器交互

        Session session = Session.getDefaultInstance(props);
        session.setDebug(true);                                 // 设置为debug模式, 可以查看详细的发送 log

        // 3. 创建一封邮件
        MimeMessage message = createMimeMessage(session, Emailaccout, receiveMailAccount);

        // 4. 根据 Session 获取邮件传输对象
        Transport transport = session.getTransport();

        // 5. 使用 邮箱账号 和 密码 连接邮件服务器
        //    这里认证的邮箱必须与 message 中的发件人邮箱一致，否则报错
        transport.connect(myEmailSMTPHost,Emailaccout, Emailpassword);
        System.out.println("16"+message.getAllRecipients()+"eeee");
        // 6. 发送邮件, 发到所有的收件地址, message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
        try{
        transport.sendMessage(message, message.getAllRecipients());
        }catch(MessagingException ex){
        	ex.printStackTrace();
        }

        // 7. 关闭连接
        transport.close();
    }

    /**
     * 创建一封只包含文本的简单邮件
     *
     * @param session 和服务器交互的会话
     * @param sendMail 发件人邮箱
     * @param receiveMail 收件人邮箱
     * @return
     * @throws Exception
     */
    public static MimeMessage createMimeMessage(Session session, String sendMail, String receiveMail) throws Exception {
        // 1. 创建一封邮件
        MimeMessage message = new MimeMessage(session);

        // 2. From: 发件人
        message.setFrom(new InternetAddress(sendMail));

        // 3. To: 收件人（可以增加多个收件人、抄送、密送）
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail));

        // 4. Subject: 邮件主题
        message.setSubject("欢迎，Jhondasdadad","UTF-8");
        message.addHeader("Disposition-Notification-To","1");
        //message.setText("这是一封自己写程序发的邮件，如果你收到了，请不要回复！无意冒犯！");
        Multipart mainPart = new MimeMultipart();
        BodyPart html = new MimeBodyPart();
        html.setContent("这个世界啊，好苦恼啊dassssssssssssssssssssssssssssssss", "text/html; charset=utf-8");
        mainPart.addBodyPart(html);
        message.setContent(mainPart);
        // 5. Content: 邮件正文（可以使用html标签）
        //message.setContent("这是这次的作业", "1/html;charset=UTF-8");
        //message.setContent("zheshiwodezuoye", "text/plain");
        // 6. 设置发件时间
        message.setSentDate(new Date());
        // 7. 保存设置
        message.saveChanges();

        return message;
    }

}