# Convenience component for installing pkg.dmg packages.
define pkg_deploy($sourcedir = false)
{
  $sourcedir_real = $sourcedir ? {
    false => "http://puppet.reductivelabs.foo/osx/pkgs/apps",
    default => $sourcedir
  }
  package { $name:
    ensure => installed,
    provider => pkgdmg,
    source => "$sourcedir_real/$name"
  }
}


class ryan {
  case $operatingsystem {
    Darwin: {
      pkg_deploy { "Sublime%20Text%202.0.1.dmg":
        sourcedir => "http://c758482.r82.cf2.rackcdn.com/",
        alias => sublime 
      }
    }
  }
}
