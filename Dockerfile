FROM python:3.10.7
WORKDIR /API
COPY requirements.txt /API/requirements.txt
RUN pip3 install -r requirements.txt
COPY . /API
CMD [ "uvicorn", "main:app" , "--host", "0.0.0.0", "--port", "8080", "--reload"]