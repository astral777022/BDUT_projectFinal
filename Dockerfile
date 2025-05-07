FROM python:3.12-alpine3.21
COPY . .

EXPOSE 5000

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0"]
