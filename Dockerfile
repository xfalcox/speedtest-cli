FROM alpine

RUN wget -O speedtest.tar.gz https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-x86_64-linux.tgz && \
  tar xf speedtest.tar.gz && \
  rm speedtest.tar.gz

ENTRYPOINT ["/speedtest", "--accept-license"]