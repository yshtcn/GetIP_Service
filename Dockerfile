# 使用官方的 Python 3.11 镜像作为基础镜像
FROM python:3.11-slim


# 设置工作目录
WORKDIR /app

# 复制当前目录中的内容到工作目录
COPY . /app

# 安装Flask
RUN pip install flask

# 暴露容器的80端口
EXPOSE 80

# 运行Flask应用
CMD ["python", "app.py"]

