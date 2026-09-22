from flask import Flask

# 1. Start the web toolkit
app = Flask(__name__)

# 2. Tell the website what to show on the home page
@app.route('/')
def home():
    return "<h1>Welcome to the Campus Lost & Found</h1>"
#3. turn the server on !
if __name__ =='__main__':
    app.run(debug=True)
