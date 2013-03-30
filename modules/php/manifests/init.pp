class php {

    exec { 'add_repo':
        command => '/usr/bin/add-apt-repository ppa:ondrej/php5'
    }

    exec { 'update_repo':
        command => '/usr/bin/apt-get update',
        require => Exec['add_repo']
    }

    $packages = ['php5', 'php5-mcrypt', 'php-xml-parser', 'php5-xdebug', 'phpunit', 'php5-mysql', 'php5-cli', 'php5-curl', 'php5-fpm', 'libssh2-1-dev']
    package { $packages:
        ensure => latest,
        require => Exec['update_repo'],
    }

    file { 'php.ini':
        path => '/etc/php5/fpm/php.ini',
        ensure => file,
        owner => root,
        group => root,
        source => 'puppet:///modules/php/php.ini',
        require => Package['php5-fpm'],
    }
    
    service { 'apache2':
        ensure => stopped,
        enable => false,
    }
}
