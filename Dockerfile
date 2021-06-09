FROM python:3-alpine3.9

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

COPY app.py /app/
COPY templates/index.html /app/templates/
COPY static/styles/main.css /app/static/styles/
COPY static/images/* /app/static/images/

EXPOSE 3000

CMD ["python", "/app/app.py"]
