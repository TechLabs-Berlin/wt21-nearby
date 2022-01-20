from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
	return 'Hallo Maria!'

@app.route('/about')
def about():
	return 'Mit dieser Seite kann man sich Angebote des Berlinpass empfehlen lassen'