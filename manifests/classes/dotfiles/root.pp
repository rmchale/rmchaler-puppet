class dotfiles_root {
# s3config
file {  '/root/.s3cfg' :
   ensure => 'link',
   target => '/etc/puppet/modules/root/dotfiles/s3cfg',
}
}
