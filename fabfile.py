from fabric.api import local


def _installdependencies():
    local("sudo brew install autojump")

    local("sudo brew install source-highlight")

def _symlink():
    currendir = local('echo $PWD',capture =True)
    local("ln -sF " + currendir+"/zshrc $HOME/.zshrc")

def updatesubmodules():
    local("git submodule foreach git checkout master")
    local("git submodule foreach git pull")


def install():
    local("git submodule init")
    local("git submodule update")
    updatesubmodules()
    _installdependencies()
    _symlink()
