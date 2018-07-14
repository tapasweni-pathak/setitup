#!/bin/bash

## Clone Vundle!
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

## Clone Django stuff
git clone git@github.com:nathanborror/django-basic-apps.git ~/DjangoStuff
git clone git@github.com:etianen/django-herokuapp.git ~/DjangoStuff

## Clone kernel-staging
git clone -b staging-testing git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git ~/git/kernels

## Clone Git next
git clone -b next git@github.com:git/git.git ~/git/git

## Clone strace
git clone git@github.com:strace/strace.git ~/strace
