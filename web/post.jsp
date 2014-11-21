<%@ page import = "java.util.Properties, javax.mail.*,
         javax.mail.internet.*, javax.activation.*, java.io.*, javax.servlet.*,
         javax.servlet.http.*" %>
<%
    try {

        String to = "j.essicamoreira@hotmail.com";
        String from = request.getParameter("de");

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.hotmail.com");

        Session sessao = Session.getInstance(props);
        sessao.setDebug(true);

        MimeMessage message = new MimeMessage(sessao);

        message.setFrom(new InternetAddress(from));
        Address toAddress = new InternetAddress(to);
        message.addRecipient(Message.RecipientType.TO, toAddress);

        message.setSubject(request.getParameter("assunto"));
        message.setText(request.getParameter("comenta"));

        Transport.send(message);
        out.println("<br><br><br>");
        out.println("<html>");
        out.println("<div align=center>");
        out.println("<body>");
        out.println("Mensagem enviada.<p> Obrigado!");
        out.println("</body>");
        out.println("</html>");
    } catch (MessagingException e) {
        out.println("O email nao pode ser enviado. Verifique o preenchimento dos campos do {            formulario        }  ! " + e.getMessage());
    }
%>