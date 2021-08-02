# Fries Docs

Unofficial documents for szu students. You can regard it as a manual in shenzhen university.



## Install

#### Step1

clone this repo

``` bash
mkdir demo
cd ./demo
git clone https://github.com/team0ne1/fries-docs.git
```



#### Step2

Fries Docs built by [mkdocs-material](https://github.com/squidfunk/mkdocs-material), so you need to install it.

**Make sure** to install `mkdocs-material` to same path as `fries-docs` , or you should change the conf in `fries-docs/mkdocs.yml` 

``` yaml
theme:
  ...
  custom_dir: ../mkdocs-material/material # change to the dir that mkdocs-material installed
```

Install mkdocs-material

``` bash
git clone https://github.com/squidfunk/mkdocs-material.git
pip install -r mkdocs-material/requirements.txt
```

You can also see the guidence in https://squidfunk.github.io/mkdocs-material/getting-started/#with-git



## Usage

### Build the site

Entry the directory `fries-docs`

```bash
cd fries-docs
```

Run

``` bash
mkdocs build
```

Then,  directory named `site` is changed. 

Copy the dir `images` to dir `site` and everything is done.

### Run the site

Put the dir `site` on your server



## License

[MIT © Team One](https://github.com/team0ne1/fries-docs/blob/main/LICENSE)

