FROM python:3.7.3-stretch

WORKDIR /app

COPY app.py /app/

RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir -r requirements.txt
# RUN pip install Flask==2.0.1

EXPOSE 80

CMD ["python", "app.py"]
