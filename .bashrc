#
# ~/.bashrc
#
export TERMINAL=kitty

export JENKINS_USER_ID='adminuser'
export JENKINS_URL='http://jenkins.internal.kuelling-sh.com'
export JENKINS_API_TOKEN='119abc33b951e600a4b457462e3e45244c' # Preferred for security
export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
# Alternatively, you can use JENKINS_PASSWORD
# export JENKINS_PASSWORD='your_jenkins_password'


/home/arch/.config/autostart/scripts/main.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sshk="kitten ssh"
PS1='[\u@\h \W]\$ '
