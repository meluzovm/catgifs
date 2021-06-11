Build status: [![CircleCI](https://circleci.com/gh/meluzovm/catgifs/tree/master.svg?style=svg)](https://circleci.com/gh/meluzovm/catgifs/tree/master)

## Description
This is a capstone project for AWS Cloud DevOps Engineer Nanodegree program by Udacity.  

This project shows the skills and knowledge which were developed throughout the Nanodegree program. These include:

* Working in AWS
* Using Circle CI to implement CI/CD
* Building pipelines
* Building Docker containers in pipelines
* Working with  eksctl and CloudFormation to deploy clusters
* Building Kubernetes clusters

## About application
![catgifs](screenshot.png)
This is a Docker-contained Flask web app that displays random cat gifs (forked from https://github.com/eightlimbed/catgifs )

## Structure of Repository: 
.
├── Dockerfile
├── Makefile
├── README.md
├── app.py
├── json.json
├── k8s
│   ├── catgifs-deployment-dev.yaml
│   ├── catgifs-deployment-prod.yaml
│   ├── catgifs-service-dev.yaml
│   └── catgifs-service-prod.yaml
├── requirements.txt
├── screenshot.png
├── static
│   ├── images
│   │   ├── cat-0.gif
│   │   ├── cat-1.gif
│   │   ├── cat-10.gif
│   │   ├── cat-11.gif
│   │   ├── cat-2.gif
│   │   ├── cat-3.gif
│   │   ├── cat-4.gif
│   │   ├── cat-5.gif
│   │   ├── cat-6.gif
│   │   ├── cat-7.gif
│   │   ├── cat-8.gif
│   │   └── cat-9.gif
│   └── styles
│       └── main.css
└── templates
    └── index.html


## Usage
docker build -t TAG .
kubectl -f apply catgifs-deployment-dev.yaml
kubectl -f apply catgifs-service-dev.yaml
