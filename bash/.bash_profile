# Custom prompts
source ~/.bash_prompt

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dev="cd ~/Developer"
alias apps="cd /Applications"
alias g="git"
alias bp="subl ~/.bash_profile"

# Create a quick note in Vim
function note() {
  dt=`date '+%Y-%m-%d %H:%M:%S'`
  dt+=".md"
  vim "$dt"
}

# Restart Bluetooth Audio Daemon
# Useful when headphones are stuttering
function killbt() {
  sudo killall bluetoothaudiod
  echo Restarted Bluetooth Audio Daemon. 
}
