from fabric.api import local,lcd


def _installdependenciesosx():
    local("sudo brew install autojump")
    local("sudo brew install source-highlight")

def _installdependencieslinux():
    local("sudo git clone https://github.com/joelthelion/autojump.git /tmp/autojump")
    local("sudo chmod +x /tmp/autojump/install.sh")
    with lcd("/tmp/autojump/"):
        local("./install.sh")
        local("cp autojump.zsh /etc/profle.d/")

    local("sudo apt-get install source-highlight")

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
    osval = local("uname -s", capture=True)
    if osval=="Darwin":
        _installdependenciesosx()
    elif osval == "Linux":
        _installdependencieslinux()
    else:
        raise Exception , 'unknow os type'
    _symlink()

