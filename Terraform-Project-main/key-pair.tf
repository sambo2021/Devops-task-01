# resource "tls_private_key" "private_key_pair" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "aws_key_pair" "public_key_pair" {
#   key_name   = "public-key_pair"
#   public_key = tls_private_key.private_key_pair.public_key_openssh
# }

# resource "aws_secretsmanager_secret" "private_key" {
#   name = "private_key"
#   recovery_window_in_days = 0
# }

# resource "aws_secretsmanager_secret" "public_key" {
#   name = "public_key"
#   recovery_window_in_days = 0
# }

# resource "aws_secretsmanager_secret_version" "private_key_value" {
#   secret_id     = aws_secretsmanager_secret.private_key.id
#   secret_string = tls_private_key.private_key_pair.private_key_pem
# }

# resource "aws_secretsmanager_secret_version" "public_key_value" {
#   secret_id     = aws_secretsmanager_secret.public_key.id
#   secret_string = aws_key_pair.public_key_pair.public_key
# }