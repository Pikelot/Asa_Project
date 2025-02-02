<?php
$config['smtp_host'] = 'email';
$config['smtp_port'] = 587;
$config['smtp_server'] = 'tls://email:587';
#$config['username_domain'] = 'praia.domeio.com';
$config['mail_domain'] = 'praia.domeio.com';
$config['imap_conn_options'] = [
  'ssl' => [
    'verify_peer' => false,
    'verify_peer_name' => false,
    'allow_self_signed' => true
  ]
];