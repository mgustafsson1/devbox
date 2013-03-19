class nodejs {
    $packages = [ 'nodejs', 'nodejs-dev' ]
    package { $packages: 
        ensure => installed,
    }
} 
