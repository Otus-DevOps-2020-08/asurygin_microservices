provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}

resource "yandex_compute_instance" "app" {
  count = var.instance_count
  name = "app-${count.index}"
  labels = {
    tags = "app"
  }


  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      size = 50
      image_id = var.image_id
    }
  }

  network_interface {
    # Указан id подсети default-ru-central1-b
    subnet_id = var.subnet_id
    nat       = true
  }

  scheduling_policy {
    preemptible = true
  }

  metadata = {
  ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

  connection {
  type = "ssh"
  host = self.network_interface.0.nat_ip_address
  user = "ubuntu"
  agent = false
  # путь до приватного ключа
  private_key = file(var.private_key_path)
 }

 provisioner "ansible" {
      plays {
          playbook {
              file_path = "ansible/playbooks/docker.yml"
          }

      }
  }
}
