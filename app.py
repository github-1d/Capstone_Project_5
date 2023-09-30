from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, World! This is the Flask Hello World app.'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
