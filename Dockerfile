# build 
FROM squidfunk/mkdocs-material as builder
RUN pip install mkdocs-material-extensions
COPY ./mkdocs.yml /docs/
COPY ./docs/ /docs/
RUN mkdocs build

# prod
FROM nginx:1.21.3
COPY  --from=builder /site/ /usr/share/nginx/html

EXPOSE 80

