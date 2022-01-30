FROM python:alpine as develop
WORKDIR /opt/hello-color
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
VOLUME /opt/hello-color
ENTRYPOINT ["sh"]

FROM python:alpine
WORKDIR /opt/hello-color
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./main.py" ]
