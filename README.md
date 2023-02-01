[As Icinga has decided not to release RHEL / Alma / Rocky 9 Binaries anymore](https://github.com/Icinga/icinga2/issues/9464) I have set up this repo to let GitHub build those RPMs for us.

# Building
The GitHub Action main.yml builds the RPM specified in VERSION. It will upload it and create a GitHub Release.
# Using
## Manually
You can download the files from the releases page.
## Repo
### Using my repository
You can use my repository (...)
### Creating an own repository
Feel free to use `createrepo.sh` to create a repo on your own server.