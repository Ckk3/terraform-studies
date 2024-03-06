provider "aws" {
    region = "us-east-1"
    profile = "terraform"
}


resource "aws_s3_bucket" "static_site_bucket" {
    bucket = "my-static-site-bucket-test"

    tags = {
        Name = "Static Site Bucket"
        Environment = "Development"
    }

}



