FROM yenyen/vs-code:base

# Install Google Cloud SDK
RUN apk add --no-cache bash python3 curl \
    && curl -sSL https://sdk.cloud.google.com > /tmp/gcl \
    && bash /tmp/gcl --install-dir=~/gcloud --disable-prompts
ENV PATH=$PATH:/root/gcloud/google-cloud-sdk/bin