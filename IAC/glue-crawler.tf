resource "aws_glue_catalog_database" "aws_glue_catalog_database" {
  name = "glue-crawler-database-challenge-tf"
}

resource "aws_glue_crawler" "glue-crawler" {
  database_name = aws_glue_catalog_database.aws_glue_catalog_database.name
  name          = "glue-crawler-tf"
  role          = aws_iam_role.glue-crawler-role.arn

  table_prefix = "rais_2020_"

  s3_target {
    path = "s3://${aws_s3_bucket.datalake_tf.id}/${aws_s3_bucket_object.tf-staging.id}"
  }
}