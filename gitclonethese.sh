#!/bin/bash

## Clone Vundle!
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

## Clone Django stuff
git clone git@github.com:nathanborror/django-basic-apps.git ~/DjangoStuff
git clone git@github.com:etianen/django-herokuapp.git ~/DjangoStuff

## Clone kernel-staging
git clone -b staging-testing git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git ~/git/kernels
git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git ~/git/linus

## Clone Git next
git clone -b next git@github.com:git/git.git ~/git/git

## Clone strace
git clone git@github.com:strace/strace.git ~/strace

## Clone bunch of distributed systems, parallel computing projects
git clone git@github.com:open-mpi/ompi.git ~/ompi
git clone git@github.com:memcached/memcached.git ~/memcached
git clone git@github.com:ipfs/ipfs.git ~/ipfs

## Clone dockerfiles for reproducing builds of the PlanetLab distro
git clone git@github.com:planetlab/pldistro-build.git ~/pldistro-build

## Clone ipfs and checkout latest tag
git clone git@github.com:ipfs/go-ipfs.git ~/ipfs
git fetch --tags
latestTag=$(git describe --tags)
git checkout $latestTag
