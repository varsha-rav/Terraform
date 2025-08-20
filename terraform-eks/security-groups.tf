resource "aws_security_group" "worker_mgnt" {
  name        = "worker_mgnt_sg"
  description = "Security group for worker management"
  vpc_id      = module.vpc.vpc_id

}

resource "aws_vpc_security_group_ingress_rule" "all_worker_mgnt_ingress" {


  description       = "Allow all traffic to worker management security group"
  security_group_id = aws_security_group.worker_mgnt.id
  ip_protocol       = "-1"
  from_port         = 0
  to_port           = 0
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "all_worker_mgnt_egress" {
  ip_protocol       = "-1"
  security_group_id = aws_security_group.worker_mgnt.id
  from_port         = 0
  to_port           = 0
  cidr_ipv4         = "0.0.0.0/0"

}