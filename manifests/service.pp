define glassfish::service (
  $ensure,
  $enable
) {
  $service = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'glassfish',
  }

  service { $service:
    ensure  => $ensure,
    enable  => $enable,
  }

}
