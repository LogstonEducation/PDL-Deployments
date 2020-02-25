FROM python:3.8-alpine
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY . /code/
RUN apk add uwsgi-python3
RUN pip install -r requirements.txt
CMD ["/usr/sbin/uwsgi", "--ini", "uwsgi.ini"]
