from flask import Flask, render_template, url_for, redirect, request
import pandas as pd

data = pd.read_csv('data.csv', delimiter = ';')

app = Flask(__name__)

@app.route('/')
def home():
	return render_template('input.html')

@app.route('/output')
def output():
	bezirk = request.args.get('bezirk')
	return render_template('output.html', data = data, bezirk = bezirk)