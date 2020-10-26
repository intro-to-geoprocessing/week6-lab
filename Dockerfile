FROM python:3.8-slim-buster

# Copy only requirements to cache them in docker layer
WORKDIR /code

COPY . /code

# System deps:
RUN apt-get update && apt-get install -y libspatialindex-dev
RUN pip install -r requirements.txt