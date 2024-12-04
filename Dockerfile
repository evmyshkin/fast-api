# Тянем образ нужного Python
FROM python:3.13-slim

# Задаем рабочую директорию
WORKDIR /app/src

# Установка pipenv
RUN pip install --upgrade pip \
    && pip install pipenv

# Переносим зависимости в Pipfile и Pipfile.lock в контейнер
COPY Pipfile Pipfile.lock /app/

# Устанавливаем зависимости с pipenv
RUN pipenv install --deploy --system

# Переносим остальные файлы приложения 
COPY . /app

# Открываем порт для доступа к приложению в контейнере
# EXPOSE 8000

# Command to run the FastAPI app using uvicorn
CMD ["fastapi", "run", "main.py", "--host", "0.0.0.0", "--port", "8000"]
