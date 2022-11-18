# :earth_asia: 校园网

校园卡号和统一身份认证的密码可用于登陆校园网，包括有线网络、和分布在校内各处的无线局域网



## 如何登陆校园网？

#### 方式一：网页登陆认证

 1. 访问 

    [http://172.30.255.42/a79.htm](http://172.30.255.42/a79.htm) （宿舍区）

    [https://drcom.szu.edu.cn](https://drcom.szu.edu.cn/)  或者 [http://192.168.254.220](http://192.168.254.220)   （教学区）

 2. 填写校园网的账号密码，然后点击登陆

    ![szu_net_login_website](https://storage.szulib.top/szulib/fires-docs/images/szu_net_login_website.png){: .image  loading="lazy" width="550" }

 3. OK，成功上网。 :face_with_monocle:

    ![szu_net_login_web_succ](https://storage.szulib.top/szulib/fires-docs/images/szu_net_login_web_succ.png){: .image  loading="lazy" width="500" }

#### 方式二：客户端 （不推荐）

1. 下载 Dr.com 客户端
    * [Windows](http://172.30.255.44/DrCOM_SZU_CMCT4Windows.zip) （会崩溃，待更新）
    * Mac (未适配，预计 2022.01.14后 发布新版客户端)
    * Linux 采用网页登陆



2. 打开下载的压缩包，安装运行 
   
    图片未更新，版本号应为 ver5.2.0(Pt)
    
    ![exe_drcom](https://storage.szulib.top/szulib/fires-docs/images/exe_drcom.png){: .image  loading="lazy" width="300" }
    
3. 输入帐号（校园卡号）和密码，点击登陆

4. 登陆成功

    ![exe_drcom_suced](https://storage.szulib.top/szulib/fires-docs/images/exe_drcom_suced.png){: .image  loading="lazy" width="300" }

#### 方式三：cURL命令行:material-console:

!!!tip 
    此登陆方式原理同方式1，向认证服务发送 GET 请求。适用于在没有图形化界面的机器上登陆校园网，前提是已经安装了 curl 或者 wget

![szu_net_login_postman](https://storage.szulib.top/szulib/fires-docs/images/szu_net_login_pm.png){: .image  loading="lazy" }



1. 打开命令行 / Terminal

2. 复制下方命令，将命令中的 ` 校园卡号` ` 统一身份认证密码` 替换为你的账号密码
    
    **宿舍区**
    
    ===  "bash"
        ~~~ bash
        curl  'http://172.30.255.42:801/eportal/portal/login?callback=dr1003&login_method=1&lang=zh&user_account=校园卡号&user_password=统一身份认证密码' \
        ~~~

    ===  "powershell"
    
        ~~~ powershell
        curl  'http://172.30.255.42:801/eportal/portal/login?callback=dr1003&login_method=1&lang=zh&user_account=校园卡号&user_password=统一身份认证密码' `
        ~~~
    
    将命令粘贴到命令行，改成自己的用户名密码，回车运行，可以看到返回的字符串。
    
    ```javascript
    dr1003({"result":1,"msg":"Portal协议认证成功！"});
    ```
    
    **教学区**
    
    ===  "bash"
    
        ~~~bash
        curl -X POST \
        -d "DDDDD=校园卡号" \
        -d "upass=校园卡密码" \
        -d "0MKKey=%B5%C7%A1%A1%C2%BC" \
        https://drcom.szu.edu.cn/
        ~~~
    
    
    ===  "powershell"
    
        ~~~ powershell
        Invoke-WebRequest -Method POST `
        -Body @{ `
        'DDDDD'='校园卡号'; `
        'upass'='校园卡密码'; `
        '0MKKey'='%B5%C7%A1%A1%C2%BC'} `
        https://drcom.szu.edu.cn/
        ~~~

3. 尝试 ping 一下常用网站，看看能否成功上网


  **注意：**使用这种方法会把账号密码信息留在终端的历史记录中，使用 `history` 命令即可看到。如果在公共的电脑/服务器上进行操作，记得清除终端历史记录。


5. 如果你使用了软路由，可以写一个 shell 脚本放在路由器上，配合 crontab (计划任务) 定时发送认证请求。把上面的curl命令粘贴在一个文件里，并给予文件可执行权限。

	编辑crontab配置文件

    ```bash
    crontab -e
    ```

	添加一行

    ```bash
    */20 * * * * /path/to/drcomauth.sh > /dev/null 2>&1
    ```

    ` */20 * * * * ` 表示每20分钟执行一次，各项星号是对时间的设定，具体含义参考 [这个网站](https://crontab.guru/)





#### 方式四：第三方客户端



Github相关项目：

* [drcoms/drcom-generic](https://github.com/drcoms/drcom-generic)

* [mchome/dogcom](https://github.com/mchome/dogcom)

* ...

  

## 如何续费？

1. 点击下方链接，使用 **校园卡号** 和 **统一身份认证密码** 进行登陆

    [https://self.szu.edu.cn/self/nav_login](https://self.szu.edu.cn/self/nav_login)

    ![dcservice_login](https://storage.szulib.top/szulib/fires-docs/images/dcservice_login.png){: .image  loading="lazy" width="500" }

## 校园网出问题啦！

1. 检查网线是否插好，重新插拔网线，更换网线

2. 检查校园网是否欠费

3. 检查能否在浏览器访问 [校园网认证网页](#web)，如果可以访问，则进行登陆认证；登陆成功之后再检查能否访问 [百度](http://www.baidu.com)

4. 建议检查电脑代理设置：
   
    Win -> 设置 -> 网络和 Internet -> 代理，查看 **使用代理服务器**  的开关是否打开，关闭这一选项

5. 检查网络状态：
   
	1. 按  ++win+s++ ，搜索 **网络连接** ，点击进入
   
		![check_network1](https://storage.szulib.top/szulib/fires-docs/images/check_network1.png){ width="400" }

	2. 右键选择你的网络适配器，点击 **属性**
   
		![check_network3](https://storage.szulib.top/szulib/fires-docs/images/check_network3.png){ width="80%" }

	3. 选择 **Internet 协议版本 4 (TCP/IPv4)**

		![check_network2](https://storage.szulib.top/szulib/fires-docs/images/check_network2.png){ width="60%" }
		
	4. 选择 **自动获取IP地址** **自动获取DNS服务器地址**
		
		![check_network4](https://storage.szulib.top/szulib/fires-docs/images/check_network4.png){ width="60%" }
   
6. 参考[深大义修组的解决方案](https://mp.weixin.qq.com/s?__biz=MzI5ODA2NTA4MQ==&mid=2648803062&idx=1&sn=2fdb3dbf109670b74ce44b2fa1fb0fae)

7. 咨询网络运营商工作人员

    学生区网络：<a href="tel:86310108">86310108</a>转2 (中国电信)、18476328678(中国移动)

    教工区网络：<a href="tel:26537109">26537109</a>(粤海/沧海)、<a href="tel:86930513">86930513</a>(丽湖)

8. 联系深大义修组

    <a href="http://fix.szucieva.com/" target="_blank">深大义修官方网站 http://fix.szucieva.com/</a>
    
    <div class="szufixqrcode" style="">
    <div style="display: flex; flex-direction: column;align-items:center;">
    <img class="image" src="https://storage.szulib.top/szulib/fires-docs/images/szu_fix_wechat_qrcode.webp" alt="szu_fix_wechat_qrcode" style="width:180px;"  />
    <div>义修个人微信号</div>
    </div>
    </div>


    <style>
    .szufixqrcode {
        display: flex;
        flex-direction: row-reverse;
    }
    @media screen and (max-width: 575px) {
    .szufixqrcode {
        display: flex;
        flex-direction: row;
      }
    };
    </style>


## 网络升级后无法上网

解决方法：

1. 网页端认证上网：[网页登陆认证](http://172.30.255.42/a79.htm) 登陆认证

2. 重新安装新版Drcom客户端：删除 `C:\Drcom` 文件夹，重启电脑，下载 [新版本客户端](http://172.30.255.44/DrCOM_SZU_CMCT4Windows.zip) 安装后使用（不过捏，许多同学反映这个客户端用一小会就会出错...堆栈溢出，目前只能等更新了。首推网页登陆认证）

   

   