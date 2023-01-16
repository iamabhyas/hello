FROM python:3.9-alpine3.13
LABEL maintainer="abhyasdeshpremi.com"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
COPY ./scripts/run.sh /scripts/run.sh
COPY ./app /app
WORKDIR /app
EXPOSE 80

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    apk add --update --no-cache postgresql-client && \
    apk add --update --no-cache --virtual .tmp-build-deps \
        build-base postgresql-dev musl-dev && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    rm -rf /tmp && \
    apk del .tmp-build-deps && \
    chmod -R +x /scripts

ENV PATH="/scripts:/py/bin:$PATH"

CMD ["sh","/scripts/run.sh"]
