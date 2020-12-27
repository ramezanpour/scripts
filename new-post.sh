#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Post name is required"
    exit 1
fi

WORKDIR=~/dev/ramezanpour.net
cd $WORKDIR
POSTNAME=$1
CATEGIORY=$2

if [[ -z $CATEGIORY ]]; then
    CATEGIORY="misc"
fi
POSTFILE="${WORKDIR}/_posts/$(date +%F)-${POSTNAME// /-}.markdown"
touch $POSTFILE
echo "---
title: ${POSTNAME}
layout: post
date: $(date +'%F %T')
categories: ${CATEGIORY}
---" > $POSTFILE
nvim $POSTFILE
