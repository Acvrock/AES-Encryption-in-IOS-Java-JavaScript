AES加密 J2EE、IOS、Android、JavaScript实现 

----
前一阵项目涉及到AES加密，需要实现后台J2EE、IOS、Android、JavaScript三端都适用，在网上找了一下，找到一个三端都适用的方法。这里使用的加密配置是: 
> * 使用AES/ECB/PKCS5Padding 模式  > * 密钥长度：必须为128位16个字符  > * 密钥偏移量：1234567890123456  > * 补码方式为PKSC5Padding或PKSC7Padding  > * 加密结果编码方式为：base64 
*加密的密钥key最好是16个字符，因为不同平台对少于16个字符的key采用了不同的补全方式* 
AES加密如图：![decryptAESData](https://github.com/vNcdkguqHUh/AES-Encryption-in-IOS-Java-JavaScript/blob/master/img/encryptAESData.png?raw=true)
AES解密如图：
![decryptAESData](https://github.com/vNcdkguqHUh/AES-Encryption-in-IOS-Java-JavaScript/blob/master/img/decryptAESData.png?raw=true)

# 致谢
感谢原作者。