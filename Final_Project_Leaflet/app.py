######### MODULE IMPORTS #########################

from flask import Flask, render_template

#################################################
# Flask Setup
#################################################

app = Flask(__name__)

######### ROUTES ##################################
@app.route("/")
def index():
    return render_template("index.html")

##
if __name__ == "__main__":
        app.run(debug=True)
## the end 

