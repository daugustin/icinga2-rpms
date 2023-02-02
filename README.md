[As Icinga has decided not to release RHEL / Alma / Rocky 9 Binaries anymore](https://github.com/Icinga/icinga2/issues/9390) I have set up this repo to let GitHub build those RPMs for us.

# Building
The GitHub Workflow `main.yml` builds the RPM specified in `VERSION` and `REVISION`. It will upload it and create a [GitHub Release](release).
# Using
## Manually
You can download the files from the [releases page](releases).
## Repo
### Using my repository
You can use my repository by using the yum.repo File `icinga.repo`.
### Creating an own repository
Feel free to use `createrepo.sh` to create a repo on your own server.
## Re-Signing
If you want to re-sign the RPMs with your own trusted key follow the [Red Hat article](https://access.redhat.com/articles/3359321).