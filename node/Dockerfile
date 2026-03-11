FROM node:lts-alpine AS node
FROM yenyen/vs-code:base

# Install nodejs (lts)
COPY --from=node /usr/lib /usr/lib
COPY --from=node /usr/local/lib /usr/local/lib
COPY --from=node /usr/local/include /usr/local/include
COPY --from=node /usr/local/bin /usr/local/bin

# Install strip
RUN apk add --no-cache binutils

# Install global npm packages
RUN npm install -g npm typescript nodemon

# Alias for npm, npm run, npm start, npm install, npm update, npm outdated
RUN cat <<EOF >> /root/.zshrc
alias n='npm'
alias r='npm run'
alias s='npm start'
alias i='npm install'
alias u='npm update'
alias o='npm outdated'
alias a='npm audit'
EOF