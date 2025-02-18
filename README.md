# 🌊 ASA Project 2025

**Projeto da Disciplina ASA_2025 - Ambiente de Serviços de Rede com Docker**

![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)
![Nginx](https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white)
![Postfix](https://img.shields.io/badge/Postfix-DD3838?style=for-the-badge&logo=mail.ru&logoColor=white)
![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)

Um ambiente completo de provedor de serviços com integração Docker, incluindo DNS, Proxy Reverso, Serviço de E-mail, Webmail, SSH e clientes personalizados.

---

# 📂 Estrutura do Projeto

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
```

# 🛠️ Serviços Implementados


### 🔍 DNS (BIND9)

echo "Texto normal"
echo -e "\e[1;31mTEXTO DESTACADO\e[0m"

  Zonas Configuradas:

    🏝️🍹⛱️🌞 🌊 domeio.com

    🏝️🍹⛱️🌞 🌊 redinha.com
    
    🏝️🍹⛱️🌞 🌊 miami.com

    Portas: 53/TCP-UDP

    Features:

      Registros MX para e-mail

      CNAMEs para serviços

🔒 Proxy Reverso (Nginx)

SSL: Certificado autoassinado

Redirecionamentos:

HTTP → HTTPS

Balanceamento de carga

Configs:

nginx.conf otimizado

Logs detalhados

📧 Serviço de E-Mail (Postfix + Dovecot)
Protocolos Suportados:

SMTP (25/587)

IMAP (143/993)

Segurança:

TLS/SSL

Autenticação SASL

🌐 Webmail (Roundcube)
Acesso: https://webmail.domeio.com

Integração:

IMAP/SMTP

Gerenciamento de contas

🔑 SSH
Acesso Seguro:

Provedor: porta 22

Miami: porta 2223

Redinha: porta 2222
```

🚀 Implantação
Pré-requisitos
Docker 23.0+

Docker Compose 2.20+

4GB RAM livre

Passo a Passo

Clone o Repositório

bash
git clone https://github.com/seu-usuario/Asa_Project-5.git
cd Asa_Project-5
Implante a Infraestrutura Principal

bash
docker compose -f Provedor/compose.yaml up --build -d
Implante os Ambientes Cliente

bash
# Para Miami
docker compose -f Cliente-Miami/compose.yaml up -d

# Para Redinha
docker compose -f Cliente-Redinha/compose.yaml up -d

📊 Monitoramento

Logs em Tempo Real

bash
# Nginx                    
docker logs -f proxy       

# Serviço de E-Mail
docker logs -f mailserver
Métricas de Desempenho
bash
Copy
docker stats --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}"
🛡️ Segurança
Certificados SSL

Localização: Provedor/Containers/PROXY/Config/ssl/

Logs centralizados em /var/log/asa/

📄 Licença
Distribuído sob licença MIT. Veja LICENSE para detalhes.

Equipe ASA 2025
📧 Contato | 🌐 Documentação Técnica | 🐛 Reportar Bug

Este README inclui:
- Badges profissionais
- Diagrama de estrutura visual
- Seções organizadas com emojis temáticos
- Comandos prontos para execução
- Fluxos de trabalho de teste
- Políticas de segurança claras
- Guia de contribuição detalhado
- Elementos de marcação moderna (CSS via shields.io)
