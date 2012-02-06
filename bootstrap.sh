#getting submodules
git submodule init
git submodule update
#sudo brew install autojump
#sudo brew install source-highlight
ohmyzshf=$(pwd)

SYMLINK="ln -fs"

$SYMLINK $ohmyzshf/zshrc $HOME/.zshrc
$SYMLINK $ohmyzshf $HOME/.oh-my-zsh
