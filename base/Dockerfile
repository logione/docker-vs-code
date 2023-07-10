FROM alpine:3.18

# Install docker
RUN apk add --no-cache docker openrc \
    && rc-update add docker boot

# Install OhMyZSH
RUN apk add --no-cache git zsh \
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install ssh and add copy-ssh.sh
RUN apk add --no-cache openssh-client
COPY copy-ssh.sh /copy-ssh.sh
RUN chmod +x /copy-ssh.sh