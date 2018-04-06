if [ ! -e "${BASH_IT}/plugins/enabled/direnv.plugin.bash" ] && [ ! -e "${BASH_IT}/plugins/enabled/*${BASH_IT_LOAD_PRIORITY_SEPARATOR}direnv.plugin.bash" ];
then
  # if user has installed direnv plugin, skip this...

  if ! command -v direnv &>/dev/null
  then
    # if direnv command isn't installed show warning and stop
    echo "Please install direnv"
    if [ $(uname) = "Darwin" ]
    then
      echo "  $ brew install direnv"
      echo ""
    fi

    return 1
  fi

  bash-it enable plugin direnv &>/dev/null
fi
