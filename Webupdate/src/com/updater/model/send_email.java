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
        // 1. ������������, ���������ʼ��������Ĳ�������
        Properties props = new Properties();                    // ��������
        props.put("mail.smtp.host", "host");
        props.put("mail.transport.protocol", "smtp");   // ʹ�õ�Э�飨JavaMail�淶Ҫ��
        props.put("mail.host", myEmailSMTPHost);        // �����˵������ SMTP ��������ַ
        props.put("mail.smtp.auth", "true");            // ������֤���������������ʵ���й�

        // 2. �������ô����Ự����, ���ں��ʼ�����������

        Session session = Session.getDefaultInstance(props);
        session.setDebug(true);                                 // ����Ϊdebugģʽ, ���Բ鿴��ϸ�ķ��� log

        // 3. ����һ���ʼ�
        MimeMessage message = createMimeMessage(session, Emailaccout, receiveMailAccount);

        // 4. ���� Session ��ȡ�ʼ��������
        Transport transport = session.getTransport();

        // 5. ʹ�� �����˺� �� ���� �����ʼ�������
        //    ������֤����������� message �еķ���������һ�£����򱨴�
        transport.connect(myEmailSMTPHost,Emailaccout, Emailpassword);
        System.out.println("16"+message.getAllRecipients()+"eeee");
        // 6. �����ʼ�, �������е��ռ���ַ, message.getAllRecipients() ��ȡ�������ڴ����ʼ�����ʱ��ӵ������ռ���, ������, ������
        try{
        transport.sendMessage(message, message.getAllRecipients());
        }catch(MessagingException ex){
        	ex.printStackTrace();
        }

        // 7. �ر�����
        transport.close();
    }

    /**
     * ����һ��ֻ�����ı��ļ��ʼ�
     *
     * @param session �ͷ����������ĻỰ
     * @param sendMail ����������
     * @param receiveMail �ռ�������
     * @return
     * @throws Exception
     */
    public static MimeMessage createMimeMessage(Session session, String sendMail, String receiveMail) throws Exception {
        // 1. ����һ���ʼ�
        MimeMessage message = new MimeMessage(session);

        // 2. From: ������
        message.setFrom(new InternetAddress(sendMail));

        // 3. To: �ռ��ˣ��������Ӷ���ռ��ˡ����͡����ͣ�
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail));

        // 4. Subject: �ʼ�����
        message.setSubject("��ӭ��Jhondasdadad","UTF-8");
        message.addHeader("Disposition-Notification-To","1");
        //message.setText("����һ���Լ�д���򷢵��ʼ���������յ��ˣ��벻Ҫ�ظ�������ð����");
        Multipart mainPart = new MimeMultipart();
        BodyPart html = new MimeBodyPart();
        html.setContent("������簡���ÿ��հ�dassssssssssssssssssssssssssssssss", "text/html; charset=utf-8");
        mainPart.addBodyPart(html);
        message.setContent(mainPart);
        // 5. Content: �ʼ����ģ�����ʹ��html��ǩ��
        //message.setContent("������ε���ҵ", "1/html;charset=UTF-8");
        //message.setContent("zheshiwodezuoye", "text/plain");
        // 6. ���÷���ʱ��
        message.setSentDate(new Date());
        // 7. ��������
        message.saveChanges();

        return message;
    }

}