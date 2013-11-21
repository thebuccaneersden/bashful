

### ################################## ###
###                                    ###
### THIS IS WHERE THE MAGIC HAPPENS :D ###
###  -thebuccaneersden                 ###
### ################################## ###



# Add XAMPP bin to PATH
PATH=/opt/xampp/bin:~/bin/:$PATH



# ################ #
# Editor of choice #
# ################ #
#EDITOR='mate -w'
EDITOR='sublime -w -n'



# ############ #
# Bash Aliases #
# ############ #
# Commands
alias l='ls -laG'
alias srkilltunnel='~/bin/srkilltunnel.sh'
# Todo
alias t='todo.sh'
alias tlj-todos='todo.sh ls +tlj'
alias work-todos='todo.sh ls +playerize'
# Path shortcuts
alias projects='cd ~/Projects/'



# ################ #
# GIT Autocomplete #
# ################ #
source ~/.bashful/git-stuff/git-completion.bash



# ############### #
# PHP Server here #
# ############### #
function serve() {
	if [ -z "$@" ]; then
		# Default port
		php -S localhost:8080
	else
		# Use the port passed an argument
		php -S localhost:"$@" 
	fi
}



# ######################### #
# SSH Hostname Autocomplete #
# ######################### #
function _ssh_completion() {
   perl -ne 'print "$1 " if /^Host (.+)$/' ~/.ssh/config
   #complete -o default -o nospace -W "$(awk '/^Host / {print $2}' < $HOME/.ssh/config)" scp sftp SSH
   #awk '/^Host / {print $2}' < $HOME/.ssh/config
}
complete -W "$(_ssh_completion)" ssh



