package utils;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public final class SendEmail {
	public static void send(String from, String recipients, String subject,
			String content) {

		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		//props.put("mail.smtp.host", "mail.igsalabs.com");
		
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session = Session.getDefaultInstance(props,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication("4igsalabs@gmail.com","igsa@labs");
						//return new PasswordAuthentication("anurag.singh@igsalabs.com","igsalabs@12");
					}
				});
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipients));
			//message.setRecipients(Message.RecipientType.CC, InternetAddress.parse("test@xyz.com"));
			message.setSubject(subject);
			message.setText(content);
			message.setContent(content, "text/html");
			Transport.send(message);
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

	
	public static void main(String[] args) {
		
		//send("4igsalabs@gmail.com", "nksingh.rajput@gmail.com", "testing......", "testing message");
	}
}
