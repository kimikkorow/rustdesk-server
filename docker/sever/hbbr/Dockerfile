# FROM ubuntu:22.04
# 国内用下面的
FROM kimikkorow/ubuntu22.04

ENV TZ=Asia/Shanghai

ADD . /app

RUN cd /app && sh init.sh

WORKDIR /app/

CMD ["./hbbr"] 