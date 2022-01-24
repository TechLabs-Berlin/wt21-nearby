from flask import Flask, render_template
import pandas as pd

data = pd.read_csv('data.csv', delimiter = ';')

app = Flask(__name__)

@app.route('/')
def home():
	return render_template('home.html', name = 'Maria')

@app.route('/out')
def about():
	return render_template('output.html', data=data)