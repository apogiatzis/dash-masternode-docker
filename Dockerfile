FROM ubuntu:16.04
COPY scripts/ /usr/local/bin/
RUN chmod +x /usr/local/bin/entry.sh && entry.sh

EXPOSE 9999
EXPOSE 19999