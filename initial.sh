git clone https://github.com/sharanvelu/eb-command.git ~/.sharan/eb-command

echo ""
echo "Cloning Eb-Command Git Repository..."

# Getting ENV variable into the EB instance
echo ""
echo "Getting ENV Variables"
echo ""
cd /var/app/current
sudo chmod 777 /opt/elasticbeanstalk/deployment/env
export $(xargs -a /opt/elasticbeanstalk/deployment/env)
echo "Done exporting"
