class tools {
    $packages = ['python-software-properties', 'curl']
    
    package { $packages:
        ensure => installed,
    }
}
