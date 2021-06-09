#!/usr/bin/python3.9
import random
from flask import Flask, render_template
from sensible.loginit import logger


log = logger(__name__)
app = Flask(__name__)

# a bunch of cat gifs
images = [
    "./static/images/cat-0.gif",
    "./static/images/cat-1.gif",
    "./static/images/cat-2.gif",
    "./static/images/cat-3.gif",
    "./static/images/cat-4.gif",
    "./static/images/cat-5.gif",
    "./static/images/cat-6.gif",
    "./static/images/cat-7.gif",
    "./static/images/cat-8.gif",
    "./static/images/cat-9.gif",
    "./static/images/cat-10.gif",
    "./static/images/cat-11.gif",
]

@app.route('/')
def index():
    url = random.choice(images)
    return render_template('index.html', url=url)

if __name__ == '__main__':
    log.info("START Flask")
    app.debug = True
    app.run(host='0.0.0.0', port=3000)
    log.info("SHUTDOWN Flask")
