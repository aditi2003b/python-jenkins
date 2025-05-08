FROM python:slim

WORKDIR /app

COPY . .

RUN pip install -r reqirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
