版本2.3.0 / 2016-02-19/王富成
==================
* * * 
##安装使用##
  * 数据库导入：将根目录中的medicalprogect.sql导入至本地数据库
  * 数据库设置：更改根目录setting.js文件中的db设置
  ![](http://7xosct.com1.z0.glb.clouddn.com/6.png)
  * 启动项目：<br>(1)方式一：cmd>cd进入根目录，node ./bin/www<br/>(2)方式二：webstorm打开文件，bin/www.js,右键run'bin\www'<br/>(3)若出现错误，则将启动node的路径更改为当前电脑nodeJs安装路径即可。
  * 浏览器打开：http://localhost:3000/
  * 管理员登录入口放在home主页，仅仅是为了能方便测试

##更新##
  * 1、将原有项目搬迁到express 4.13.1版本
  * 2、目录模块化
  ![](http://7xosct.com1.z0.glb.clouddn.com/4.png)
  * 3、页面模块化，将整体页面进一步的封装成3大模块：head、header、body
  ![](http://7xosct.com1.z0.glb.clouddn.com/5.png)
  * 4、添加home.html:用于主页显示功能，用于用户登录导入。内容待填充。
  ![](http://7xosct.com1.z0.glb.clouddn.com/2.png)
  * 5、登录界面login.html:<br/>（1）添加大量随机验证码，后面将会引入更高级的图片验证<br/>（2）登录提示错误方面添加了很多的交互
  * 6、资料上传页面p\_medical\_info.html:添加资料注释的保存
  * 7、添加固定在地步的footer栏目，内容待填充。
  * 8、将面板添加收缩功能，如下图
  ![](http://7xosct.com1.z0.glb.clouddn.com/1.png)
  * 9、医生主页d_index.html：美化UI界面、添加面板收缩功能
  ![](http://7xosct.com1.z0.glb.clouddn.com/3.png)
 
##下一步##
  * 使用nodemailer进行邮件验证，用于找回密码和登陆。测试demo已完成。
  * d_mark界面进行多样式标记
  * 添加在线即时聊天和留言功能
  * 封装后台功能代码
  * 考虑安全性问题和角色权限性问题

----------
4/2/2016 11:24:44 PM


1. 修改医生标注界面格式
2. 手机端登录情形下选择跳转到手机标注界面

4/3/2016 11:40:40 PM 

1. 完成手机端标注数据库内容读取

4/4/2016 4:55:35 PM 

1. 手机端标注功能完成，界面需进一步优化。


----------
7/16/2016 11:01:38 PM 


1. 移动端标注功能适配完成，根据登录设备选择不同页面跳转。
2. 将原有的医生、患者两种用户合并为一种用户，使用同一个入口，根据不同的身份分配不一样的权限。
3. 每一位用户在注册登录后都会享有普通用户的权限，医生用户可以在此基础之上通过个人中心发起医生权限申请，后台医生管理中处理来自本医院的申请，并把处理结果返回用户的申请界面。
4. 原有的注册界面与用户登录界面合并，简化初始注册字段数量，用户注册成功之后可自行补充资料。
5. home界面调用百度API添加本地地图导航。
6. 为每一个页面添加一个当前页面的二维码，扫描二维码可以使用移动设备访问当前页面。
7. 修改数据库中多个数据表字段，合并原有的医生 用户基本信息表。
8. 将标注功能通用化，每一个用户可以选择上传自己的照片，所有上传照片为共享方式，对上传的照片可以进行标注，所有用户都可以看到此类照片中的所有标注信息。
9. index中的路由改为rest风格，同时把所有js、css的引用改为绝对引用。
10. 用户基本信息字段直接打包为JSON格式存到数据库中的一个字段，使用时从数据库中取出该字段然后解析再进行渲染。