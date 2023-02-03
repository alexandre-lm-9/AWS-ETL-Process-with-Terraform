#Comentario para modificar o arquivo .py
import boto3
import pandas as pd
import os

s3_client = boto3.client('s3')

data = r'C:\Users\alomb\Desktop\MBA_Eng_Dados_XPE\Bootcamp1_EngDadosCloud\Modulo_1\Desafio_1\2020\Extracted'


for  root,dirs,files in os.walk(data):
    for file in files:
        if file.endswith('.bz2'):
            print(file)
            s3_client.upload_file(data+'/'+file,
                                  'datalake-alexandre-tf-desafio-1-edc-rais', #bucket name
                                  'raw-data/{}'.format(file)) #folder to the file to be saved
            print("Uploaded to S3 Bucket")

