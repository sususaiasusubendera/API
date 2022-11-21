from fastapi import FastAPI

app = FastAPI()

@app.get('/')
def hello():
    return {'data': {'name': 'ino'}}

@app.get('/about')
def about():
    return {'data': 'about page'}