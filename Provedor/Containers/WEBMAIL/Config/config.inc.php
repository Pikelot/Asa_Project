<?php
$config['imap_host'] = 'tls://email:143';
$config['smtp_host'] = 'tls://email:25';
#$config['smtp_port'] = 587;
$config['smtp_user'] = '%u';
$config['smtp_pass'] = '%p';
$config['mail_domain'] = 'praia.domeio.com';
$config['smtp_conn_options'] = array(
  'ssl' => array(
      'verify_peer' => false,
      'verify_peer_name' => false,
      'allow_self_signed' => true
  )
);