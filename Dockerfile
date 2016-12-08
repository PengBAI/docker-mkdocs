FROM python:3.5-alpine
MAINTAINER https://github.com/PengBAI

ENV BOOTSWATCH_VERSION 0.4.0
RUN pip install mkdocs && \
    apk --no-cache add tar curl
RUN mkdir /workspace
WORKDIR /workspace

RUN curl -o mkdocs-bootswatch.tar.gz -SL "https://github.com/mkdocs/mkdocs-bootswatch/archive/$BOOTSWATCH_VERSION.tar.gz" && \
    tar -xzf mkdocs-bootswatch.tar.gz --strip-components=1 . && \
    rm mkdocs-bootswatch.tar.gz

EXPOSE 8000
ENTRYPOINT mkdocs
CMD serve