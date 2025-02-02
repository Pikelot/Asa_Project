<?php
$config['imap_host'] = 'tls://email:143';
$config['smtp_host'] = 'tls://email:25';
config['smtp_server'] = 'tls://email:587';
#$config['username_domain'] = 'praia.domeio.com';
$config['mail_domain'] = 'praia.domeio.com';
$config['imap_conn_options'] = [
  'ssl' => [
    'verify_peer' => false,
    'verify_peer_name' => false,
    'allow_self_signed' => true
  ]
];