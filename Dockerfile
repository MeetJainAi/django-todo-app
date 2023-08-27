#FROM python:3
#RUN pip install django==3.2

#COPY . .

#RUN python manahe.py migrate

#CMD ["python","manage.py","runserver","0.0.0.0:8080"]

# Use an official Python runtime as a parent image
FROM python:3

# Set environment variables (modify as needed)
# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files in the current directory (including Django files) into the container at /app
COPY . /app/

# Expose the port that the app will run on
EXPOSE 8000

# Run the command to start the Django app (adjust as needed)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

