import pyodbc 
from typing import Union
import pickle
import pandas as pd
from sklearn.preprocessing import LabelEncoder,MinMaxScaler
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt
import collections, numpy
import numpy as np
import pyodbc
# pip install SQLAlchemy
from sqlalchemy.engine import URL
from sqlalchemy import create_engine
# Some other example server values are
# server = 'localhost\sqlexpress' # for a named instance
# server = 'myserver,port' # to specify an alternate port
sv='DESKTOP-4UNL892'
db='Fashion_shop'
pwd="tt"

server = 'DESKTOP-4UNL892,1433' 
database = 'Fashion_Shop' 
username = 'sa' 
password = 'tt' 

connection_string = "DRIVER={ODBC Driver 17 for SQL Server};SERVER="+sv+";DATABASE="+db+";UID=sa;PWD="+pwd
connection_url = URL.create("mssql+pyodbc", query={"odbc_connect": connection_string})


from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.get("/cluster")
def cluster():
    try:
        engine = create_engine(connection_url)

        query = "SELECT ID,Price,Brand,Gender,ReleaseTime,ProductType,ProductMaterial FROM Product"
        df = pd.read_sql(query, engine)

        list_ID=df["ID"].values.tolist()
        df.drop(['ID'], axis=1, inplace=True)

        X=df
        le = LabelEncoder()

        # https://brandirectory.com/rankings/apparel/table
        X['Brand'] = np.where(X['Brand'] == 'Nike', 10, 
        np.where(X['Brand'] == 'Louis Vuitton', 9,
        np.where(X['Brand'] == 'GUCCI', 8,
        np.where(X['Brand'] == 'Chanel', 7,
        np.where(X['Brand'] == 'Adidas', 6,
        np.where(X['Brand'] == 'Hermes', 5,
        np.where(X['Brand'] == 'ZARA', 4,
        np.where(X['Brand'] == 'H&M', 3,
        np.where(X['Brand'] == 'Cartier', 2,
        np.where(X['Brand'] == 'UNIQLO', 1,
        0))))))))))
        X['ProductType'] = le.fit_transform(X['ProductType'])
        X['Gender'] = le.fit_transform(X['Gender'])
        X['ProductMaterial'] = le.fit_transform(X['ProductMaterial'])

        ms = MinMaxScaler()

        X = ms.fit_transform(X)

        kmeans = KMeans(n_clusters=find_K(X), random_state=0) 
        cluster_list=kmeans.fit_predict(X)
        # save model
        with open("C:/Users/THANHTRUNG/OneDrive - student.ptithcm.edu.vn/Desktop/eclipse_workspace/do-an-phat-trien-cac-he-thong-thong-minh/model.pkl", "wb") as f:
            pickle.dump(kmeans, f)

        for i in range(df[df.columns[0]].count()):
            engine.execute('UPDATE Product SET ProductCluster='+ str(cluster_list[i]) + ' where Product.ID='+str(list_ID[i]))
        return {"code": 200, "message": "success"}
    except Exception as e:
        print(e)
        return {"code": 500, "message": "failed"}

def find_K(dataset):
    distortions = []
    K = range(1,10)
    for k in K:
        kmeanModel = KMeans(n_clusters=k)
        kmeanModel.fit(dataset)
        distortions.append(kmeanModel.inertia_)
    
    for i in range(1, len(distortions)):
        if distortions[i] / distortions[i-1] > 0.93:
            return i

