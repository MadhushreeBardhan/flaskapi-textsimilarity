FROM python:3
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip3 install --no cache-dir -r requirements.txt
COPY . .
RUN pip install ./en_core_web_sm-2.0.0.tar.gz
CMD ["python3","app.py "]