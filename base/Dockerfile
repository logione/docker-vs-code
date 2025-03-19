FROM alpine:3.21

# Install docker
RUN apk add --no-cache docker docker-compose openrc \
    && rc-update add docker boot

# Install OhMyZSH
RUN apk add --no-cache git zsh curl \
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install TMUX
RUN apk add --no-cache tmux
COPY tmux.conf /root/.tmux.conf

# Install ssh and add copy-ssh.sh
RUN apk add --no-cache openssh-client
COPY copy-ssh.sh /copy-ssh.sh
RUN chmod +x /copy-ssh.sh