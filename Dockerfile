# 베이스 이미지
FROM python:3.10

# 작업 디렉토리 생성
WORKDIR /app

# 코드 복사
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Flask 앱 실행
CMD ["python", "app.py"]
