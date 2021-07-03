source ~/.bash_profile
source ~/.profile
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
    else
    color_prompt=
    fi
fi

#debian_chroot="~"
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]impulse\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \W\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
   alias dir='dir --color=auto'
   alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

[[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm"

source /opt/ros/melodic/setup.bash

source ~/ros/rotors_simulator_ws/devel/setup.bash
#source ~/ros/tutorial_ws/devel/setup.bash

#source ~/ros/rotors_ws/devel/setup.bash

#source ~/ros/new_ws/devel/setup.bash

#source ~/ros/project_ws/devel/setup.bash

#source ~/ros/landing_ws/devel/setup.bash

#source ~/ros/iarc_ws/devel/setup.bash

#export GAZEBO_PLUGIN_PATH=~/ros/ros_ws/src/Firmware/build/px4_sitl_default/build_gazebo:/opt/ros/melodic/lib:$GAZEBO_PLUGIN_PATH

#export HUSKY_GAZEBO_DESCRIPTION=$(rospack find husky_gazebo)/urdf/description.gazebo.xacro

#export GAZEBO_MODEL_PATH=/home/varun/ros/ros_ws/src/Firmware/Tools/sitl_gazebo/models:/home/varun/ros/iarc_ws/src/iarc_simulation_tools/iarc_simulation_tools/models/:$GAZEBO_MODEL_PATH
#source ~/ros/rotors_ws/devel/setup.bash
#source ~/ros/asv_ws/devel/setup.bash
#source ~/ros/pet_ws/devel/setup.bash

#source ~/ros/ros_ws/devel/setup.bash
#source ~/ros/ros_ws/src/Firmware/Tools/setup_gazebo.bash ~/ros/ros_ws/src/Firmware ~/ros/ros_ws/src/Firmware/build/px4_sitl_default > /dev/null
#export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/ros/ros_ws/src/Firmware
#export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/ros/ros_ws/src/Firmware/Tools/sitl_gazebo

# Install Ruby Gems to ~/gems
# Install Ruby Gems to ~/gems
#export GEM_HOME="$HOME/gems"
#export PATH="$HOME/gems/bin:$PATH"


# Install Ruby Gems to ~/gems
#export GEM_HOME="$HOME/gems"
#export PATH="$HOME/gems/bin:$PATH"


#cat ~/.cache/wal/sequences
    #(pywal)
#export LC_ALL="en_US.UTF-8"
 

#neofetch > /dev/null

#function _update_ps1() {
 #   PS1=$(powerline-shell $?)
#}

#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
 #   PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

export EDITOR=vim


#git bare repository for managing dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

source ~/ros/mpc_ws/devel/setup.bash
source ~/ros/tracking_ws/devel/setup.bash


# export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/ros/rotors_simulator_ws/src/rotors_simulator/rotors_gazebo

#source /home/varun/alacritty/extra/completions/alacritty.bash
#export PATH=$PATH:$HOME/ros/drdo_ws/src/ardupilot/Tools/autotest
#export PATH=/usr/lib/ccache:$PATH
#source ~/ros/drdo_ws/devel/setup.bash
#source ~/ros/catkin_ws/devel/setup.bash
#source ~/ros/rotors_ws/devel/setup.bash
#source ~/ros/planning_ws/devel/setup.bash
#source ~/ros/varun_ws/devel/setup.bash
export PATH=$PATH:/home/varun/Documents/qgc
alias qgc=QGroundControl.AppImage 

#source ~/ros/firmware_ws/src/PX4-Autopilot/Tools/setup_gazebo.bash ~/ros/firmware_ws/src/PX4-Autopilot ~/ros/firmware_ws/src/PX4-Autopilot/build/px4_sitl_default > /dev/null
#export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/ros/firmware_ws/src/PX4-Autopilot            
#export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/ros/firmware_ws/src/PX4-Autopilot/Tools/sitl_gazebo


#starship

eval "$(starship init bash)"
