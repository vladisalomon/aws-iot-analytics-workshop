FROM alpine
FROM python:3.7
# Get boto3 for S3 and other libraries
RUN pip3 install --upgrade pip
RUN pip3 install boto3
RUN pip3 install urllib3
RUN pip3 install requests
RUN pip3 install RateLimiter
RUN pip3 install split
RUN pip3 install chop

# Move scripts over
ADD load_data.py load_data.py
# Start python script
ENTRYPOINT ["python3", "load_data.py"]