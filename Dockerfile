FROM python:3.9-alpine

COPY requirements.txt /tmp/
RUN cd /tmp \
    && python -m pip install --upgrade pip \
    && pip install --no-cache-dir \
        -r /tmp/requirements.txt \
    && rm /tmp/requirements.txt \

WORKDIR /app
COPY . /app/

ADD crontab /var/spool/crontab/root
RUN crontab /var/spool/crontab/root

ENTRYPOINT ["crond", "-f"]
