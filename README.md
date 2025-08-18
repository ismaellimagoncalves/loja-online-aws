# Loja Online AWS

Projeto de uma loja online simples usando **Python (Flask)**, **Docker** e **Terraform**, com **CI/CD via GitHub Actions** para deploy em uma instância EC2 na AWS.

---

## Tecnologias

* **Python 3 / Flask**: Backend da aplicação
* **HTML/CSS**: Frontend básico
* **Docker**: Containerização
* **Terraform**: Provisionamento na AWS
* **GitHub Actions**: CI/CD automatizado
* **EC2**: Hospedagem da aplicação

---

## Estrutura do projeto

```
.
├── app.py                  # Aplicação Flask
├── Dockerfile              # Dockerfile
├── requirements.txt        # Dependências Python
├── templates/              # Templates HTML
├── static/                 # CSS e outros arquivos estáticos
├── terraform/              # Configurações Terraform
├── .github/workflows/ci-cd.yml # Workflow CI/CD
└── .gitignore
```

---

## Configuração local

1. Clone o repositório:

```bash
git clone https://github.com/ismaellimagoncalves/loja-online-aws.git
cd loja-online-aws
```

2. Crie e ative o ambiente virtual:

```bash
python3 -m venv venv
source venv/bin/activate
```

3. Instale as dependências:

```bash
pip install -r requirements.txt
```

4. Rode a aplicação localmente:

```bash
python app.py
```

A aplicação estará disponível em `http://localhost:5000`.

---

## Docker

Build e execução via Docker:

```bash
docker build -t loja-online .
docker run -d -p 5000:5000 --name loja loja-online
```

---

## Terraform

Provisionamento da infraestrutura AWS:

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

⚠️ Configure suas credenciais AWS antes de aplicar.

---

## CI/CD (GitHub Actions)

O workflow `ci-cd.yml` faz:

1. Build e push da imagem Docker no Docker Hub
2. Deploy na instância EC2 via SSH

**Secrets necessários no GitHub**:

* `DOCKERHUB_USERNAME`
* `DOCKERHUB_TOKEN`
* `EC2_HOST`
* `EC2_SSH_KEY`

---

##
