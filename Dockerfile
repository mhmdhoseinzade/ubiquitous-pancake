FROM registry-de.runflare.run/public/flask39:2023-08-08

WORKDIR /app

COPY requirements.txt /app

pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /app

RUN rm -rf /app/Dockerfile \
                    /app/docker-init

EXPOSE 80

CMD ["supervisord", "-c", "/usr/bin/supervisord.conf"]
