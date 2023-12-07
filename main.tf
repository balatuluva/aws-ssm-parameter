resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name = var.parameters[count.index].name
  value = var.parameters[count.index].value
  type = "String"
  key_id = "b4ef00c9-7aa3-4bba-ad5d-54544604bbaa"
}

resource "aws_ssm_parameter" "passwords" {
  count = length(var.passwords)
  name = var.passwords[count.index].name
  value = var.passwords[count.index].value
  type = "SecureString"
  key_id = "b4ef00c9-7aa3-4bba-ad5d-54544604bbaa"
}