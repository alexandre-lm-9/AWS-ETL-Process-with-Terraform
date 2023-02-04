resource "aws_s3_bucket_object" "raw-data-code" {
  bucket = aws_s3_bucket.datalake_tf.id
  key    = "tf-codes/python/s3_upload.py" #onde vai salvar o arquivo
  acl    = "private"                   # Acesso a lista
  source = "../codes/s3_upload_raw-data.py"           #path do arquivo a ser subido
  etag   = md5("../codes/s3_upload_raw-data.py")  # se não houver mudanca, nao sobe o dado novamente
}

resource "aws_s3_bucket_object" "pyspark-code" {
  bucket = aws_s3_bucket.datalake_tf.id
  key = "tf-codes/pyspark/pyspark_job.py" #onde vai salvar o arquivo
  acl = "private" # Acesso a lista
  source = "../codes/pyspark_job.py" #pateth do arquivo a ser subido
  etag = md5("../codes/pyspark_job.py") # se não houver mudanca, nao sobe o dado novamente
}

resource "aws_s3_bucket_object" "raw-data" {
  bucket = aws_s3_bucket.datalake_tf.id
  key    = "raw-data/" #onde vai salvar o arquivo
  acl    = "private"                   # Acesso a lista
//  source = "../s3_upload_raw-data.py"           #path do arquivo a ser subido
//  etag   = filemd5("../s3_upload_raw-data.py")  # se não houver mudanca, nao sobe o dado novamente
}
//
resource "aws_s3_bucket_object" "tf-staging" {
  bucket = aws_s3_bucket.datalake_tf.id
  key    = "tf-staging/" #onde vai salvar o arquivo
  acl    = "private"                   # Acesso a lista
}
