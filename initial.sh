git clone https://github.com/sharanvelu/eb-command.git ~/.sharan/eb-command

echo "${BLUE}Cloning Eb-Command Git Repository...${RESET}"


# Getting ENV variable into the EB instance
sudo chmod 777 /opt/elasticbeanstalk/deployment/env
export $(xargs -a /opt/elasticbeanstalk/deployment/env)

