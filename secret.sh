#!/bin/bash
microk8s kubectl create secret docker-registry regcred --docker-server=826609325644.dkr.ecr.eu-west-1.amazonaws.com --docker-username=AWS --docker-password=$(aws ecr get-login-password)