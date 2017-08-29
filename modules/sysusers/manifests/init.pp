class sysusers {

user { 'testuser':
   ensure  => present,
   shell   => '/bin/bash',
   home    => '/home/testuser',
   groups     => ['sudoers','wheel'],
   managehome => true,
   password => 'testuser123',
 }

user { 'admin':
   ensure  => present,
   shell   => '/bin/bash',
   home    => '/home/admin',
   groups     => ['sudoers','wheel'], 
   managehome => true,
   password => 'admin123',
 }


}
