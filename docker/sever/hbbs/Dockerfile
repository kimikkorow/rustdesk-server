# FROM ubuntu:20.04
# 国内用下面的
FROM kimikkorow/ubuntu20.04

ENV TZ=Asia/Shanghai

ADD . /app

RUN cd /app && sh init.sh

WORKDIR /app/

CMD ["./hbbs"] 
