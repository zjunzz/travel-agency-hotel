FROM python:2.7

RUN pip install flask && \
    pip install flask_cors

RUN mkdir -p /PythonApp

COPY hotel.py /PythonApp

WORKDIR /PythonApp

EXPOSE 5000

CMD ["python", "hotel.py"]
