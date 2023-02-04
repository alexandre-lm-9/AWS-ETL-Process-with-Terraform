#HCL - Hashicorp Configuration Language

#Linguagem Declarativa

resource "aws_s3_bucket" "datalake_tf" {
  #Parametros de configuração do recurso escolhido
  bucket = "${var.base_bucket_name_tf}-${var.exercicio}"
  acl    = "private"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  tags = {
    IES   = "IGTI",
    CURSO = "EDC"
  }
}

//resource "aws_s3_bucket_object" "codes" {
//  bucket = aws_s3_bucket.datalake_tf.id
//  key    = "tf-code/s3_upload.py" #onde vai salvar o arquivo
//  acl    = "private"                   # Acesso a lista
//  //source = "../s3_upload_raw-data.py"           #path do arquivo a ser subido
//  //etag   = filemd5("../s3_upload_raw-data.py")  # se não houver mudanca, nao sobe o dado novamente
//}
////

//
//provider "aws" {
//  region = "us-east-2"
//}us-east-2