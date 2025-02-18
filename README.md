# 🌊 ASA Project 2025

**Projeto da Disciplina ASA_2025 - Ambiente de Serviços de Rede com Docker**

![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)
![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white)
![Postfix](https://img.shields.io/badge/Postfix-DD3838?style=for-the-badge&logo=mail.ru&logoColor=white)
![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)

Um ambiente completo de provedor de serviços com integração Docker, incluindo DNS, Proxy Reverso, Serviço de E-mail, Webmail, SSH e clientes personalizados.

---

## 📂 Estrutura do Projeto

```plaintext
Asa_Project-5/
├── Provedor/
│   ├── compose.yaml                # Orquestração principal
│   └── Containers/
│       ├── DNS/                    # Servidor BIND9
│       ├── PROXY/                  # Nginx com SSL
│       ├── MAIL/                   # Postfix + Dovecot
│       ├── WEBMAIL/                # Roundcube
│       └── SSH/                    # Servidor OpenSSH
├── Cliente-Miami/                  # Ambiente cliente 1
├── Cliente-Redinha/                # Ambiente cliente 2
└── README.md                       # Este documento
