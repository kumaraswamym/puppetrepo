class ssh inherits ssh::params{

 package { 'ssh-package':
     name  => 'openssh-server',
     ensure => present,
     before => Service['ssh-service'],
   }

  file { '/etc/ssh/sshd_config':
      ensure => file,
      owner  => 'root',
      group  => 'root',
      source => 'puppet:///modules/ssh/sshd_config',
      require => Package['ssh-package'],
    } 
  
   service { 'ssh-service':
    name   => $ssh_name,
    ensure => running,
    enable => true,
   subscribe => File['/etc/ssh/sshd_config'],
  }

}
