echo "This program installs apache2-urils and will ask for a user and password for /etc/nginx/.htpasswd"
read -p "Press enter to continue"

if ! command -v apache2-utils &> /dev/null
then
    sudo apt install apache2-utils
fi
    echo "apache2-utils have already been installed."


echo -e "Whats the user?"
read uservar

echo -e "Whats the password?"
read passwdvar

sudo sh -c "echo -n '$uservar:' >> /etc/nginx/.htpasswd"

sudo sh -c "openssl passwd $passwdvar >> /etc/nginx/.htpasswd"

echo "$uservar with $passwdvar in the file /etc/nginx/.htpasswd has been created."
