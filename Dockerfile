FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        python3-pip \
        nginx \
        sqlite3 \ 
        build-essential \
        libssl-dev \
        libffi-dev \
        python3-dev \
        python3-venv\
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY requirements.txt ./
# Install, Create and Run virtualenv 
RUN pip3 install virtualenv 
RUN pyvenv /appenv
RUN . /appenv/bin/activate; pip install -r requirements.txt


#RUN 
COPY . .
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
COPY nginx-site.conf /etc/nginx/sites-available/default
COPY home.html /usr/share/nginx/html

# Define working directory.
#WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

EXPOSE 80

#EXPOSE 8000
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

