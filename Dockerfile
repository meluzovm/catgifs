FROM python:3.12.3-alpine

WORKDIR /app

COPY . requirements.txt /app/

# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r /app/requirements.txt

EXPOSE 3000

CMD ["python", "/app/app.py"]
