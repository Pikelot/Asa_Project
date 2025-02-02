<?php
$config['smtp_server'] = 'tls://mail.praia.domeio.com'; // ou "email" (nome do serviço no Docker)
$config['smtp_port'] = 587; // ou 25 (sem TLS)
$config['smtp_user'] = '%u'; // Usa o mesmo usuário do IMAP
$config['smtp_pass'] = '%p'; // Usa a mesma senha do IMAP
$config['smtp_conn_options'] = [
  'ssl' => [
    'verify_peer' => false,
    'verify_peer_name' => false,
    'allow_self_signed' => true
  ]
];
