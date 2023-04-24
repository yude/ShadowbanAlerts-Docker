FROM python:3.10-alpine

WORKDIR /app
COPY . /app/

RUN cd /app \
    && python -m pip install --upgrade pip pipenv \
    && pipenv install

ADD crontab /var/spool/crontab/root
RUN crontab /var/spool/crontab/root

ENTRYPOINT ["crond", "-f"]
