# vagrant-setup
Repository containing the vagrant setup.

## Getting Started

1. Install [Vagrant](https://www.vagrantup.com) and
[VirtualBox](https://www.virtualbox.org/wiki/Downloads)

1. Install the Vagrant Omnibus plugin.

    ```bash
    $ vagrant plugin install vagrant-omnibus
    ```

Run 'vagrant up' in order to download and provision the virtual box with the development environment.

Note that the directory 'code' will be used as the synced directory between the host and the virtual box. Since you will be cloning the japalingual-main repository in this directory (most likely), it is suggested that you copy the contents of this repository to some clean (non-git) location and then run provision it there. This is to prevent nested git directories.
