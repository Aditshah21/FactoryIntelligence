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
    #PASTE YOUR CODE HERE

    # construct the argument parse and parse the arguments
    img = request.args.get('imageName')
    # load the image
    image = cv2.imread(r"C:\Users\Adit Shah\Desktop\WorkspaceDemo\.metadata\.plugins\org.eclipse.wst.server.core\tmp2\wtpwebapps\Factory_Intelligence\testing\{}".format(img))
    orig = image.copy()

    # pre-process the image for classification
    image = cv2.resize(image, (28, 28))
    image = image.astype("float") / 255.0
    image = img_to_array(image)
    image = np.expand_dims(image, axis=0)

    # load the trained convolutional neural network
    print("[INFO] loading network...")
    model1= load_model(r"C:\Users\Adit Shah\Desktop\Python\factoryIntelligence\Factory_HelmetDetection.model")
    model2=load_model(r"C:\Users\Adit Shah\Desktop\Python\factoryIntelligence\Factory_GlovesDetection.model")
    model3=load_model(r"C:\Users\Adit Shah\Desktop\Python\factoryIntelligence\Factory_UniformDetection.model")
    model4=load_model(r"C:\Users\Adit Shah\Desktop\Python\factoryIntelligence\Factory_ShoesDetection.model")

    # classify the input image5
    (notHelmet, helmet) = model1.predict(image)[0]
    (notGloves, gloves) = model2.predict(image)[0]
    (notUniform, uniform) = model3.predict(image)[0]
    (notShoes, shoes) = model4.predict(image)[0]

    # build the label

    label1 = "Helmet" if helmet > notHelmet else "Not Helmet"
    proba1 = helmet if helmet > notHelmet else notHelmet
    label1 = "{}: {:.2f}%".format(label1, proba1 * 100)

    label2 = "Gloves" if gloves > notGloves else "Not Gloves"
    proba2 = gloves if gloves > notGloves else notGloves
    label2 = "{}: {:.2f}%".format(label2, proba2 * 100)

    label3 = "Uniform" if uniform > notUniform else "Not Uniform"
    proba3 = uniform if uniform > notUniform else notUniform
    label3 = "{}: {:.2f}%".format(label3, proba3 * 100)


    label4 = "Shoes" if shoes > notShoes else "Not Shoes"
    proba4 = shoes if shoes > notShoes else notShoes
    label4 = "{}: {:.2f}%".format(label4, proba4 * 100)


    # draw the label on the image
    output = imutils.resize(orig, width=400)
    cv2.putText(output,label1, (10, 25), cv2.FONT_HERSHEY_SIMPLEX,
                0.7, (0, 255, 0), 2)
    cv2.putText(output, label2, (10,50), cv2.FONT_HERSHEY_SIMPLEX,
                0.7, (0, 255, 0), 2)
    cv2.putText(output, label3, (10,75), cv2.FONT_HERSHEY_SIMPLEX,
                0.7, (0, 255, 0), 2)
    cv2.putText(output, label4, (10,100), cv2.FONT_HERSHEY_SIMPLEX,
                0.7, (0, 255, 0), 2)

    # show the output image
    path=(r"C:\Users\Adit Shah\Desktop\WorkspaceDemo\.metadata\.plugins\org.eclipse.wst.server.core\tmp2\wtpwebapps\Factory_Intelligence\images\{}")
    cv2.imshow("Output", output)
    cv2.waitKey(0)
    cv2.imwrite(path+img,output)
    #write your query
    cur = mysql.connection.cursor()  # Execute
    cur.execute("INSERT INTO worker_objectdetection(img_name,img_path,Helmet_Detect,Gloves_Detect,Uniform_Detect,Shoes_Detect) VALUES (%s,%s,%s,%s,%s,%s)",[img,path,label1,label2,label3,label4])
    mysql.connection.commit()
    # Close connection
    cur.close()
    return ("done")

if __name__ == "__main__":
    app.run()