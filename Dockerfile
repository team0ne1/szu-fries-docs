# build 
FROM squidfunk/mkdocs-material as builder
RUN pip install mkdocs-material-extensions
RUN mkdir /docs/docs
COPY ./mkdocs.yml /docs
COPY ./docs /docs/docs
RUN mkdocs build

# prod
FROM nginx:1.21.3
COPY  --from=builder /site/ /usr/share/nginx/html

EXPOSE 80

