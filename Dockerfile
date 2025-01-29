FROM my-webos-sdk

COPY entrypoint.sh profile.xml ./

# jq for quickly parsing the TV name from the API endpoint
RUN apt update && apt install jq -y && rm -rf /var/lib/apt/lists/* && rm -rf /var/cache/apt/*
RUN chown developer:developer entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "/home/developer/entrypoint.sh" ]
