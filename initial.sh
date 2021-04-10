git clone https://github.com/sharanvelu/eb-command.git ~/.sharan/eb-command

echo -e "\nCloned Eb-Command Git Repository...\n"

cp ~/.sharan/eb-command/.sharan-bash-aliases ~/.sharan_bash_aliases
cp ~/.sharan/eb-command/.sharan-own-aliases ~/.sharan_own_aliases

echo ". ~/.sharan_bash_aliases" >> ~/.bashrc
echo ". ~/.sharan_own_aliases" >> ~/.bashrc

source ~/.bashrc

envvar
