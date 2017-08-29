class sysusers::groups {

  group { 'sudoers':
   ensure => present,
  }

}
