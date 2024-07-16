
terraform {
  backend "s3" {
    bucket         = "utc-app1-backend-w7"
    key            = "splunk-w7/terrform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "utc-app1-locktable"
    //dynamodb_table = "utc-app2-lock-table"
    //dynamodb_table = "utc-app2-lock-table"



  }
}