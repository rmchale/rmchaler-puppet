import "classes/*"   

node default { include ryan 
notify {"default node!": }
}

node 'li168-173' {
  notify {"linode": }

  include s3

}

