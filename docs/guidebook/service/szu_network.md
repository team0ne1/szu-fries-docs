# :earth_asia: 校园网

校园卡号和统一身份认证的密码可用于登陆校园网，包括有线网络、和分布在校内各处的无线局域网

!!! attention
    各位同学、老师们好，今晚凌晨(2021.12.31)深大电信移动出口会有较大型割接，升级替换认证设备，升级以后，骨干200G，电信出口80G，移动出口20G。
    升级以后，上网认证客户端需要升级以后才能在新的网络上使用，这次大型升级开启了客户端自动升级功能，同时在短期内开放了网页认证窗口。
    网页认证切换到 [172.30.254.42/a79.htm](http://172.30.254.42/a79.htm)（目前还不能访问）

    如果在升级之后，有同学认证客户端出现异常，而又急用网络的可以参考下面的[解决方法](#_7)。


## 如何登陆校园网？

#### 方式一：Web

 1. 访问 

    [http://172.30.255.2/a30.htm](http://172.30.255.2/a30.htm) （宿舍区）

    [https://drcom.szu.edu.cn](https://drcom.szu.edu.cn/)  或者 [http://192.168.254.220](http://192.168.254.220)   （教学区）

    

 2. 填写校园网的账号密码，然后点击登陆

    ![web_drcom](http://172.30.234.8:8001/szulib/fires-docs/images/web_drcom.png){: .image  loading="lazy" width="300" }

 3. OK，成功上网

    ![web_drcom_suced](http://172.30.234.8:8001/szulib/fires-docs/images/web_drcom_suced.png){: .image  loading="lazy" width="500" }

#### 方式二：客户端

1. 下载 Dr.com 客户端
    * [Windows](https://www1.szu.edu.cn/temp/Dr.com_szu_Ver5.2.0_20180727.zip)
    * [Mac](https://www1.szu.edu.cn/temp/DrClientNS.student.20201118.zip)
    * [Linux（图形界面版）](https://www1.szu.edu.cn/temp/DrClient(DrcomAndPPOE).zip)[^1]

[^1]:  亲测在 Ubuntu 20.04 上可用，但是[内部网](https://www1.szu.edu.cn/nc/view.asp?id=64)提供的命令行版本似乎有点问题

2. 打开下载的压缩包，双击运行

    ![exe_drcom](http://172.30.234.8:8001/szulib/fires-docs/images/exe_drcom.png){: .image  loading="lazy" width="300" }

3. 输入帐号（校园卡号）和密码，点击登陆
4. 登陆成功

    ![exe_drcom_suced](http://172.30.234.8:8001/szulib/fires-docs/images/exe_drcom_suced.png){: .image  loading="lazy" width="300" }

#### 方式三：cURL命令行:material-console:

!!!tip 
    此登陆方式原理同方式1，向认证服务发送 POST 请求。适用于在没有图形化界面的机器上登陆校园网，前提是已经安装了 curl 或者 wget. 如果你使用软路由，可以写一个 shell 脚本挂在路由器上。

![curlpost_drcom](http://172.30.234.8:8001/szulib/fires-docs/images/curlpost_drcom.png){: .image  loading="lazy" width="500" }

1. 打开命令行 / Terminal

2. 复制下方命令，将命令中的 ` 校园卡号` ` 校园卡密码` 替换为你的账号密码
   

    ===  "bash"

        ~~~ bash
        curl -X POST \
        -d "DDDDD=校园卡号" \
        -d "upass=校园卡密码" \
        -d "0MKKey=%B5%C7%A1%A1%C2%BC" \
        http://172.30.255.2/a30.html  
        ~~~

    ===  "powershell"

        ~~~ powershell
        Invoke-WebRequest -Method POST `
        -Body @{ `
        'DDDDD'='校园卡号'; `
        'upass'='校园卡密码'; `
        '0MKKey'='%B5%C7%A1%A1%C2%BC'} `
        http://172.30.255.2/a30.html
        ~~~
    
    ===  "bash"

        ~~~ bash
        curl -X POST \
        -d "DDDDD=校园卡号" \
        -d "upass=校园卡密码" \
        -d "0MKKey=%B5%C7%A1%A1%C2%BC" \
        http://192.168.254.220  
        ~~~

    ===  "powershell"

        ~~~ powershell
        Invoke-WebRequest -Method POST `
        -Body @{ `
        'DDDDD'='校园卡号'; `
        'upass'='校园卡密码'; `
        '0MKKey'='%B5%C7%A1%A1%C2%BC'} `
        http://192.168.254.220 
        ~~~


3. 将修改后的命令粘贴到命令行，回车运行，会看到返回的html。

    ![posh_curl](http://172.30.234.8:8001/szulib/fires-docs/images/posh_curl.png){: .image  loading="lazy" width="500" }
    
4. 尝试 ping 一下常用网站，看看能否成功上网

    

**注意：**使用这种方法会把账号密码信息留在终端的历史记录中，使用 `history` 命令即可看到。如果在公共的电脑/服务器上进行操作，记得清除终端历史记录。
    

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

1. 检查网线是否插好，重新插拔网线

2. 检查网线是否损坏，更换一根网线进行测试

3. 检查能否在浏览器访问 [校园网认证网页](#web)，如果可以访问，则进行登陆认证；登陆成功之后检查能否访问 [百度](http://www.baidu.com)

4. 如果仍然无法访问，建议检查电脑代理设置：
   
    Win -> 设置 -> 网络和 Internet -> 代理，查看 **使用代理服务器**  的开关是否打开，关闭这一选项

5. 参考[深大义修组的解决方案](https://mp.weixin.qq.com/s?__biz=MzI5ODA2NTA4MQ==&mid=2648803062&idx=1&sn=2fdb3dbf109670b74ce44b2fa1fb0fae)
   
6. 咨询网络运营商工作人员
   
    学生区网络：<a href="tel:86310108">86310108</a>转2 (中国电信)、18476328678(中国移动)
    
    教工区网络：<a href="tel:26537109">26537109</a>(粤海/沧海)、<a href="tel:86930513">86930513</a>(丽湖)

7. 联系深大义修组
   
    <a href="http://fix.szucieva.com/" target="_blank">深大义修官方网站 http://fix.szucieva.com/</a>

    <div class="szufixqrcode" style="">
    <div style="display: flex; flex-direction: column;align-items:center;">
    <img class="image" src="http://172.30.234.8:8001/szulib/fires-docs/images/szu_fix_wechat_qrcode.webp" alt="szu_fix_wechat_qrcode" style="width:180px;"  />
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

1. 删除 `C:\Drcom` 文件夹，重启电脑，在认证网页下载新版本客户端安装后使用
2. 如果方法1无法解决，可以在网页认证上网，并好记录工作，后面电信工作人员再上门解决问题

   