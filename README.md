# Установка:

В IDE запустите интерпретатор Python 3.13. Например, установите его с помощью pyenv и явно выберите его в IDE

```bash
pyenv install 3.13
```

Установите pipenv для управления пакетами и виртуальными окружениями

```bash
pip install pipenv
```

Установите заивисимости

```bash
pipenv install
```

# Запуск приложения:

Запустите консоль pipenv

```bash
pipenv shell
```

Запусите приложение

```bash
fastapi dev src/main.py
```
