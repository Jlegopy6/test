FROM amazon/aws-cli:latest

# Установка зависимостей для работы с Yandex Cloud
RUN yum install -y tar gzip

# Копируем скрипт для загрузки (опционально)
COPY upload_to_s3.sh /upload_to_s3.sh
RUN chmod +x /upload_to_s3.sh

ENTRYPOINT ["/bin/sh"]
