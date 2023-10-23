
FROM python:3.8-slim


ENV DJANGO_SETTINGS_MODULE=getorgi.settings
ENV PYTHONUNBUFFERED 1


RUN mkdir /code
WORKDIR /code


COPY . /code/


RUN pip install -r requirements.txt


CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