@app.get("/get-history-cluster/{session_id}")
def get_history_cluster(session_id: str, q: Union[str, None] = None):
    try:
        engine = create_engine(connection_url)
        history_query = "SELECT Product.ID, Price, Brand, Gender, ReleaseTime, ProductType, ProductMaterial FROM (SELECT * FROM History WHERE SessionID = '{0}') AS H INNER JOIN Product ON Product.ID = H.ProductID".format(session_id)
        query = "SELECT ID, Price, Brand, Gender, ReleaseTime, ProductType, ProductMaterial FROM Product"

        df_history = pd.read_sql(history_query, engine)
        df = pd.read_sql(query, engine)
        df = pd.concat([df, df_history])

        df.drop(['ID'], axis=1, inplace=True)

        X=df
        le = LabelEncoder()

        # https://brandirectory.com/rankings/apparel/table
        X['Brand'] = np.where(X['Brand'] == 'Nike', 10, 
        np.where(X['Brand'] == 'Louis Vuitton', 9,
        np.where(X['Brand'] == 'GUCCI', 8,
        np.where(X['Brand'] == 'Chanel', 7,
        np.where(X['Brand'] == 'Adidas', 6,
        np.where(X['Brand'] == 'Hermes', 5,
        np.where(X['Brand'] == 'ZARA', 4,
        np.where(X['Brand'] == 'H&M', 3,
        np.where(X['Brand'] == 'Cartier', 2,
        np.where(X['Brand'] == 'UNIQLO', 1,
        0))))))))))
        X['ProductType'] = le.fit_transform(X['ProductType'])
        X['Gender'] = le.fit_transform(X['Gender'])
        X['ProductMaterial'] = le.fit_transform(X['ProductMaterial'])

        ms = MinMaxScaler()
        X = ms.fit_transform(X)
        X = X.tail(n=len(df_history))
        X = X.mean(axis=0)

        # load model
        with open("C:/Users/THANHTRUNG/OneDrive - student.ptithcm.edu.vn/Desktop/eclipse_workspace/do-an-phat-trien-cac-he-thong-thong-minh/model.pkl", "rb") as f:
            kmeans = pickle.load(f)
        cluster_id = kmeans.predict([[X[0], X[1], X[2], X[3], X[4], X[5]], ])[0]
        return {"code": 200, "cluster": int(cluster_id)}

    except Exception as e:
        print(e)
        return {"code": 500, "message": "failed"}

@app.get("/predict_product_cluster/{product_id}")
def predict_product_cluster(product_id: str, q: Union[str, None] = None):
    try:
        engine = create_engine(connection_url)
        query = "SELECT ID, Price, Brand, Gender, ReleaseTime, ProductType, ProductMaterial FROM Product"

        df = pd.read_sql(query, engine)

        # df.drop(['ID'], axis=1, inplace=True)

        X=df
        cols = X.columns.to_list()
        ids = X['ID'].values
        le = LabelEncoder()

        # https://brandirectory.com/rankings/apparel/table
        X['Brand'] = np.where(X['Brand'] == 'Nike', 10, 
        np.where(X['Brand'] == 'Louis Vuitton', 9,
        np.where(X['Brand'] == 'GUCCI', 8,
        np.where(X['Brand'] == 'Chanel', 7,
        np.where(X['Brand'] == 'Adidas', 6,
        np.where(X['Brand'] == 'Hermes', 5,
        np.where(X['Brand'] == 'ZARA', 4,
        np.where(X['Brand'] == 'H&M', 3,
        np.where(X['Brand'] == 'Cartier', 2,
        np.where(X['Brand'] == 'UNIQLO', 1,
        0))))))))))
        X['ProductType'] = le.fit_transform(X['ProductType'])
        X['Gender'] = le.fit_transform(X['Gender'])
        X['ProductMaterial'] = le.fit_transform(X['ProductMaterial'])

        ms = MinMaxScaler()
        X = pd.DataFrame(data=ms.fit_transform(X), columns=cols)
        X['ID'] = ids

        row = X[X['ID'] == product_id].drop('ID', axis=1).iloc[0]

        # load model
        with open("C:/Users/THANHTRUNG/OneDrive - student.ptithcm.edu.vn/Desktop/eclipse_workspace/do-an-phat-trien-cac-he-thong-thong-minh/model.pkl", "rb") as f:
            kmeans = pickle.load(f)
        cluster_id = int(kmeans.predict([row, ])[0])
        print('cluster id:', cluster_id)
        engine.execute("UPDATE Product SET ProductCluster={0} where Product.ID='{1}'".format(cluster_id, product_id))
        return {"code": 200, "cluster": cluster_id}

    except Exception as e:
        print(e)
        return {"code": 500, "message": "failed"}