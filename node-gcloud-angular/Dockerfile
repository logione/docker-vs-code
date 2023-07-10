FROM yenyen/vs-code:node-gcloud

# Install Chromium
RUN apk add --no-cache chromium
ENV CHROME_BIN=/usr/bin/chromium-browser

# Install angular
RUN npm install -g npm @angular/cli