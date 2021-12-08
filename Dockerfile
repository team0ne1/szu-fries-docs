# build 
FROM squidfunk/mkdocs-material as builder
RUN apt-get -y update
RUN apt-get -y install git
RUN pip install mkdocs-material-extensions
RUN pip install mkdocs-git-revision-date-plugin
RUN mkdir /docs/docs
COPY ./mkdocs.yml /docs
COPY ./docs /docs/docs
RUN mkdocs build

# prod
FROM nginx:1.21.3
COPY  --from=builder /docs/site /usr/share/nginx/html

EXPOSE 80

