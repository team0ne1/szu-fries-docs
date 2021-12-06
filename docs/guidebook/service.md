


# 服务 & 设施

## 校园网

### 如何登陆校园网？

方式一：Web

 1. 访问 

    [http://172.30.255.2/a30.htm](http://172.30.255.2/a30.htm) （宿舍区）

    [https://drcom.szu.edu.cn](https://drcom.szu.edu.cn/)       （教学区）

    

 2. 填写校园网的账号密码，然后点击登陆

    ![web_drcom](http://172.30.234.8:8001/szulib/fires-docs/images/web_drcom.png){: .image  loading="lazy" width="300" }

 3. OK，成功上网

    ![web_drcom_suced](http://172.30.234.8:8001/szulib/fires-docs/images/web_drcom_suced.png){: .image  loading="lazy" width="500" }

方式二：客户端

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

方式三：cURL命令行:material-console:

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
        curl -X POST `
        -d "DDDDD=校园卡号" `
        -d "upass=校园卡密码" `
        -d "0MKKey=%B5%C7%A1%A1%C2%BC" `
        http://172.30.255.2/a30.html  
        ~~~


3. 将修改后的命令粘贴到命令行，回车运行，会看到返回的html。

    ![posh_curl](http://172.30.234.8:8001/szulib/fires-docs/images/posh_curl.png){: .image  loading="lazy" width="500" }
    
4. 尝试 ping 一下，看看能否成功上网

    

方式四：第三方客户端





Github相关项目：

* [drcoms/drcom-generic](https://github.com/drcoms/drcom-generic)

* [mchome/dogcom](https://github.com/mchome/dogcom)

* ...

  

### 如何续费？

1. 点击下方链接，使用 **校园卡号** 和 **统一身份认证密码** 进行登陆

    [https://self.szu.edu.cn/self/nav_login](https://self.szu.edu.cn/self/nav_login)

    ![dcservice_login](http://172.30.234.8:8001/szulib/fires-docs/images/dcservice_login.png){: .image  loading="lazy" width="500" }

### 校园网出问题啦！



## 电力设施

### 如何给宿舍充电费？

=== "微信"
    支付方式：**微信支付**<br>
    <ol>
        <li>复制 [这个链接](https://weixiao.qq.com/apps/public/service/index.html?hid=bf11210a3cc169eaa981beeb476596f6&media_id=gh_a280c83dc0be)，在微信中打开</li>
    </ol>
    

=== "网页"
    支付方式：**通用代扣账户扣费**<br>
    <ol>
        <li>
        复制 [这个链接](https://weixiao.qq.com/apps/public/service/index.html?hid=bf11210a3cc169eaa981beeb476596f6&media_id=gh_a280c83dc0be)，在微信中打开
        </li>
        <li>
        点击
        </li>
    </ol>



## :fontawesome-solid-running: 运动设施

| 运动项目 | 地点                                        | 费用 | 备注 |
| -------- | ------------------------------------------- | ---- | ---- |
| 羽毛球   | 南体东馆羽毛球场                            |      |      |
| 篮球     | 南体天台篮球场 \| 南体东馆室内篮球场        |      |      |
| 足球     | 海边足球场 \| 天台足球场                    |      |      |
| 排球     | 西馆排球场                                  |      |      |
| 网球     | 北区网球场 \| 南区海边网球场                |      |      |
| 壁球     | 南体西馆壁球馆                              |      |      |
| 乒乓球   | 北区乒乓球馆                                |      |      |
| 棒垒球   | 南体天台棒垒球场                            |      |      |
| 保龄球   | 深圳大学保龄球馆                            |      |      |
| 高尔夫   | 高尔夫教学练习场                            |      |      |
| 游泳     | 南秋馆（海边游泳池）\| 北夏馆（北区游泳池） |      |      |
| 健身     | 南区西馆一楼健身房 \| 南区西馆二楼健身房    |      |      |



### 如何预约体育场馆？



## 快递收发

