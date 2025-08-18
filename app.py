from flask import Flask, render_template

app = Flask(__name__, static_folder='static')

produtos = [
    {"nome": "Carro Esportivo", "preco": "R$150.000", "imagem": "https://via.placeholder.com/200"},
    {"nome": "SUV Familiar", "preco": "R$120.000", "imagem": "https://via.placeholder.com/200"},
    {"nome": "Moto Esportiva", "preco": "R$35.000", "imagem": "https://via.placeholder.com/200"},
]

@app.route("/")
def home():
    return render_template("index.html", produtos=produtos)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
