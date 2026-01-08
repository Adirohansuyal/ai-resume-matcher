FROM python:3.10-slim

#set the working directory in the container

WORKDIR /app
# Copy the requirements file into the container

COPY requirements.txt .
# Install the required packages
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container

COPY . .

# Expose the port that Streamlit will run on

EXPOSE 8501

# Command to run the Streamlit app

CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]


#The above code creates a Docker image for a Streamlit application. It uses the official Python 3.10 slim image as the base, sets the working directory to /app, copies the requirements.txt file, installs the necessary Python packages, copies the rest of the application code, exposes port 8501, and finally runs the Streamlit app when the container starts.
