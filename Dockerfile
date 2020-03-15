FROM opensuse/tumbleweed:latest

ENV VERSION=2.29.0

RUN zypper install -y git gcc-c++ make wget tar

VOLUME /output
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT [ "/entrypoint.sh" ]