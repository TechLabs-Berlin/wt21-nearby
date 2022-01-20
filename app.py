from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
	return render_template('home.html', name = 'Maria')

@app.route('/about')
def about():
	return 'Mit dieser Seite kann man sich Angebote des Berlinpass empfehlen lassen'