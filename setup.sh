# install pyenv
[ ! -d $HOME/.pyenv ] && git clone https://github.com/pyenv/pyenv.git ~/.pyenv
grep -q PYENV_ROOT $HOME/.bash_profile
[ $? = 0 ] && echo "yes we have PYENV_ROOT" || echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
grep -q -e "export PATH=\"\$PYENV_ROOT" $HOME/.bash_profile
[ $? = 0 ] && echo "yes we have PYENV_ROOT in path" || echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
grep -q "command -v pyenv" $HOME/.bash_profile
[ $? = 0 ] && echo "yes we are testing for pyenv" || $ echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile


# load the file
source ~/.bash_profile