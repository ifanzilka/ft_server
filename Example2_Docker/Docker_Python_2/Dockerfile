FROM python:3.8.5
# Basic image in start building
# :-> TEG
RUN mkdir -p /usr/src/app/
# Run -> in comand
WORKDIR /usr/src/app/
# in exit dir

COPY . /usr/src/app/

# copy my dir in other dir

RUN pip install --no-cache-dir -r  requirements.txt

EXPOSE 8080

# переменная окружения
#ENV  TZ Europe/Moscow

CMD ["python","app.py"]\
#what doing in start container
# or ENTRYPOINT (not shell)