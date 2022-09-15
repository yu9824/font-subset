# Base image
FROM python:3.8.14

# Set timezone
ENV TZ="Asia/Tokyo"

# Install packages
RUN apt-get update && apt-get install -y vim

# Add and change user
ARG user_name
RUN useradd -m ${user_name}
USER ${user_name}

# Change directory
ARG dir_name
ARG user_home_dir=/home/${user_name}
WORKDIR ${user_home_dir}/${dir_name}/

# Install python tools to subset and compress fonts
RUN pip install --upgrade pip && pip install fonttools brotli

# To use `pyftsubset` command
ENV PATH $PATH:~/.local/bin
