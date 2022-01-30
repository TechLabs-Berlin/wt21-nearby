from flask import Flask, render_template, request, redirect
import pandas as pd

data = pd.read_csv('data.csv', delimiter=';')

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('home.html', name='Maria')

@app.route('/out')
def out():
    bezirk = request.args.get('bezirk')
    return render_template('output.html', data=data, bezirk=bezirk)