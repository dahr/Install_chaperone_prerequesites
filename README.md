# Install_chaperone_prerequesites

This Debian script installs all prerequisite packages needed to get Chaperone stood-up on both DE and CDS servers.  It has been tested on Ubuntu versions 14.04 and 16.04.

PLEASE NOTE:  You must create the “vmware” user and add it to the sudoers group before running this script.  Additionally, it is recommended to log in as the vmware user before executing the script.  To get started, run the following:

sudo adduser vmware —gecos “”
sudo adduser vmware sudo

<log in as vmware>

sudo sh /<directory>/chaperone_install_prereqs_debian.sh

During the install, “repo init” will pause and ask the user to “Enable color display in this user account.”  Currently there is no known way to escape this.

The following packages are installed:

repo
git (also sets global variables)
libssl-dev
libffi-dev
python-pip
python-dev
ansible

Additionally, the chaperone repository is pulled down and the ansible setup playbook is executed.
