#!/bin/sh

if [ x$INPUT_IMAGE != x ]
then
  if [ x$INPUT_APPTOKEN != x ]
  then
    caprover deploy -h $INPUT_HOST -p $INPUT_PASSWORD -a $INPUT_APP -i $INPUT_IMAGE
  else
    caprover deploy -h $INPUT_HOST -p $INPUT_PASSWORD --appToken $INPUT_APPTOKEN -a $INPUT_APP -i $INPUT_IMAGE
  fi
else
  if [ x$INPUT_APPTOKEN != x ]
  then
    caprover deploy -h $INPUT_HOST -p $INPUT_PASSWORD -a $INPUT_APP -b $INPUT_BRANCH
  else
    caprover deploy -h $INPUT_HOST -p $INPUT_PASSWORD --appToken $INPUT_APPTOKEN -a $INPUT_APP -b $INPUT_BRANCH
  fi
fi