# 搭建yapi管理平台

### 宿主机
基于Ubuntu 18.04 amd64

### 依赖工具
* Docker 
    1. 安装教程 https://docs.docker.com/install/linux/docker-ce/ubuntu/
    2. 增加国内镜像，新建配置文件
        ```shell
        sudo touch /etc/docker/daemon.json
        ```
    3. 加入下列内容
        ```json
        {
            "registry-mirrors": [
                "https://dockerhub.azk8s.cn",
                "https://reg-mirror.qiniu.com"
            ]
        }
        ```
    
    4. 重启docker服务
        ```shell
        sudo service docker restart
        ```
* Docker Compose 
    1. 安装教程 https://docs.docker.com/compose/install/

* Python
* Wget

### 构建步骤
* 下载最新版本，`可能需要富强才能连接github API获取最新版本号`
```bash
./download.sh
```

* 启动构建
```bash
sudo docker-compose up -d 
```

* 首次运行需要初始化数据库
```bash
./exec 'cd /api/vendors && npm run install-server'
```

* 启动后，访问 http://127.0.0.1:8888
    * 默认账户: `admin@admin.com`
    * 默认密码: `ymfe.org`