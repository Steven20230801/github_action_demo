FROM python:3.10-alpine

WORKDIR /app

RUN pip install -r requirements.txt

COPY app.pth /app

ENV PYTHONPATH "${PYTHONPATH}:/app"

CMD ["python", "app.py"]