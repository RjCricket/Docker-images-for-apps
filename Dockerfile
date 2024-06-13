# Building an ubuntu base image
FROM ubuntu

# Setting up a working directory 
WORKDIR /app

# copying from host to container directory
COPY  requirements.txt /app
COPY myproject /app

# running all these commands
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install -r requirements.txt --break-system-packages && \
    cd myproject
    

# Default entry point executable
ENTRYPOINT["python3"]

# executing the starting command
CMD [ "manage.py","runserver","0.0.0.0:5000" ]
