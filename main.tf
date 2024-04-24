resource "aws_s3_bucket" "bucket1" {
	bucket = "naveenkc-first-bucket"
}

resource "aws_s3_bucket" "bucket2" {
    	bucket = "naveenkc-second-bucket"
}

provider "aws" {
    region = "eu-west-1"
}
output bucket1 {
	value = aws_s3_bucket.bucket1.arn
	value = aws_s3_bucket.bucket2.arn
}
