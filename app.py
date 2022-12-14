import os
from flask import Flask

APP = Flask(__name__)  # Standard Flask app


@APP.route("/")
def hello():
    """
    Hello world on root path
    """
    return os.environ.get("MESSAGE", "Hello world!, my name is Adam Szydlo - email:adamszydlo@gmail.com\n")


if __name__ == "__main__":
    APP.run(host='0.0.0.0', port=os.environ.get('listenport', 8081))
