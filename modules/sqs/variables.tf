variable "sqs_name" {
  description = "Name of the sqs queue to be created"
  default     = "notificacao-pagamento"
}

variable "sqs_pedido_name" {
  description = "Name of the sqs queue to be created"
  default     = "notificacao-pedido"
}

variable "sqs_notificacao_status" {
  description = "Name of the sqs queue to be created"
  default     = "notificacao-status"
}

variable "sqs_notificacao_pagamento_error" {
  description = "Name of the sqs queue to be created"
  default     = "notificacao-pagamento-error"
}