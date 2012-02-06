#getting submodules
git submodule init
git submodule update
git submodule foreach git pull origin master
#sudo brew install autojump
#sudo brew install source-highlight
ohmyzshf=$(pwd)

SYMLINK="ln -nfs"

$SYMLINK $ohmyzshf/zshrc $HOME/.zshrc
