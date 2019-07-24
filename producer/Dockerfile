FROM python:3.7-slim

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD AWS_ACCESS_KEY_ID=x AWS_SECRET_ACCESS_KEY=x python3 sample_wordputter.py --region eu-central-1 -s shit_and_stuff -w terraform -w docker -w kinesis -p 3

