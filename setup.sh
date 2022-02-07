#/bin/bash

# Homebrew 
sudo chown -R ${whoami}:admin /usr/local
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

echo "export PATH='usr/local/bin:$PATH'\n" >> ~/.bashrc
source ~/.bashrc

dotfiles=${pwd}

function symbolizeLink{
    destination="${HOME}/${1}"
    dateTime=$(date +%Y-%m-%d-%H%M)

    if [ -h ~/${1} ]; then
        # Remove symlink
        echo "Symlink exists. Removing: ${destination}"
        rm ${destination}

    elif [ -f "${destination}" ]; then
        # Backup file
        echo "File exists. Backing up: ${destination}"
        mv ${destination}{,.${dateTime}}

    elif [ -d "${destination}" ]; then
        # Backup Dir
        echo "Dir exists. Backing up: ${destination}"
        mv ${destination}{,.${dateTime}}
    fi

    echo "Symlinking: ${destination}"
    ln -s ${dotfiles}/${1} ${destination}
}


symbolizeLink .bash_profile
symbolizeLink .bashrc
symbolizeLink .tmux.conf
symbolizeLink .vimrc


