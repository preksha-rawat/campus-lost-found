from flask import Flask, render_template

# Start the web toolkit
app = Flask(__name__)

# Tell the website what to show on the home page
@app.route('/')
def home():
    # Send the HTML file we just made
    return render_template('index.html')

# Turn the server on
if __name__ == '__main__':
    app.run(debug=True)