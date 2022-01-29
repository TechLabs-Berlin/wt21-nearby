import pandas as pd
data = pd.read_csv('data.csv', delimiter = ';')

print(data.info())

print(data.anbieter)
print(data.kurzbeschreibung_des_angebotes)
print(data.website)
print(data.zeitliche_begrenzung)
print(data.preis)
print(data.bezirk)
print(data.schlagworte)
