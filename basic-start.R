library(opal)
library(opaladmin)
library(devtools)

#load_all('dsClient')
#load_all('dsBaseClient')
#load_all('dsStatsClient')
#load_all('dsGraphicsClient')
#load_all('dsModellingClient')
#load_all('dsBetaTestClient')


logins <- read.csv('logindata/vagrant.datashield_testdata_ubuntu.DASIM.csv')
opals <- datashield.login(logins=logins, assign=TRUE)
