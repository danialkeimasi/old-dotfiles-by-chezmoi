#!/bin/sh
echo "Installing poetry ..."
read -p "Continue? [y/N]: " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 0

curl -sSL https://install.python-poetry.org | python3 -
