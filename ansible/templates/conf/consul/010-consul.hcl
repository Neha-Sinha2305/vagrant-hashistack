primary_datacenter = "dc1"

recursors = ["151.187.151.101"]
bind_addr = "{{ GetInterfaceIP \"docker0\" }}"
client_addr = "{{ GetInterfaceIP \"docker0\" }}"

ports = {
  dns = 53
  grpc = 8502
}

addresses {
  dns = "127.0.0.1 {{ GetInterfaceIP \"docker0\" }} {{ GetInterfaceIP \"eth0\" }} {{ GetInterfaceIP \"eth1\" }}"
  grpc = "127.0.0.1 {{ GetInterfaceIP \"docker0\" }} {{ GetInterfaceIP \"eth0\" }} {{ GetInterfaceIP \"eth1\" }}"
  http = "127.0.0.1 {{ GetInterfaceIP \"docker0\" }} {{ GetInterfaceIP \"eth0\" }} {{ GetInterfaceIP \"eth1\" }}"
}