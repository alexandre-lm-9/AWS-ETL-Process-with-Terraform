resource "aws_s3_bucket_object" "raw-data-code" {
  bucket = aws_s3_bucket.datalake_tf.id
  key    = "tf-codes/python/s3_upload_raw-data.py" 
  acl    = "private"                   
  source = "../codes/s3_upload_raw-data.py"           
  etag   = md5("../codes/s3_upload_raw-data.py") 
}

resource "aws_s3_bucket_object" "pyspark-code" {
  bucket = aws_s3_bucket.datalake_tf.id
  key = "tf-codes/pyspark/pyspark_job.py" 
  acl = "private" 
  source = "../codes/pyspark_job.py" 
  etag = md5("../codes/pyspark_job.py") 
}

resource "aws_s3_bucket_object" "raw-data" {
  bucket = aws_s3_bucket.datalake_tf.id
  key    = "raw-data/" 
  acl    = "private"                   

}

resource "aws_s3_bucket_object" "tf-staging" {
  bucket = aws_s3_bucket.datalake_tf.id
  key    = "tf-staging/"
  acl    = "private"                   
}
