# 使用官方的Python基础镜像
FROM python:3.10

# 设置工作目录
WORKDIR /app

# 创建并激活Python虚拟环境
RUN python -m venv venv
ENV PATH="/app/venv/bin:$PATH"

# 从git拉取代码
RUN git clone http://space:58b2b24aad3b83308965dd65ba149152@github.com/xiaosheng-space/z-auto.git  /app/z-auto/

# 更新pip
RUN python -m pip install --upgrade pip  -i http://mirrors.aliyun.com/pypi/simple/  --trusted-host mirrors.aliyun.com

# 安装requirements.txt中的依赖
RUN pip install  -r  z-auto/requirements.txt  -i http://mirrors.aliyun.com/pypi/simple/  --trusted-host mirrors.aliyun.com

# 设置启动命令
# CMD ["python", "your_script.py"]

