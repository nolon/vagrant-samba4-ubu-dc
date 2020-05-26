package { [
    'ctdb',
    'libsmbclient',
    'samba',
    'samba-common',
    'samba-common-bin',
    'samba-libs',
    'rsync',
  ]:
  ensure => installed,
}

resources { 'host':
  purge => true,
}

host { 'localhost':
  ip           => '127.0.0.1',
  host_aliases => 'localhost.localdomain',
}

host { 'localhost6':
  ip           => '::1',
  host_aliases => 'localhost6.localdomain6',
}

host { $fqdn:
  ip           => $ipaddress,
  host_aliases => $hostname,
}
