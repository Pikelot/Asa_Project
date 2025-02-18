# Asa_Project

Projeto da disciplina ASA_2025

## Descrição

Este projeto configura um ambiente de servidor completo utilizando Docker. Ele inclui serviços para DNS, Proxy, Email, Webmail e SSH, além de dois clientes: Miami e Redinha.

## Estrutura do Projeto

A estrutura do projeto é a seguinte:

```
Asa_Project-5/
├── Provedor/
│   ├── compose.yaml
│   └── Containers/
│       ├── DNS/
│       │   ├── Config/
│       │   │   ├── db.domeio.com
│       │   │   ├── db.redinha.com
│       │   │   ├── db.miami.com
│       │   │   └── named.conf.local
│       │   └── Dockerfile
│       ├── PROXY/
│       │   ├── Config/
│       │   │   ├── default.conf
│       │   │   ├── nginx.conf
│       │   │   └── ssl/
│       │   └── Dockerfile
│       ├── MAIL/
│       │   ├── Config/
│       │   │   ├── main.cf
│       │   │   ├── dovecot.conf
│       │   │   ├── 10-master.conf
│       │   │   └── ssl/
│       │   └── Dockerfile
│       ├── WEBMAIL/
│       │   └── Config/
│       │       └── config.inc.php
│       └── SSH/
│           └── Dockerfile
├── Cliente-Miami/
│   ├── compose.yaml
│   └── Containers/
│       └── SSH/
│           └── Dockerfile
└── Cliente-Redinha/
    ├── compose.yaml
    └── Containers/
        └── SSH/
            └── Dockerfile
```

## Serviços

### DNS

Configura um servidor DNS utilizando BIND9. Arquivos de configuração estão em [Provedor/Containers/DNS/Config](Provedor/Containers/DNS/Config).

### Proxy

Configura um servidor proxy utilizando Nginx para redirecionar o tráfego HTTP e HTTPS. Arquivos de configuração estão em [Provedor/Containers/PROXY/Config](Provedor/Containers/PROXY/Config).

### Email

Configura um servidor de email utilizando Postfix e Dovecot. Arquivos de configuração estão em [Provedor/Containers/MAIL/Config](Provedor/Containers/MAIL/Config).

### Webmail

Configura um cliente de webmail utilizando Roundcube. Arquivos de configuração estão em [Provedor/Containers/WEBMAIL/Config](Provedor/Containers/WEBMAIL/Config).

### SSH

Configura um servidor SSH para acesso remoto. Arquivos de configuração estão em [Provedor/Containers/SSH](Provedor/Containers/SSH).

## Clientes

### Cliente Miami

Configura um ambiente de cliente para Miami utilizando WordPress e MariaDB. Arquivos de configuração estão em [Cliente-Miami](Cliente-Miami).

### Cliente Redinha

Configura um ambiente de cliente para Redinha utilizando WordPress e MariaDB. Arquivos de configuração estão em [Cliente-Redinha](Cliente-Redinha).

## Como Usar

1. Clone o repositório:
    ```sh
    git clone <URL_DO_REPOSITORIO>
    cd Asa_Project-5
    ```

2. Construa e inicie os containers do provedor:
    ```sh
    docker-compose -f Provedor/compose.yaml up --build
    ```

3. Construa e inicie os containers do cliente Miami:
    ```sh
    docker-compose -f Cliente-Miami/compose.yaml up --build
    ```

4. Construa e inicie os containers do cliente Redinha:
    ```sh
    docker-compose -f Cliente-Redinha/compose.yaml up --build
    ```

5. Acesse os serviços:
    - DNS: Porta 53
    - Proxy: Porta 80 (HTTP) e 443 (HTTPS)
    - Email: Portas 25, 587, 110, 143, 465
    - Webmail: [https://webmail.domeio.com](https://webmail.domeio.com)
    - SSH: Porta 22 (Provedor), Porta 2223 (Cliente Miami), Porta 2222 (Cliente Redinha)

## Logs

Os logs de erro estão localizados em `/var/log/nginx/error.log` para o Proxy e `/var/log/nginx/access.log` para o acesso.

## Contribuição

1. Faça um fork do projeto.
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`).
3. Commit suas mudanças (`git commit -am 'Adiciona nova feature'`).
4. Faça o push para a branch (`git push origin feature/nova-feature`).
5. Crie um novo Pull Request.

## Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo LICENSE para mais detalhes.