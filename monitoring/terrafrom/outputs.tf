output "external_ip_addresses_docker-host" {
  value = yandex_compute_instance.docker-host.*.network_interface.0.nat_ip_address
}

output "internal_ip_address_docker-host" {
value = yandex_compute_instance.docker-host.*.network_interface.0.ip_address
}
