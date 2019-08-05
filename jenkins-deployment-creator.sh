#!/bin/sh
# This is a comment!
chart=$1
namespace=$2
echo " *********** For successful deployment - Make sure you have done Helm lint for your project.***********"
echo "***** Your Helm chart Deployment will be initiated *****"
helm install --name $chart ./AHeroJenkins --namespace=$namespace > deploy.log
echo `cat deploy.log`
status=$?
if [ $? -eq 0 ]
then
  echo "Completed: Helm Chart deployed !"
  exit 0
else
  echo "ERROR: : Helm Chart cannot be deployed !"
  exit 1
fi

