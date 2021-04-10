rand_folder = openssl rand -hex 12

git clone https://github.com/sharanvelu/eb-command.git ~/.sharan/{$rand_folder}-eb-command

echo ""
echo "Cloned Eb-Command Git Repository..."
echo ""

cp ~/.sharan/{$rand_folder}-eb-command/.sharan-bash-aliases ~/.sharan_bash_aliases
cp ~/.sharan/{$rand_folder}-eb-command/.sharan-own-aliases ~/.sharan_own_aliases
