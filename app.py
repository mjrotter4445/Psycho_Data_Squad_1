from flask import Flask, render_template, jsonify, json, request, redirect
import pickle
from pickle import dump as dump_p, load as load
import numpy as np
import pandas as pd

#LOAD
filename = 'ml_picklefiles/Xscaler.pkl'
model = pickle.load(open(filename, "rb"))
loaded_scaler=pickle.load(open('ml_picklefiles/finalized_model_nov2.sav','rb'))




app = Flask(__name__)

@app.route("/")
def Home():
    return render_template("index.html")

@app.route("/predict", methods = ["POST"])
def predict():
    float_features = [float(x) for x in request.form.values()]
    features = [np.array(float_features)]
    prediction = model.predict(features)
    return render_template("index.html", prediction_text = "The flower species is {}".format(prediction))






if __name__ == "__main__":
    app.run(debug=True)
