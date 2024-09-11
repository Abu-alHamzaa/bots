FROM python-3.10
WORKDIR /app

COPY requirements.txt /app/
RUN pip3 install -r requirements.txt

COPY . /app
CMD flask run -h 0.0.0.0 -p 10000 & python3 main.py -a 2 & python3 mains.py
