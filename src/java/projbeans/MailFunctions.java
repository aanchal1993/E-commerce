
package projbeans;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author sunny
 */
public class MailFunctions {
    public static boolean msgSend(String sender,String to, String subject,String mailText) throws Exception
{
     //display name
       String from =sender;
        
        /* CONNECTING TO MAIL SERVER */
       final String username = "aanchal.sharma.punj@gmail.com";
       final String password = "9988559811as";
        
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

         /* AUTHENTICATION WITH MAIL SERVER */
        Session session = Session.getInstance(props,
          new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                }
          });



//construct message
Message msg = new MimeMessage(session);

msg.setFrom(new InternetAddress(username,from));
msg.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to, false));
msg.setSubject(subject);
msg.setText(mailText);
msg.setSentDate(new java.util.Date());

msg.saveChanges();

/* SEND MESSAGE */
Transport.send(msg);

return true;
   		
				
	}   
}
