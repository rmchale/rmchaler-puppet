class sudo { file { "/etc/sudoers": owner => "root", group => "wheel", mode => 440, } }
