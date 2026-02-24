# importing flask
from flask import *

# initialize our app
app=Flask(__name__)

# creating routes
@app.route("/api/home")

# defining function
def home():
    return jsonify({"message":"Welcome to home API"
})


# endpoint for products

@app.route("/api/products")
def products():
    return jsonify ({"message":"welcome to products api"})


# endpoint for services
@app.route("/api/services")
def services():
    return jsonify({"message":"welcome to services api"})


# endpoint to calculate two numbers
@app.route("/api/calc",methods=["POST"])
def calc():
    num1=request.form["num1"]
    num2=request.form["num2"]
    sum=int(num1)+int(num2)
    return jsonify ({"Answer is":sum})



@app.route("/api/simpleintrest",methods=["POST"])
def simpleintrest():
    principle=request.form["principle"]
    rate=request.form["rate"]
    time=request.form["time"]
    simpleintrest=int(principle)*int(rate)*int(time)/100
    return jsonify({"Answer is":simpleintrest})



















# running the application
app.run(debug=True)
