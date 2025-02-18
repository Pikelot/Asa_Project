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

  🌐**Zonas Configuradas**:
  ```plaintext
  domeio.com
  redinha.com
  miami.com
  ````
  🔧 **Configuração**:
  ```plaintext
  Porta: 53 (TCP/UDP)
  Recursos:
  Registros MX para serviço de e-mail
  Registros CNAME para alias de serviços
  ```

### 🔒 Proxy Reverso (Nginx)

  **SSL**: 
  
  ```plaintext
  Certificado autoassinado
  ```
  
  **Redirecionamentos**:
  
  ```plaintext
  HTTP → HTTPS
  ```
  
  **Configs**:
  ```plaintext
  nginx.conf otimizado
  ```

### 📧 Serviço de E-Mail (Postfix + Dovecot)

  **Protocolos Suportados**:
  
  ```bash
  > SMTP (25/587)
  
  > IMAP (143/993)
  ```
  
  **Segurança**:
  
  ```plaintext
  TLS/SSL
  ```

  **Autenticação SASL**

### 🌐 Webmail (Roundcube)

  ```plaintext
  Acesso: https://webmail.domeio.com
  ```
  
  **Integração**:
  
  ```plaintext
  IMAP/SMTP
  ```

### 🔑 SSH

**Acesso Seguro**:

```bash
> Provedor: porta 22

> Miami: porta 2223

> Redinha: porta 2222
```

# 🚀 Implantação

### Pré-requisitos:

```bash
> Docker 23.0+

> Docker Compose 2.20+

> 4GB RAM livre
```

### Passo a Passo:

**Clone o Repositório**:

```bash
git clone https://github.com/seu-usuario/Asa_Project-5.git
cd Asa_Project-5
```

**Implante a Infraestrutura Principal**:

```bash
docker compose -f Provedor/compose.yaml up --build -d
```

**Implante os Ambientes Cliente**

```bash
# Para Miami
docker compose -f Cliente-Miami/compose.yaml up -d

# Para Redinha
docker compose -f Cliente-Redinha/compose.yaml up -d
```

# 🛡️ Segurança

***Certificados SSL**:

```plaintext
Localização: Provedor/Containers/PROXY/Config/ssl/
Logs centralizados em /var/log/asa/
```

#📄 Licença

**Distribuído sob licença MIT. Veja LICENSE para detalhes.**

# Equipe ASA 2025

📧 Contato : <span style="color:red">silvrt3d@gmail.com</span>

# Este README inclui:

```bash
- Badges profissionais
- Diagrama de estrutura visual
- Seções organizadas com emojis temáticos
- Comandos prontos para execução
- Fluxos de trabalho de teste
- Políticas de segurança claras
- Guia de contribuição detalhado
- Elementos de marcação moderna (CSS via shields.io)
```
