if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/EvamariaTG/EvaMaria.git /moviecounter007
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /moviecounter007
fi
cd /moviecounter007
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
