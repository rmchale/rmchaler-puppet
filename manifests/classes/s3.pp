class s3 {
# s3config
file {  '/root/.s3cfg' :
   ensure => 'link',
   target => '/etc/puppet/modules/s3/s3cfg',
}
}
