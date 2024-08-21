# set base image to python 3.7-slim
FROM python:3.7-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# install pipenv
RUN pip install pipenv

# Install any needed packages specified in Pipfile
RUN pipenv install --deploy --ignore-pipfile

# Make port 5000 available outside this container
EXPOSE 5000

# Define entrypoint
ENTRYPOINT ["pipenv", "run", "python", "app.py"]
