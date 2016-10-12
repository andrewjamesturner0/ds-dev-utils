# ds-dev-utils

Personal files and scripts for creating a clean DataSHIELD client environment,
for development.

`Vagrantfile` and `setup.sh` - create an ubuntu VM, install R and the
necessary dependencies for a DataSHIELD client. This does not install the
DataSHIELD client packages. (Instead clone them into this folder and use devtools
to load them.)

`logindata/` and `basic-start.R` - login data and a login script for the
`datashield-infrastructure` VMs. Edit as needed. By default (1) No DataSHIELD client
packages are loaded, (2) Attempts to log in to the DASIM datasets on the
datashield_testdata_ubuntu VM.
