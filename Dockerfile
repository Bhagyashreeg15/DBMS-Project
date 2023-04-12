FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirement.txt

COPY . .

CMD ["python", "manage.py", "runserver","--noreload", "0.0.0.0:8000"]
