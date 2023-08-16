# -*- coding: utf-8 -*-
"""
Created on Tue Aug 15 07:35:24 2023

@author: -MSI-
"""

from flask import Flask, request, jsonify
import joblib




app = Flask(__name__)

# Load the trained model
model = joblib.load('medicine_random_forest_model.pkl')


# Load the TF-IDF vectorizer used during training
vectorizer = joblib.load('tfidf_vectorizer.pkl')  # Replace with your actual vectorizer file



@app.route('/predict', methods=['POST'])
def predict():
    input_data = request.json['query']
    # Sample input data
    
    sample_input = [input_data]
    
    print(sample_input)

    # Transform the input data using the vectorizer
    sample_input_tfidf = vectorizer.transform(sample_input)

    # Make predictions using the loaded model
    prediction = model.predict(sample_input_tfidf)
    
    prediction_list = prediction.tolist()

    
    print(prediction)
    return jsonify({'prediction': prediction_list})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
