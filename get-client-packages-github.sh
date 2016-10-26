#!/usr/bin/env bash

for i in dsBaseClient \
         dsStatsClient \
         dsGraphicsClient \
         dsModellingClient \
         dsBetaTestClient \
         dsClient 
do
    git clone "https://github.com/datashield/${i}.git"
done
