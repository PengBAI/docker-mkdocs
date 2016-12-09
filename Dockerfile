FROM python:2.7-alpine
MAINTAINER https://github.com/PengBAI

ENV BOOTSWATCH_VERSION 0.4.0
RUN apk --no-cache add tar curl && \
    pip install mkdocs

RUN mkdir /workspace
WORKDIR /workspace

RUN curl -o mkdocs-bootswatch.tar.gz -SL "https://github.com/mkdocs/mkdocs-bootswatch/archive/$BOOTSWATCH_VERSION.tar.gz" && \
    tar -xzf mkdocs-bootswatch.tar.gz --strip-components=1 -C ./ && \
    rm mkdocs-bootswatch.tar.gz

EXPOSE 8000
ENTRYPOINT mkdocs
CMD serve