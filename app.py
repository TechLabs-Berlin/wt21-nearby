from flask import Flask, render_template, request, redirect
import pandas as pd

df = pd.read_csv('data.csv', delimiter=';')

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('home.html')


@app.route('/out')
def out():
    bezirk = request.args.get('bezirk')
    services = request.args.get('services')
    search = request.args.get('search')
    global df
    data = df
    #print('bezirk', bezirk)
    #print('DataFrame', "*"*100, data.head())
    filter_bezirk = data['bezirk'] == bezirk
    filter_services = data['services'] == services
    #print('FILTER BEZIRK', "*"*100, filter_bezirk)
    #print('FILTER SERVICES', "*"*100, filter_services)
    data = data[(filter_bezirk) & (filter_services)]
    print('data', data, 'bezirk', bezirk, 'services', services)
    return render_template('output.html', data=data, bezirk=bezirk, services=services)