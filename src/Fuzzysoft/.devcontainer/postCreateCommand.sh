echo User: $(whoami)
echo Directory: $(pwd)
echo Adding aliases ll, dir, la, l

echo alias ll=\'ls -alF\' >~/.bash_aliases
echo alias dir=\'ls -alF\' >>~/.bash_aliases
echo alias la=\'ls -A\' >>~/.bash_aliases
echo alias l=\'ls -CF\' >>~/.bash_aliases

# Instead of doing this (we need another way to get the env variable to persist in the container)
# we will just use the appCredentials.json (NOT CHECKED IN) directly in the root of the project
# and set the the env variable in .env.local (ALSO NOT CHECKED IN)
# mkdir -p ~/.config/gcloud/
# ls -al ~/.config
# cp .appCredentials.json ~/.config/gcloud/application_default_credentials.json
# export GOOGLE_APPLICATION_CREDENTIALS=~/.config/gcloud/application_default_credentials.json
# echo $GOOGLE_APPLICATION_CREDENTIALS