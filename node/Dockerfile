FROM yenyen/vs-code:base

# Install nodejs (lts) and strip
RUN apk add --no-cache nodejs npm binutils

# Install global npm packages
RUN npm install -g npm nodemon typescript

# Alias for npm, npm run, npm start, npm install, npm update, npm outdated
RUN echo "alias n='npm'" >> /root/.zshrc & echo "alias r='npm run'" >> /root/.zshrc & echo "alias s='npm start'" >> /root/.zshrc & echo "alias i='npm install'" >> /root/.zshrc & echo "alias u='npm update'" >> /root/.zshrc & echo "alias o='npm outdated'" >> /root/.zshrc