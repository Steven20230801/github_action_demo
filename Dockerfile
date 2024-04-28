FROM python:3.10-alpine

# 設置工作目錄
WORKDIR /app

# 跳到/app目錄
RUN cd /app

# 複製所有檔案到容器中
COPY . /app

# 列印出目前的目錄結構
RUN ls -al

RUN pip install -r requirements.txt

# 創建app.pth檔案, 內容為/app
RUN echo "/app" > app.pth

COPY app.pth /app


ENV PYTHONPATH "${PYTHONPATH}:/app"

CMD ["python", "app.py"]