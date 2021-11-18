# Check system's Python

which python
# /usr/bin/python

python --version
# Python 2.7.16

which python3
# /usr/bin/python3

python3 --version
# Python 3.8.2

# Install and configure pyenv

brew install pyenv

cat << 'EOF' >>  ~/.zshrc

# Pyenv

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

EOF

source ~/.zshrc

pyenv versions
# * system

pyenv install 3.9.4
pyenv global 3.9.4

pyenv versions
#   system
# * 3.9.4 (set by /Users/diegooglin/.pyenv/version)

which python
# /Users/diegooglin/.pyenv/shims/python

python --version
Python 3.9.4

# Update pip

pip --version
# pip 20.2.3 from /Users/diegooglin/.pyenv/versions/3.9.4/lib/python3.9/site-packages/pip (python 3.9)

pip install --upgrade pip

pip --version
# pip 21.0.1 from /Users/diegooglin/.pyenv/versions/3.9.4/lib/python3.9/site-packages/pip (python 3.9)

# Install pipenv

pip install pipenv

# Small project

mkdir hello-colors
cd hello-colors

cat << 'EOF' > main.py
#!/usr/bin/env python

import crayons
from pyfiglet import figlet_format

print(crayons.blue(figlet_format('Hi there!'), bold=True))
EOF

cat << 'EOF' > Pipfile
[[source]]
url = "https://pypi.org/simple"
verify_ssl = true

[packages]
crayons = "*"
pyfiglet = "*"

[requires]
python_version = "3.9"

EOF

# Optional find out the system's locale for the LANG variable
locale

LANG="" pipenv install
# …

# Optional set the LANG variable in the profile
cat << 'EOF' >>  ~/.zshrc
# pipenv
export LANG=""
EOF


pipenv check
# Checking PEP 508 requirements...
# Passed!
# Checking installed package safety...
# All good!

# Activates virtual environment
pipenv shell

python main.py
#  _   _ _   _   _                   _
# | | | (_) | |_| |__   ___ _ __ ___| |
# | |_| | | | __| '_ \ / _ \ '__/ _ \ |
# |  _  | | | |_| | | |  __/ | |  __/_|
# |_| |_|_|  \__|_| |_|\___|_|  \___(_)

# Cleanup

pipenv --rm
cd ..
rm -rf hello-colors

