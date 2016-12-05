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
	
	public static void send_mail(String receiveMailAccount,String url) throws Exception {
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

        //����һ���ʼ�
        MimeMessage message = createMimeMessage(session,Emailaccout, receiveMailAccount,url);

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

    public static MimeMessage createMimeMessage(Session session, String sendMail, String receiveMail,String url) throws Exception {

        MimeMessage message = new MimeMessage(session);

        message.setFrom(new InternetAddress(sendMail));
        //�ռ��˿���Ϊ���
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail));
        
        message.setSubject("��ӭ���","UTF-8");
        message.addHeader("Disposition-Notification-To","1");
        //message.setText("����һ���Լ�д���򷢵��ʼ���������յ��ˣ��벻Ҫ�ظ�������ð����");
        Multipart mainPart = new MimeMultipart();
        BodyPart html = new MimeBodyPart();
        html.setContent(url+"������簡�����������ͧ����", "text/html; charset=utf-8");
        mainPart.addBodyPart(html);
        message.setContent(mainPart);
        message.setSentDate(new Date());
        message.saveChanges();

        return message;
    }

}