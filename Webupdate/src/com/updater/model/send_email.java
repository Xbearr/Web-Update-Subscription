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
        //������������, ���������ʼ��������Ĳ�������
        Properties props = new Properties();                    // ��������
        props.put("mail.smtp.host", "host");
        props.put("mail.transport.protocol", "smtp");   // ʹ�õ�Э�飨JavaMail�淶Ҫ��
        props.put("mail.host", myEmailSMTPHost);        // �����˵������ SMTP ��������ַ
        props.put("mail.smtp.auth", "true");            // ������֤���������������ʵ���й�
        
        //����ssl��ȫ����
        MailSSLSocketFactory sf = new MailSSLSocketFactory();
        sf.setTrustAllHosts(true);
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.ssl.socketFactory", sf);
        //�������ô����Ự����, ���ں��ʼ�����������

        Session session = Session.getDefaultInstance(props);
        session.setDebug(true);                                 // ����Ϊdebugģʽ, ���Բ鿴��ϸ�ķ��� log
        
        MimeMessage message;
        //����һ���ʼ�
        if(a==0){
        	message = createMimeMessage0(session,Emailaccout, receiveMailAccount,object);
        }else if(a==1){
        	message = createMimeMessage1(session,Emailaccout, receiveMailAccount,object);
        }else {
        	message = createMimeMessage2(session,Emailaccout, receiveMailAccount,object);
        }
        
        // ���� Session ��ȡ�ʼ��������
        Transport transport = session.getTransport();

        //ʹ�� �����˺� �� ���� �����ʼ�������
        transport.connect(myEmailSMTPHost,Emailaccout,Emailpassword);
        //�����ʼ�, �������е��ռ���ַ, message.getAllRecipients() ��ȡ�������ڴ����ʼ�����ʱ��ӵ������ռ���, ������, ������
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
        //�ռ��˿���Ϊ���
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail));
        
        message.setSubject("Your password is almost get reback!","UTF-8");
        message.addHeader("Disposition-Notification-To","1");
        //message.setText("����һ���Լ�д���򷢵��ʼ���������յ��ˣ��벻Ҫ�ظ�������ð����");
        Multipart mainPart = new MimeMultipart();
        BodyPart html = new MimeBodyPart();
        html.setContent("  �װ����û������������Ѿ��һأ����ס������룬��Ҫ��ʧ;���ĵ�ǰ����Ϊ:"+pw+";  ��л�������ǵ������ʹ�ã��ټ�", "text/html; charset=utf-8");
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
        //�ռ��˿���Ϊ���
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail));
        
        message.setSubject("��ӭע��updater����л����ʹ��","UTF-8");
        message.addHeader("Disposition-Notification-To","1");
        //message.setText("����һ���Լ�д���򷢵��ʼ���������յ��ˣ��벻Ҫ�ظ�������ð����");
        Multipart mainPart = new MimeMultipart();
        BodyPart html = new MimeBodyPart();
        html.setContent("  �װ����û�"+username+",��ӭʹ�����ǵ����������ʼ���Ϊ��ȷ������ע�����������������ʹ�á����ûظ���лл", "text/html; charset=utf-8");
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
        //�ռ��˿���Ϊ���
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail));
        
        message.setSubject("�������ĵ���վ�Ѹ���","UTF-8");
        message.addHeader("Disposition-Notification-To","1");
        //message.setText("����һ���Լ�д���򷢵��ʼ���������յ��ˣ��벻Ҫ�ظ�������ð����");
        Multipart mainPart = new MimeMultipart();
        BodyPart html = new MimeBodyPart();
        html.setContent("  �װ����û����������ĵ���վ"+url+" �Ѿ����˸��£���ȥ�鿴��", "text/html; charset=utf-8");
        mainPart.addBodyPart(html);
        message.setContent(mainPart);
        message.setSentDate(new Date());
        message.saveChanges();

        return message;
    }
}