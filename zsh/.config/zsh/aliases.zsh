alias please='sudo'

alias vi="/usr/bin/vim"
alias svi='sudo vi'
alias vim='nvim'
alias edit='nvim'

## in memoriam of Terry A. Davis
# -Taken from TempleOS source code/repository
godsWords() {
if [[ -z "$1" ]]; then
  echo "$(shuf -n 32 /usr/share/dict/words --random-source=/dev/urandom | tr '\n' ' ' | fold -s)"
else
  echo "$(shuf -n $1 /usr/share/dict/words --random-source=/dev/urandom | tr '\n' ' ' | fold -w 64 -s)"
fi
}

alias godsWords10="godsWords 10"
alias godsWords64="godsWords 64"
alias godsWords100="godsWords 100"

## network stuff
alias ping='ping -c 5'
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'


alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist

## System stuff
alias meminfo='free -m -l -t'
 
# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
# Get server cpu info ##
alias cpuinfo='lscpu'
 
# get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
