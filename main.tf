resource "aws_lambda_function" "this" {
  function_name    = var.lambda_name
  role             = var.lambda_role
  filename         = var.filename
  handler          = var.handler
  source_code_hash = var.source_code_hash
  runtime          = var.runtime
  memory_size      = var.memory_size
  timeout          = var.timeout

}

resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/lambda/${aws_lambda_function.this.function_name}"
  retention_in_days = 7
}
