#Rancher VM

Simple Rancher environment manager, usage inspired by trobrock/chefvm

## Installation

    # ranchervm will create a symlink between (~/.ranchervm -> ~/.rancher ), make sure you have no ~/.rancher directory before installing
    mv ~/.rancher ~/.rancher.bak
    git clone http://github.com/nikitux/ranchervm.git ~/.ranchervm
    ~/.ranchervm/bin/ranchervm init # Follow these instruction
    
After following these instructions reload your terminal, then

    ranchervm copy example production
    ranchervm edit production 

