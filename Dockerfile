# build 
FROM squidfunk/mkdocs-material as builder
COPY . /docs
RUN mkdocs build

# prod
FROM nginx:1.21.3
COPY --from=builder /docs/site/ /usr/share/nginx/html

EXPOSE 80

