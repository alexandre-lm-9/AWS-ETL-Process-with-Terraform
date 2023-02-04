#HCL - Hashicorp Configuration Language

#Linguagem Declarativa
#Declarative Language

resource "aws_s3_bucket" "datalake_tf" {
  #Parametros de configuração do recurso escolhido
  #Configuration resources parameters chosen
  bucket = "${var.base_bucket_name_tf}-${var.exercise}"
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
