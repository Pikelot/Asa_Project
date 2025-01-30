<?php
$config['imap_host'] = 'tls://email:143';
$config['smtp_host'] = 'tls://email:587';
$config['imap_conn_options'] = [
  'ssl' => [
    'verify_peer' => false,
    'verify_peer_name' => false,
    'allow_self_signed' => true
  ]
];