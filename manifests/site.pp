import "classes/*"   
import "classes/dotfiles/*"

node default { include ryan 
notify {"default node!": }
}

node 'li168-173' {
  notify {"linode": }

  include dotfiles_root

}

