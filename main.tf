resource "aws_s3_bucket" "bucket1" {
	bucket = "naveenkc-first-bucket"
}

resource "aws_s3_bucket" "bucket2" {
    	bucket = "naveenkc-second-bucket"
	description = bucket name
}

provider "aws" {
    region = "eu-west-1"
}
output bucketname {
	value = aws_s3_bucket.bucket1.id
}
