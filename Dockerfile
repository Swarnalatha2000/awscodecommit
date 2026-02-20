FROM python:3.12-slim

ARG APP_USER=appuser
RUN useradd -ms /bin/bash ${APP_USER}

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000

USER ${APP_USER}
CMD ["python', "app.py"]
