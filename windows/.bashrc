
/c/Windows/System32/chcp.com 65001 > /dev/null 2>&1

eval "$(starship init bash)"

if [ -t 1 ]; then
exec zsh
fi