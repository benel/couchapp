FROM python:2
RUN pip install --no-cache-dir couchapp
COPY ./patient_couchapp.sh /

WORKDIR /app
ENTRYPOINT ["/patient_couchapp.sh"]
