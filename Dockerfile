FROM python:3.9-slim

WORKDIR /app 

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY .env .

COPY src/ ./src  

CMD ["python", "src/__init__.py"]