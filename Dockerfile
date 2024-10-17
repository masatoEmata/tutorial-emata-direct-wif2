# Python 3.9 の公式イメージをベースにします
FROM python:3.9

# 作業ディレクトリを設定
WORKDIR /app

# 必要なパッケージをインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションのソースコードをコピー
COPY . .

# FastAPI アプリケーションを起動
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
