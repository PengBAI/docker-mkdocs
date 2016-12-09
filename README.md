# docker-mkdocs
Python 3.5 on Alpine

[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://hub.docker.com/r/pengbai/docker-mkdocs/)

[MkDocs](http://www.mkdocs.org/) simple static website generator that's geared towards building project documentation. Documentation source files are written in Markdown, and configured with a single YAML configuration file.

This is a mkdocs image, we can use maven command on running this image:

## Description
Theme flatly of [Bootswatch](http://mkdocs.github.io/mkdocs-bootswatch/) is used as website theme by default.

Run container:
```
docker run -d -p 8000:8000 pengbai/docker-mkdocs
```

Project config file (mkdocs.yml, /theme, /docs) in path /workspace of image. Use your own documentation to generat your website: 
```
docker run -d -p 8000:8000 -v /local-workspace:/workspace pengbai/docker-mkdocs
```

