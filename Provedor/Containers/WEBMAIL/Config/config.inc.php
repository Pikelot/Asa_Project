<?php
$config['imap_host'] = 'ssl://email';
$config['imap_port'] = 993;
$config['smtp_user'] = '%u'; // se autenticação for necessária
$config['smtp_pass'] = '%p'; // se autenticação for necessária
$config['imap_host'] = 'email';
$config['imap_port'] = 143;
#$config['username_domain'] = 'praia.domeio.com';
$config['mail_domain'] = 'praia.domeio.com';
$config['imap_conn_options'] = [
  'ssl' => [
    'verify_peer' => false,
    'verify_peer_name' => false,
    'allow_self_signed' => true
  ]
];