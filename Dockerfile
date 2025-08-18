# 1. Imagem base Python slim
FROM python:3.11-slim

# 2. Diretório de trabalho
WORKDIR /app

# 3. Copiar requirements e instalar dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copiar todo o código da aplicação
COPY . .

# 5. Expor porta do Flask
EXPOSE 5000

# 6. Comando para rodar a aplicação
CMD ["python", "app.py"]
