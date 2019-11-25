# -------------------------------------------------------------------------------
# AWS Lambda
# -------------------------------------------------------------------------------
resource "aws_lambda_function" "test-lambda" {
  filename         = "lambda_function_payload.zip"
  function_name    = "terraDemoGetAllRecs"
  role             = "arn:aws:iam::291199257745:role/aws-lambda"
  handler          = "handler.terraDemoGetAllRecs"
  source_code_hash = "lambda_function_payload.zip"
  runtime = "nodejs10.x"

  environment {
    variables = {
      foo = "bar"
    }
  }
} 
