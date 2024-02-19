
resource "aws_sqs_queue" "notificacao-pagamento" {
  name = var.sqs_name
}

resource "aws_sqs_queue_policy" "notificacao-pagamento-policy" {
  queue_url = aws_sqs_queue.notificacao-pagamento.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "sqspolicy",
  "Statement": [
    {
      "Sid": "First",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "sqs:*",
      "Resource": "${aws_sqs_queue.notificacao-pagamento.arn}"
    }
  ]
}
POLICY
}

resource "aws_sqs_queue" "notificacao-pedido" {
  name = var.sqs_pedido_name
}

resource "aws_sqs_queue_policy" "notificacao-pedido-policy" {
  queue_url = aws_sqs_queue.notificacao-pedido.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "sqspolicy",
  "Statement": [
    {
      "Sid": "First",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "sqs:*",
      "Resource": "${aws_sqs_queue.notificacao-pagamento.arn}"
    }
  ]
}
POLICY
}

resource "aws_sqs_queue" "notificacao_status" {
  name = var.sqs_notificacao_status
}

resource "aws_sqs_queue_policy" "notificacao_status-policy" {
  queue_url = aws_sqs_queue.notificacao_status.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "sqspolicy",
  "Statement": [
    {
      "Sid": "First",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "sqs:*",
      "Resource": "${aws_sqs_queue.notificacao_status.arn}"
    }
  ]
}
POLICY
}