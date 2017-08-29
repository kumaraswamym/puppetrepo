class demo {

file { '/etc/welcome':
 
    ensure => file,
    content => template("demo/welcome.erb") ,
    owner  => root,
    group  => root,
    mode   => '0755'
}

file { '/etc/test':

    ensure => directory,
    owner  => root,
    group  => root,
}
package {['tree','unzip']:

 ensure => present,
}

}
