#!/bin/sh
# This is a comment!
chart=$1
namespace=$2

echo "***** Your Helm chart $chart  Deployment will be deloyed in namespace $namespace *****"
kubectl delete namespace $namespace > nspurge.log
echo `cat nspurge.log`
sleep 15

helm del --purge $chart > purge.log
echo `cat purge.log`

status=$?
if [ $? -eq 0 ]
then
  echo "Completed: Helm Chart purged and namespace deleted !"
  exit 0
else
  echo "ERROR:: Helm Chart/namespace cannot be purged/delete !"
  exit 1
fi
