<!DOCTYPE HTML>
<%@page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>index</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
     <%! String password="blabla"; %>
     <h2> FROM: https://gitlab.com/pppoudel/public_shared/-/blob/master/WLibertyPwdUtil/pwdencdemo.war/passutil.jsp </h2>
     <h2> This page shows how to use com.ibm.websphere.crypto.PasswordUtil to encrypt/decrypt password using xor or aes.</h2>
     <hr/>
     <h3> Provided plain text password is:<%= password %></h3>
     Note: encryption key from server.xml is being used for "aes" encryption/decryption. <br/>
     <br/>
     <%! String xorEncodedVal=com.ibm.websphere.crypto.PasswordUtil.passwordEncode(password, "xor");
         String aesEncodedVal=com.ibm.websphere.crypto.PasswordUtil.passwordEncode(password, "aes"); %>
     <h3> xor encoded value is: <%= xorEncodedVal %> </h3>
     <h3> aes encrypted value is: <%= aesEncodedVal %> </h3>
     <h3> xor decoded value is: <% out.println(com.ibm.websphere.crypto.PasswordUtil.passwordDecode(xorEncodedVal)); %> </h3>
     <h3> aes decrypted value is: <% out.println(com.ibm.websphere.crypto.PasswordUtil.passwordDecode(aesEncodedVal)); %> </h3> 
     
</body>
</html>
