# SALTSTACK LAB

This repository is intended for all the audiences seeking to bring up a SaltStack Lab for educational and/or testing purposes.

## Prerequisite
Install VirtualBox, Vagrant and Docker for Desktop

## Usage

Open a elevated PowerShell and navigate to the repository (Steps will be similar on *nix based system except that the native shell should be used for respective Operating systems)

```powershell
vagrant up
```
```powershell
vagrant status
```
```output
Current machine states:

saltmaster                running (virtualbox)
web                       running (virtualbox)
db                        running (virtualbox)

This environment represents multiple VMs. The VMs are all listed
above with their current state. For more information about a specific
VM, run `vagrant status NAME`.
```
```powershell
vagrant ssh <Machinename>
```
This Vagrantfile will create 3 VMs, a saltmaster and two minion nodes. The minion nodes are optional and can be removed if you need minions to be run only from containers which is quite easier.

```docker
docker build -t salt-minion .
```
The above command will create a docker image based on latest centos base, install a minion and copy master.conf to the image.

```docker
docker container run -d --hostname salt-minion-001 salt-minion
```
Above command will spin up a container with salt minion process. Now ssh into the saltmaster and accept the salt keys from minion to connect the minion to saltmaster.

```bash
salt-key
```
```bash
salt-key -a salt-minion-001 -y
```
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)
