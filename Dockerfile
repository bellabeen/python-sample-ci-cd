FROM python:3.8-alpine
WORKDIR /app
ENV FLASK_APP=hello.py
ENV FLASK_RUN_HOST=0.0.0.0
COPY ./flask-hello/requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY ./flask-hello /app
CMD ["flask", "run"]