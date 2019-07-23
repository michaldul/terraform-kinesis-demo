variable "shard_count" {
  description = "number of shard"
  default     = 2
}

variable "stream_name" {
  description = "sream name"
  default     = "shit_and_stuff"
}

output "kinesis_arn" {
  value = "${aws_kinesis_stream.kinesis_stream.arn}"
}

resource "aws_kinesis_stream" "kinesis_stream" {
  name        = "${var.stream_name}"
  shard_count = "${var.shard_count}"
}
