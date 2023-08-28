from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Web App with Python ffgfFlask! version one '

app.run()
