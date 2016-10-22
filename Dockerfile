FROM microsoft/dotnet:1.0.0-preview2-sdk

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      nano \
 && rm -rf /var/lib/apt/lists/*

ADD ./run.sh /opt/

ENV DEVPOD_REPO https://github.com/moander/devpod-aspnet-example-slim

CMD [ "/opt/run.sh" ]

