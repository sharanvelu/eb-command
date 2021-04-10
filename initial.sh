echo -e "Begin Transaction..."
# Alias Files 
echo -e "$(curl -fsSL https://raw.githubusercontent.com/sharanvelu/eb-command/master/.sharan-own-aliases)" >> ~/.sharan_own_aliases
echo -e "$(curl -fsSL https://raw.githubusercontent.com/sharanvelu/eb-command/master/.sharan-bash-aliases)" >> ~/.sharan_bash_aliases

if ! grep -q ". ~/.sharan_bash_aliases" ~/.bashrc; then
	echo ". ~/.sharan_bash_aliases" >> ~/.bashrc
fi
if ! grep -q ". ~/.sharan_own_aliases" ~/.bashrc; then
	echo ". ~/.sharan_own_aliases" >> ~/.bashrc
fi

source ~/.bashrc

sh -c "source ~/.bashrc"

echo -e "\nDone\n"