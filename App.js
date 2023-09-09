from flask import Flask, request, render_template
from rdflib import Graph
from rdflib.plugins.sparql import prepareQuery

app = Flask(__name__)

g = Graph()
try:
    g.parse("sample.rdf", format="xml")
except Exception as e:
    print("Error parsing RDF data:", e)



@app.route('/query', methods=['GET'])
def query_rdf():
    query_string = request.args.get('q')  # Get the 'q' parameter from the query string
    query = prepareQuery(query_string)

    results = g.query(query)
    print(results)
    results_list = []

    for row in results:
        result_dict = {
            'name': row['name'],
            'hobby': row['hobby']
        }
        results_list.append(result_dict)

    return render_template('index.html', results=results_list)





if __name__ == "__main__":
    app.run(debug=True)
