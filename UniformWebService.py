from keras.preprocessing.image import img_to_array
from keras.models import load_model
import numpy as np
import argparse
import imutils
import cv2
import os
from flask import Flask,render_template
from flask_mysqldb import MySQL
from flask import Flask,session,request
from flask_cors import CORS,cross_origin
app = Flask(__name__)
CORS(app)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'factory_intelligence'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
# init MYSQL
mysql = MySQL()
mysql.init_app(app)

@app.route("/", methods=['GET'])
@cross_origin()
def hello():

    img = request.args.get('imageName')

    # load the image
    image = cv2.imread(r"C:\Users\Adit Shah\Desktop\Python\factoryIntelligence\examples\10.jpg")
    orig = image.copy()

    # pre-process the image for classification
    image = cv2.resize(image, (28, 28))
    image = image.astype("float") / 255.0
    image = img_to_array(image)
    image = np.expand_dims(image, axis=0)

    # load the trained convolutional neural network
    print("[INFO] loading network...")
    model = load_model(r"C:\Users\Adit Shah\Desktop\Python\factoryIntelligence\Factory_UniformDetection.model")

    # classify the input image5
    (notUniform, uniform) = model.predict(image)[0]

    # build the label

    label = "Uniform" if uniform > notUniform else "Not Uniform"
    proba = uniform if uniform > notUniform else notUniform
    label = "{}: {:.2f}%".format(label, proba * 100)

    # draw the label on the image
    output = imutils.resize(orig, width=400)
    cv2.putText(output, label, (10, 25), cv2.FONT_HERSHEY_SIMPLEX,
                0.7, (0, 255, 0), 2)

    # show the output image
    path=r"C:\Users\Adit Shah\Desktop\WorkspaceDemo\Factory_Intelligence\WebContent\images"
    cv2.imshow("Output", output)
    cv2.waitKey(0)
    cv2.imwrite(path + "//1.jpg", output)
    # write your query
    cur = mysql.connection.cursor()  # Execute
    cur.execute("INSERT INTO worker_objectdetection(img_name,img_path,Uniform) VALUES (%s,%s,%s)",
                ["1.jpg", path, label])
    mysql.connection.commit()

    # Close connection
    cur.close()
    return ("done")


if __name__ == "__main__":
    app.run()
