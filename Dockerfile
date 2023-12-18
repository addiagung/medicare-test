FROM python:3.8

WORKDIR /app

COPY ./app

RUN /bin/bash-c "source venv/bin/activate"

RUN pip install Flask numpy Pillow pandas tensorflow

EXPOSE 5000

ENV FLASK_APP=app.py

CMD ["flask", "run", "--host=0.0.0.0"]
