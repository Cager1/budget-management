[
    {
        "Id": "99b5f8a6e9880a1f60e0d4da9a0ba741d56434ee5916640b7f5bfc207f98c3a4",
        "Created": "2024-06-09T19:45:46.495802979Z",
        "Path": "docker-entrypoint.sh",
        "Args": [
            "mysqld"
        ],
        "State": {
            "Status": "exited",
            "Running": false,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 0,
            "ExitCode": 1,
            "Error": "",
            "StartedAt": "2024-06-09T19:45:47.332432323Z",
            "FinishedAt": "2024-06-09T19:45:48.648809436Z"
        },
        "Image": "sha256:fcd86ff8ce8c2d30f02607e184cbfd73eb581e22a451e4a1847a102318bc2926",
        "ResolvConfPath": "/var/lib/docker/containers/99b5f8a6e9880a1f60e0d4da9a0ba741d56434ee5916640b7f5bfc207f98c3a4/resolv.conf",
        "HostnamePath": "/var/lib/docker/containers/99b5f8a6e9880a1f60e0d4da9a0ba741d56434ee5916640b7f5bfc207f98c3a4/hostname",
        "HostsPath": "/var/lib/docker/containers/99b5f8a6e9880a1f60e0d4da9a0ba741d56434ee5916640b7f5bfc207f98c3a4/hosts",
        "LogPath": "/var/lib/docker/containers/99b5f8a6e9880a1f60e0d4da9a0ba741d56434ee5916640b7f5bfc207f98c3a4/99b5f8a6e9880a1f60e0d4da9a0ba741d56434ee5916640b7f5bfc207f98c3a4-json.log",
        "Name": "/mysql-container",
        "RestartCount": 0,
        "Driver": "overlay2",
        "Platform": "linux",
        "MountLabel": "",
        "ProcessLabel": "",
        "AppArmorProfile": "docker-default",
        "ExecIDs": null,
        "HostConfig": {
            "Binds": null,
            "ContainerIDFile": "",
            "LogConfig": {
                "Type": "json-file",
                "Config": {}
            },
            "NetworkMode": "bridge",
            "PortBindings": {
                "3306/tcp": [
                    {
                        "HostIp": "",
                        "HostPort": "6306"
                    }
                ]
            },
            "RestartPolicy": {
                "Name": "no",
                "MaximumRetryCount": 0
            },
            "AutoRemove": false,
            "VolumeDriver": "",
            "VolumesFrom": null,
            "ConsoleSize": [
                48,
                158
            ],
            "CapAdd": null,
            "CapDrop": null,
            "CgroupnsMode": "host",
            "Dns": [],
            "DnsOptions": [],
            "DnsSearch": [],
            "ExtraHosts": null,
            "GroupAdd": null,
            "IpcMode": "private",
            "Cgroup": "",
            "Links": null,
            "OomScoreAdj": 0,
            "PidMode": "",
            "Privileged": false,
            "PublishAllPorts": false,
            "ReadonlyRootfs": false,
            "SecurityOpt": null,
            "UTSMode": "",
            "UsernsMode": "",
            "ShmSize": 67108864,
            "Runtime": "runc",
            "Isolation": "",
            "CpuShares": 0,
            "Memory": 0,
            "NanoCpus": 0,
            "CgroupParent": "",
            "BlkioWeight": 0,
            "BlkioWeightDevice": [],
            "BlkioDeviceReadBps": [],
            "BlkioDeviceWriteBps": [],
            "BlkioDeviceReadIOps": [],
            "BlkioDeviceWriteIOps": [],
            "CpuPeriod": 0,
            "CpuQuota": 0,
            "CpuRealtimePeriod": 0,
            "CpuRealtimeRuntime": 0,
            "CpusetCpus": "",
            "CpusetMems": "",
            "Devices": [],
            "DeviceCgroupRules": null,
            "DeviceRequests": null,
            "MemoryReservation": 0,
            "MemorySwap": 0,
            "MemorySwappiness": null,
            "OomKillDisable": false,
            "PidsLimit": null,
            "Ulimits": [],
            "CpuCount": 0,
            "CpuPercent": 0,
            "IOMaximumIOps": 0,
            "IOMaximumBandwidth": 0,
            "MaskedPaths": [
                "/proc/asound",
                "/proc/acpi",
                "/proc/kcore",
                "/proc/keys",
                "/proc/latency_stats",
                "/proc/timer_list",
                "/proc/timer_stats",
                "/proc/sched_debug",
                "/proc/scsi",
                "/sys/firmware",
                "/sys/devices/virtual/powercap"
            ],
            "ReadonlyPaths": [
                "/proc/bus",
                "/proc/fs",
                "/proc/irq",
                "/proc/sys",
                "/proc/sysrq-trigger"
            ]
        },
        "GraphDriver": {
            "Data": {
                "LowerDir": "/var/lib/docker/overlay2/176b82e109e6e34a33df05a7415c0535d7316a1a6706b28574ff5ea622a18ff0-init/diff:/var/lib/docker/overlay2/e9edd002c674ddfe79d24364eed3878ad14281555cc5232d7113f5201dc48a3f/diff:/var/lib/docker/overlay2/d81454571f172a44f094408b67424f84bd765d760ba10c583ddc30f882084af7/diff:/var/lib/docker/overlay2/0e24ac0c771eaa4a51d138fee38af0b6d1fa4d88609989af6741b9a6e318eead/diff:/var/lib/docker/overlay2/f23376b0fcfcfa2a2bc9c9fe78ac75b3d223937436f5497045085a345bb0bfef/diff:/var/lib/docker/overlay2/3ee9dceff51eaafb4cfd9f064da63c2452bd760477466338bce876fae82326fb/diff:/var/lib/docker/overlay2/b548e6fca4f5c3d7215a083ab3058f7a3d3dbef32ab633a621318cac5d6afad1/diff:/var/lib/docker/overlay2/1dc9f6c91a483787f5067d317dbbfcd91a2b0531ca23bdc3348756cfe31a38c4/diff:/var/lib/docker/overlay2/7928a6097e944737679ba806e43a9645b9067d1533e826706c2f316247cc1f57/diff:/var/lib/docker/overlay2/2059244af19ebcd3ad447e6cd670c72a2f45d673910d47fdda1d9b7396b4d2cf/diff:/var/lib/docker/overlay2/105440d7ccb074fa58a7b91d84cf885022010cbf93b8af2a7033a0c7b046582c/diff",
                "MergedDir": "/var/lib/docker/overlay2/176b82e109e6e34a33df05a7415c0535d7316a1a6706b28574ff5ea622a18ff0/merged",
                "UpperDir": "/var/lib/docker/overlay2/176b82e109e6e34a33df05a7415c0535d7316a1a6706b28574ff5ea622a18ff0/diff",
                "WorkDir": "/var/lib/docker/overlay2/176b82e109e6e34a33df05a7415c0535d7316a1a6706b28574ff5ea622a18ff0/work"
            },
            "Name": "overlay2"
        },
        "Mounts": [
            {
                "Type": "volume",
                "Name": "64765faf3f37c3611870d4f9ca35c39ebaf5feea7c7eba83d024930cb97474e9",
                "Source": "/var/lib/docker/volumes/64765faf3f37c3611870d4f9ca35c39ebaf5feea7c7eba83d024930cb97474e9/_data",
                "Destination": "/var/lib/mysql",
                "Driver": "local",
                "Mode": "",
                "RW": true,
                "Propagation": ""
            }
        ],
        "Config": {
            "Hostname": "99b5f8a6e988",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": false,
            "AttachStderr": false,
            "ExposedPorts": {
                "3306/tcp": {},
                "33060/tcp": {}
            },
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "MYSQL_USER=root",
                "MYSQL_PASSWORD=",
                "MYSQL_DATABASE=bm",
                "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "GOSU_VERSION=1.17",
                "MYSQL_MAJOR=8.4",
                "MYSQL_VERSION=8.4.0-1.el9",
                "MYSQL_SHELL_VERSION=8.4.0-1.el9"
            ],
            "Cmd": [
                "mysqld"
            ],
            "Image": "mysql:latest",
            "Volumes": {
                "/var/lib/mysql": {}
            },
            "WorkingDir": "",
            "Entrypoint": [
                "docker-entrypoint.sh"
            ],
            "OnBuild": null,
            "Labels": {}
        },
        "NetworkSettings": {
            "Bridge": "",
            "SandboxID": "fba47206ea2c379eb8c76becae37e83c8477098d68b4d6a9fca3c5ab397e852b",
            "SandboxKey": "/var/run/docker/netns/fba47206ea2c",
            "Ports": {},
            "HairpinMode": false,
            "LinkLocalIPv6Address": "",
            "LinkLocalIPv6PrefixLen": 0,
            "SecondaryIPAddresses": null,
            "SecondaryIPv6Addresses": null,
            "EndpointID": "",
            "Gateway": "",
            "GlobalIPv6Address": "",
            "GlobalIPv6PrefixLen": 0,
            "IPAddress": "",
            "IPPrefixLen": 0,
            "IPv6Gateway": "",
            "MacAddress": "",
            "Networks": {
                "bridge": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": null,
                    "MacAddress": "",
                    "NetworkID": "c393243df93fa7020348738048ccb2254a1281632e652b9c9a43e0def7781eeb",
                    "EndpointID": "",
                    "Gateway": "",
                    "IPAddress": "",
                    "IPPrefixLen": 0,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "DriverOpts": null,
                    "DNSNames": null
                }
            }
        }
    }
]
