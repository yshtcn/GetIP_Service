## GetIP_Service

### 项目简介
GetIP_Service 是一个通过Docker容器运行的服务，用于获取客户端IP地址，并返回相应的结果。此项目包含一个主要的Python脚本文件和相关的配置文件。

### 文件结构
- `Dockerfile`: 用于构建Docker镜像的指令文件。
- `README.md`: 项目的简介和基本使用说明。
- `app.py`: 项目的主程序文件，实现IP获取功能。
- `getip_service_DockerBuilder.ps1`: PowerShell脚本，用于构建和运行Docker镜像。
- `requirements.txt`: 列出了项目所需的Python依赖包。

### 安装步骤
1. 克隆仓库:
   ```bash
   git clone https://github.com/yshtcn/GetIP_Service.git
   cd GetIP_Service
   ```
2. 构建Docker镜像:
   ```bash
   docker build -t getip_service .
   ```
3. 运行Docker容器:
   ```bash
   docker run -d -p 80:80 getip_service
   ```

### 使用方法
运行容器后，服务将在端口80上监听。通过访问服务的IP地址，您可以获取到客户端的IP信息。例如:
```bash
curl http://<your-server-ip>
```
此命令将返回客户端的IP地址。

### 主要功能
- 获取客户端IP地址并返回。
- 支持通过Docker容器进行部署。

### 依赖项
- Python 3.x
- Flask (在`requirements.txt`中指定)

### 贡献
如果您有任何改进或问题，请提交Issue或Pull Request。

### 许可证
此项目使用MIT许可证，详情请参见LICENSE文件。
