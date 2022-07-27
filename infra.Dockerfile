FROM ghcr.io/mike-seagull/gitpod-images:base

RUN brew install terraform
RUN brew install ansible

RUN brew install ed && printf '$-1i\nplugins+=(ansible terraform)\n.\nw\n' | ed -s ~/.zshrc
