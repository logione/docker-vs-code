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
RUN echo "alias n='npm'" >> /root/.zshrc & echo "alias r='npm run'" >> /root/.zshrc & echo "alias s='npm start'" >> /root/.zshrc & echo "alias i='npm install'" >> /root/.zshrc & echo "alias u='npm update'" >> /root/.zshrc & echo "alias o='npm outdated'" >> /root/.zshrc