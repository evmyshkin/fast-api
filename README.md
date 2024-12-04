# Запуск с Docker

1. Установить и запустить Docker Engine

2. Запустить сборку

```bash
docker build -t fastapi-app .
```

3. Запустить контейнер с приложением из образа

```bash
sudo docker run -d -p 8000:8000 --name fastapi-app-container fastapi-app
```

4. Приложение по-умолчанию доступно по адресу http://0.0.0.0:8000/

## Дополнительные команды Docker

Посмотреть список контейнеров

```bash
docker ps -a
```

Открыть консоль запущенного контейнера

```bash
docker exec -it <container_id_or_name> /bin/bash
```

Выйти из консоли запущенного окнтейнера

```bash
exit
```

Удалить контейнер

```bash
docker rm <container_id_or_name>
```

Посмотреть список образов

```bash
docker images
```

Удвлить образ

```bash
docker rmi <image_id_or_repository:tag>
```

# Установка без Docker:

1. В IDE запустите интерпретатор Python 3.13. Например, установите его с помощью pyenv и явно выберите его в IDE

```bash
pyenv install 3.13
```

2. Установите pipenv для управления пакетами и виртуальными окружениями

```bash
pip install pipenv
```

3. Установите заивисимости

```bash
pipenv install
```

4. Запустите консоль pipenv

```bash
pipenv shell
```

5. Запусите приложение

```bash
fastapi dev src/main.py
```
