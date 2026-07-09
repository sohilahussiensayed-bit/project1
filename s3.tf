resource "aws_s3_bucket" "my-bucket" {
  bucket = "sohilahiussien-bucket"

  tags = {
    Name        = "sohilahiussien-bucket"
    Environment = "Dev"
  }
}
resource "aws_s3_object" "test_file" {

  bucket = aws_s3_bucket.my-bucket.id

  key = "test.txt"

  source = "test.txt"

  etag = filemd5("test.txt")
}