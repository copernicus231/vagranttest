#!/bin/bash
USER_NAME=$1
#MAVEN REPO
mkdir /home/${USER_NAME}/.m2
cp settings.xml /home/${USER_NAME}/.m2/
