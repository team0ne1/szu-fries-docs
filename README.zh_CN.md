# SZU 薯条文档

为深大同学写的一份非官方文档  你可以将本文档视为深大生存手册

TG 群组 https://t.me/joinchat/gHAcZzVxpMs0ZGYx 

lang: [en](./README.md)



项目结构

/docs 目录下：

~~~bash
├───data                     # 这个目录存放学习资料，例如课程的课后习题
│   ├───uooc                 # 这是uooc慕课的目录
│   │   └───佛家文化           # 课程名称
│   │       ├───2020         # 资料年份
│   │       └───outdated
│   └───公选课                #这是公选课的目录
│       └───印度文化概要       # 课程名称
│           └───2021         # 资料年份
│               └───homework # 作业要求&课件
│                   └───src1 # 资料来源1，即来自于某位同学的资源
|
├───guidebook                # 深大指北文档入口
...
└───szulife
    ...
    ├───courses              # 学术混子文档入口
    │   └───major
    |       ...
    │       ├───College_of_Mechatronics_and_Control_Engineering
    │       ├───College_of_Physics_and_Optoelectronic_Engineering
    |       ...
    ├───courses_in_water
    │   ├───public
    │   └───uooc
~~~



## 安装

使用 Docker 在你喜欢的地方部署

```bash
docker run --rm  -d -p 80:80 --name fries-docs team0ne1/szu-fries-docs:latest
```

Docker Hub https://hub.docker.com/repository/docker/team0ne1/szu-fries-docs

**或者**

Clone 这个仓库，然后构建自己的深大手册

``` bash
git clone https://github.com/team0ne1/fries-docs.git
```



## Usage

### 构建网站

#### 使用 pip

~~~bash
pip install mkdocs-material
~~~

进入目录 `szu-fries-docs`

```bash
cd szu-fries-docs
```

运行

``` bash
mkdocs build
```

出现一个叫 `site` 的文件，这就是构建出来的网站内容 



#### 使用 docker

运行

```bash
docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material build
```

请注意，一定要在 `mkdocs.yml` 所在的文件夹目录下运行



#### 使用 git

SZU Fries Docs 使用 [mkdocs-material](https://github.com/squidfunk/mkdocs-material) 构建，所以你需要先安装它

安装 mkdocs-material

``` bash
git clone https://github.com/squidfunk/mkdocs-material.git
pip install -r mkdocs-material/requirements.txt
```

可以看官方教程 https://squidfunk.github.io/mkdocs-material/getting-started/#with-git

**确保** 你把 `mkdocs-material` 项目clone到与 `szu-fries-docs`同一目录下 , 否则你需要修改配置文件 `szu-fries-docs/mkdocs.yml` ：

``` yaml
theme:
  ...
  custom_dir: ../mkdocs-material/material # 修改这个目录指向你 clone 下来的 mkdocs-material 的目录
```



### 部署网站

把目录 `site` 的内容放在你的web服务器目录下 (比如：  /var/www/html/ )



## 反馈 & 贡献

Telegram Group

https://t.me/joinchat/gHAcZzVxpMs0ZGYx

E-mail 

szulib.docs@outlook.com



## License

[MIT © Team One](https://github.com/team0ne1/fries-docs/blob/main/LICENSE)

