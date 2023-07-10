FROM yenyen/vs-code:node

# Install Google Cloud SDK
RUN apk add --no-cache bash python3 curl \
    && curl -sSL https://sdk.cloud.google.com > /tmp/gcl \
    && bash /tmp/gcl --install-dir=~/gcloud --disable-prompts
ENV PATH=$PATH:/root/gcloud/google-cloud-sdk/bin

# Install firebase-tools
RUN npm install -g firebase-tools