#!/bin/bash

mvn clean package && docker build -t jsp-app . && docker run -d -p 8080:8080 jsp-app
