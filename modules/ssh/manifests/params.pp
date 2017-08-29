class ssh::params {


$ssh_name = $osfamily ? {
   'RedHat'  => 'sshd',
   'CentOs'  => 'sshd',
   'Debian'  => 'ssh',
   'Ubuntu'  => 'ssh',
   default   => 'this is not supported by puppet module',


}

}
