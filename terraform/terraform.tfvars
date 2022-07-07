pm_host_port    = 8006
pm_tls_insecure = true

instance_description = "Ansible jumphost"
instance_domain      = "node.room101.a7d"

clone         = "template-ubuntu-2004-base-image"
target_node   = "host-03"
resource_pool = "infrastructure"

os_type                 = "cloud-init"
cloudinit_cdrom_storage = "nfs-cloudinit"
citemplate_storage      = "nfs-cloudinit"

resource_cpu_cores   = 1
resource_cpu_sockets = 1
resource_memory      = 512

# network config
network_model = "virtio"

# cloudinit network config
search_domains = ["node.room101.a7d", "analbeard.com"]
dns_servers    = ["10.101.0.55", "10.101.0.60"]

# primary nic config
net0_network_bridge  = "vmbr0"
net0_vlan_tag        = 1001
net0_network_cidr    = "172.25.0.0/23"
net0_network_netmask = 23

# primary disk configuration
primary_disk_location = "local-lvm"
primary_disk_size     = "15G"

searchdomain = "node.room101.a7d"
nameserver   = "10.101.0.55"
