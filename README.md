# rustdesk-server
RustDesk Server Program

使用指南：
1、git拉取仓库
```
git clone https://githubfast.com/kimikkorow/rustdesk-server.git
```

2、前往[Action](https://github.com/kimikkorow/rustdesk-server/actions/workflows/data.yaml)下载最新构建的可执行文件: rustdesk-data -->rustdesk-data.tar.gz 

解压后可以得到 hbbs&hbbr 可执行文件

3、替换掉第一步拉取的仓库 ./docker/sever 目录中的 hbbs 和 hbbr 文件

4、cd 到 ./docker/sever 目录，保持目录结构不变，运行 docker-compose up -d 即可构建镜像并运行

5、后续更新只需替换 hbbs 和 hbbr 即可，请勿删除容器运行时生成的其他文件
