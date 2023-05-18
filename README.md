# SZU Fries Docs

Unofficial documents for szu students. You can regard it as a manual in shenzhen university.

Site: [szulib.top](https://www.szulib.top)

Telegram group https://t.me/joinchat/gHAcZzVxpMs0ZGYx 

lang: [zh](./README.zh_CN.md) 

## Install

Use docker to deploy instantly

```bash
docker run --rm  -d -p 80:80 --name fries-docs team0ne1/szu-fries-docs:latest
```

Docker Hub https://hub.docker.com/repository/docker/team0ne1/szu-fries-docs_pub

**or**

Clone this repo and build it by yourself

``` bash
git clone https://github.com/team0ne1/szu-fries-docs.git
```



## Usage

### Build the site

#### with pip

~~~bash
pip install mkdocs-material
~~~

Entry the directory `szu-fries-docs`

```bash
cd szu-fries-docs
```

Run

``` bash
mkdocs build
```

Then,  directory named `site` is produced. 



#### with docker

Run

```bash
docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material build
```

Mount the folder where your `mkdocs.yml` resides as a volume into `/docs`



#### with git

SZFries Docs built by [mkdocs-material](https://github.com/squidfunk/mkdocs-material), so you need to install it.

Install mkdocs-material

``` bash
git clone https://github.com/squidfunk/mkdocs-material.git
pip install -r mkdocs-material/requirements.txt
```

You can also see the guidence in https://squidfunk.github.io/mkdocs-material/getting-started/#with-git



**Make sure** to install `mkdocs-material` to same path as `szu-fries-docs` , or you should change the conf in `fries-docs/mkdocs.yml` 

``` yaml
theme:
  ...
  custom_dir: ../mkdocs-material/material # change to the dir that mkdocs-material installed
```



### Deploy  the site

Put the dir `site` on your web-server dir (e.g.,  /var/www/html/ )



## Feedback & Contribution

Telegram Group

https://t.me/joinchat/gHAcZzVxpMs0ZGYx

E-mail 

SZU-lib233@protonmail.com



## License

[MIT © Team One](https://github.com/team0ne1/fries-docs/blob/main/LICENSE)

