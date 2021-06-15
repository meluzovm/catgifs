## Install eksctl via homebrew (MacOS)
brew install eksctl

## Check version 
eksctl version

## Setup autocompetion
eksctl completion zsh > ~/.zsh/completion/_eksctl

## Create cluster with 1..3 nodes 
eksctl create cluster --name udacity-cluster --node-type t2.micro --nodes 1 --nodes-min 1 --nodes-max 3 --region eu-central-1

## Scale in/out cluster
eksctl scale nodegroup --cluster=eksctl-cluster --nodes=3 ng-b8630107
