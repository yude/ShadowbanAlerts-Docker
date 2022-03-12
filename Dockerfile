FROM python:3.9-alpine

COPY requirements.txt /tmp/
RUN apk add --update --no-cache --virtual .build-deps \
    # pip
    && cd /tmp \
    && python -m pip install --upgrade pip \
    && pip install --no-cache-dir \
        -r /tmp/requirements.txt \
    && rm /tmp/requirements.txt \
    \
    && apk del --purge .build-deps

WORKDIR /app
COPY . /app/

ADD crontab /var/spool/crontab/root
RUN crontab /var/spool/crontab/root

ENTRYPOINT ["crond", "-f"]