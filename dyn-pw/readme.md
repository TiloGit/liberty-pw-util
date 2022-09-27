quick hack to decode Liberty / WLP/ WAS AES 128 enc pw. 
Can also use for XOR but they are plenty of option for XOR. 

encode via: https://www.openliberty.io/docs/latest/reference/command/securityUtility-encode.html

see also

https://www.openliberty.io/docs/latest/password-encryption.html

https://gitlab.com/pppoudel/public_shared/-/tree/master/WLibertyPwdUtil

How to use:
* Have a WLP (liberty)
* modify the liberty-conf.xml to your enc key and let it load by your liberty
* open page http://localhost:9080/dyn-pw/pw-update.jsp
* enter your pw you like to Encoded or the Encoded string (with the {aes} prefix) to get it Decode

How to install WLP/liberty
*  https://openliberty.io/start/
*  setx JAVA_HOME "C:\myJave\jdk" 
*  run in BIN dir:  server.bat create 
*  mkdir -p C:\wlp\usr\servers\defaultServer\configDropins\defaults
*  ##drop the xml and war
*  featureUtility.bat installServerFeatures defaultServer
*  server.bat start