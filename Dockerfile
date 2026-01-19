FROM python:3.9

WORKDIR /app

COPY src/ .

RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT [ "python", "manage.py", "migrate"]

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]