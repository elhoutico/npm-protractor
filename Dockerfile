ARG NODE_VERSION=12.13.1
FROM node:${NODE_VERSION}

RUN apt-get -y update && \
    apt-get --fix-broken -y install && \
    apt-get install -y default-jre && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt install ./google-chrome-stable_current_amd64.deb -y && \
    rm google-chrome-stable_current_amd64.deb && \
    rm -rf /var/lib/apt/lists/*


ENTRYPOINT ["/bin/sh"]
