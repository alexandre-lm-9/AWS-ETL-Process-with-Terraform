resource "aws_glue_job" "glue-job-pyspark" {
  name     = "glue-job-pyspark"
  role_arn = aws_iam_role.glue-crawler-role.arn

  command {
    script_location = "s3://${aws_s3_bucket.datalake_tf.id}/tf-codes/pyspark/pyspark_job.py"
    python_version ="3"
  }
  execution_property {
    max_concurrent_runs = 1
  }
  glue_version = "3.0"

}