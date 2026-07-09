resource "aws_iam_policy" "s3_policy" {

  name = "s3-access-policy"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:ListBucket"
        ]

        Resource = "*"
      }
    ]
  })
}
