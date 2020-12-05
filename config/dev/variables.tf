variable "env" {
  description = "The environment being built"
  type = string
}
variable "tags" {
  description = "Tags to apply to the bucket"
  type = map(string)
}