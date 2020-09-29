# Mutation Testing Workshop with Mull

Sources for mutation testing workshop with [mull](https://github.com/mull-project/mull/).

## Development Environment

In addition to setting up a custom development environment, there are  two options of a prepared environment: a [docker](https://www.docker.com/) container or a virtual machine setup with [vagrant](https://www.vagrantup.com/).

### Docker

Install [docker](https://docs.docker.com/get-started/).

Initially create the docker container. This command has to be run just **once**.

    docker build --tag mull-workshop docker/

There is a script to open a shell in the container:

    ./docker.sh

Use `ctrl-d` or `exit` to leave the shell.

The shell should open in folder `/source`.
Verify the installation by running the roman numeral converter example.

    make roman

### Vagrant

First install [vagrant](https://www.vagrantup.com/).
All vagrant commands must be run in folder `vm` containting `Vagrantfile`.

    cd vm

To start the VM run `vagrant up`.

Command `vagrant halt` stops the VM.
With `vagrant destroy` the VM is shutdown and deleted.

Run `vagrant ssh` to open a shell to the development VM.

In the shell you should change to the folder `/source`.

    cd /source

Verify the installation by running the roman numeral converter example.

    make roman

### gitpod.io

Open [workspace](https://gitpod.io/#https://github.com/CppUsergroupZentralschweiz/mull-workshop) on gitpod.io.

Change to folder `/workspace/mull-workshop/source`.

    cd source

Verify the installation by running the roman numeral converter example.

    make roman

### Custom Setup

* clang 9
* cmake 3.14 or higher
* [mull](https://mull.readthedocs.io/)
* ninja (or make)

## Exercise

In this exercise we want to add some tests to the [Gilded Rose](https://github.com/NotMyself/GildedRose) inventory system in order to safely refactor before implementing the new feature for *conjured items*.

Run gilded rose tests in the container:

    > make rose

Use mutation testing for guidance on finding test cases.

## References

* https://mull.readthedocs.io/
* https://github.com/mull-project/mull/
