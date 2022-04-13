FROM python3.9
WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt
COPY service/ /app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]