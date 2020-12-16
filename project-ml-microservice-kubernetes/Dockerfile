FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/
#COPY . nlib /app/

# Install packages from requirements.txt
hadolint ignore=DL3013
####temporary, to save space
RUN pip3 install --no-cache-dir --upgrade pip &&\
    pip3 install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

# Expose port 80
EXPOSE 8001

# Run app.py at container launch
CMD ["python", "app.py"]
