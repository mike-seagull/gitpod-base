FROM gitpod/workspace-full:latest
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.1/zsh-in-docker.sh)" -- \
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
    -p https://github.com/zsh-users/zsh-completions
RUN echo "if [ -t 1 ]; then" >> ~/.bashrc
RUN echo "exec zsh" >> ~/.bashrc
RUN echo "fi" >> ~/.bashrc
