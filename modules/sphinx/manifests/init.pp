class sphinx {
    $packages = [ 'sphinxsearch', 'sphinxbase-utils' ]
    package { $packages:
        ensure => installed,
    }

    file { 'sphinx.conf':
        path => '/etc/sphinxsearch/sphinx.conf',
        ensure => file,
        owner => root,
        group => root,
        source => 'puppet:///modules/sphinx/sphinx.conf',
        require => Package['sphinxsearch'],
    }
}

