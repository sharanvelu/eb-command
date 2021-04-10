echo -e "\nBegin Transaction..."
# Alias Files 
echo -e "$(curl -fsSL https://raw.githubusercontent.com/sharanvelu/eb-command/master/.sharan-own-aliases)" >> ~/.sharan_own_aliases
echo -e "$(curl -fsSL https://raw.githubusercontent.com/sharanvelu/eb-command/master/.sharan-bash-aliases)" >> ~/.sharan_bash_aliases

if ! grep -q ". ~/.sharan_bash_aliases" ~/.bashrc; then
	echo ". ~/.sharan_bash_aliases" >> ~/.bashrc
fi
if ! grep -q ". ~/.sharan_own_aliases" ~/.bashrc; then
	echo ". ~/.sharan_own_aliases" >> ~/.bashrc
fi

sudo -H -u ec2-user bash -c 'sudo chmod 777 /opt/elasticbeanstalk/deployment/env'
sudo -H -u ec2-user bash -c 'source ~/.bashrc'

source ~/.bashrc

echo -e "\nDone"