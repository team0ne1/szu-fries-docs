---
hide:  
  - navigation  
---

# 关于本文档

### 为什么想要编写这份文档？

在深大，时常感觉信息的获取非常零碎和偶然，总能在一些求助平台看见重复的问题。

于是，希望有一个地方把有用的信息汇总起来。慢慢积累，为后来的人提供方便。

顺便吐槽一下咱这szu的电子信息基础建设，用一个词来形容那就是 —— `undefined ` :sweat_smile:



### 如何贡献内容？

！欢迎贡献

可以通过邮件与项目维护者进行沟通，有什么好的想法和建议都可以说

email: SZU-lib233@protonmail.com

或者，在 github 上进行贡献

github: [https://github.com/team0ne1/szu-fries-docs.git](https://github.com/team0ne1/szu-fries-docs.git)



### 如何部署文档？

本文档允许被自由部署在校园网内

使用 Docker 部署

~~~bash
docker run --rm  -d -p 80:80 --name szu-fries-docs team0ne1/szu-fries-docs:latest
~~~

