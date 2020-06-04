# Packer template and kickstart File

## Prepare
Install Packer and hypervisor(s). This Packer template has compatible with VirtualBox and VMware Fusion.
- VirtualBox
  - https://www.virtualbox.org/
- Packer
  - https://www.packer.io/downloads/

## Do
Move to the directory which Packer JSON template file located and runs following command.

```
packer build --only=virtualbox centos8.1.json
```

## VM specs
- 2 vCPUs
- 2048 MB Memory(RAM)
- 30,000 MB Storage with Thin Provisioning
- 1 vNIC with E1000 (on VMware)

## Variables
If you want to change some VM specs, change variables on the config file, or run Packer with `-var` argument(s). For details, please refer to the Packer official document.

This command will build VM with **4vCPUs and 4096MB RAM**  (instead of 2vCPUs and 2048MB RAM.) The Packer JSON template on the "variable" key defines some variables for creating VM. The example of the below overrides `cpus` and `memory_mb` variables. 


```
packer build -var "cpus=4" -var "memory_mb=2048" --only=virtualbox centos8.1.json
```


## Kickstart Information
 - This kickstart file will create `root` user with password `VMware1!VMware1!`.
 - Timezone is `Asia/Tokyo`
 - Keyboard layout is `us`
