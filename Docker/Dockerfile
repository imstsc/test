FROM alpine:latest  AS test1 
RUN touch file
ENV test1="alpine"

FROM test1 AS test2
RUN cp file file-new
RUN mkdir /opt/test
LABEL version="1.0.0"

FROM test2 AS test2
LABEL description="test image"
RUN mv file-new /opt/test
ENTRYPOINT ["cd", "/opt/test"]