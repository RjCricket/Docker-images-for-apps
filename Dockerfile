FROM ubuntu

WORKDIR /app

COPY  requirements.txt /app
COPY myproject /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install -r requirements.txt && \
    

ENTRYPOINT [ "python3" ]
CMD [ "myproject/manage.py","runserver","0.0.0.0:8000" ]
