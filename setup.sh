#!/usr/bin/env bash

if [ $(grep -c '^deb http://www.stats.bris.ac.uk/R/bin/linux/ubuntu trusty/' /etc/apt/sources.list) -eq 0 ]; then
    sh -c 'echo "deb http://www.stats.bris.ac.uk/R/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list'
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
fi

apt-get update
apt-get install -y \
    r-base \
    r-base-dev \
    libcurl4-openssl-dev \
    libxml2-utils \
    libxml2-dev \
    vim \
    git

Rscript -e \
    "options(repos=c(CRAN='http://cran.rstudio.com', \
                          'http://cran.obiba.org')); \
     install.packages(c('rjson', \
                        'RCurl', \
                        'fields', \
                        'testthat', \
                        'devtools', \
                        'opal', \
                        'opaladmin', \
                        'roxygen2'))"
