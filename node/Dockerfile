FROM yenyen/vs-code:base

# Install nodejs (lts)
RUN apk add --no-cache nodejs npm --repository=https://dl-cdn.alpinelinux.org/alpine/edge/main

# Install strip
RUN apk add --no-cache binutils

# Install global npm packages
RUN npm install -g npm typescript

# Alias for npm, npm run, npm start, npm install, npm update, npm outdated
RUN echo "alias n='npm'" >> /root/.zshrc & echo "alias r='npm run'" >> /root/.zshrc & echo "alias s='npm start'" >> /root/.zshrc & echo "alias i='npm install'" >> /root/.zshrc & echo "alias u='npm update'" >> /root/.zshrc & echo "alias o='npm outdated'" >> /root/.zshrc