FROM ghcr.io/mike-seagull/gitpod-images:base

RUN brew install ed && printf '$-1i\nplugins+=(pyenv pip python)\n.\nw\n' | ed -s ~/.zshrc
RUN brew install pyinvoke
# workaround for conditional copy of python-version file
COPY README.md ./.python-version* ./
RUN if [ -f ".python-version" ]; then pyenv install $(cat .python-version); fi
