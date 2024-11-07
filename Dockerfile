# 使用Python官方映像 Bullseye版本 約334MB、slim版本 約43MB、Alpine版 約18MB，Distroless版本 約20MB
FROM python:3.9-slim

# 設定工作目錄
WORKDIR /app

# 複製requirements.txt並安裝依賴
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN mkdir -p /app/log/
RUN chmod 755 /app/log/

# 複製專案代碼
COPY . .

# 設定容器啟動命令
CMD ["python3", "chua_ok.py"]
