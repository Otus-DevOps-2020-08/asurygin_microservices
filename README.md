# Домашние задание № 16
- Развернул Docker и Docker-machine
- Поднял docker-host
- Запушил в docker-hub image otus-reddit:1.0
- Через docker-machine развернул на image на docker-host
- С помощью packer собрал образ vm c docker на борту
- Написал playbook для установки docker в image vm
- Написал playbook для деплоя образа в подготовленую vm
- С помощью terraform разворачиваются  и провижинится vm их количество задается переменной
- Для использования   provisioner ansible в terraform использовал https://github.com/radekg/terraform-provisioner-ansible
