#!/bin/bash

docker build -t meu-ginx

docker run -d -p 8080:80 meu-nginx

xdg-open http://localhost:8080