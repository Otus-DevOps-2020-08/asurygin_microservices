# Домашние задание № 17
- Собраны образы контейнеров
    - post-py
    - coment
    - ui
- Образы сразу собирались из alpine
    - python:3.6.0-alpine
    - ruby:2.2-alpine

### Размер оптимизированых образов

```
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
asurygin/ui         1.0                 fca6f1d3215f        22 hours ago        146MB
asurygin/comment    1.0                 e3a54a7691d2        22 hours ago        144MB
asurygin/post       1.0                 4d7ab33553e3        22 hours ago        109MB
mongo               latest              ba0c2ff8d362        7 weeks ago         492MB
ruby                2.2-alpine          d212148e08f7        2 years ago         107MB
python              3.6.0-alpine        cb178ebbf0f2        3 years ago         88.6MB
```

- Dockerfile переписаны согласно best practice


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
