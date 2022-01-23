FROM gitpod/workspace-full:latest
RUN brew install terraform
RUN brew install ansible
RUN brew install gibo
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)" -- \
    -t fishy \
    -p ubuntu \
    -p git \
    -p npm -p nvm \
    -p pyenv -p pip -p python \
    -p docker -p docker-compose \ 
    -p golang \
    -p ansible \
    -p terraform \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions \
    -a 'export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#757575"'
RUN echo "if [ -t 1 ]; then" >> ~/.bashrc
RUN echo "exec zsh" >> ~/.bashrc
RUN echo "fi" >> ~/.bashrc
