# dotfiles

# How to install these dotfiles ->

1. Clone this repository.

  ` git clone --bare git@github.com:varunk122/dotfiles.git $HOME/dotfiles `

2 . Add this alias to .bashrc / .zshrc

  ` alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' `

3. Refresh your current shell or open a new shell 

4. Checkout the actual content form the bare repository to your $HOME

  ` config checkout `


# How to take backup of your dotfiles while installing 

``` 
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```


