# build 
FROM squidfunk/mkdocs-material as builder
RUN pip install mkdocs-material-extensions
RUN pip install mkdocs-git-revision-date-localized-plugin
RUN mkdir /docs/docs
COPY . /docs
RUN mkdocs build

# prod
FROM nginx:1.21.3
COPY  --from=builder /docs/site /usr/share/nginx/html

EXPOSE 80

