FROM python:2
RUN pip install couchapp

WORKDIR /app
ENTRYPOINT ["couchapp"]
