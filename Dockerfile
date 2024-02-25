FROM python:3.10-slim

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /app

COPY backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install gunicorn  

COPY backend/ .
RUN python manage.py collectstatic

EXPOSE 8000
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "drf.wsgi:application"]
