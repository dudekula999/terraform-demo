variable "sg-name" {
  type = string
  default = "roboshop"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic"

}

variable "inbound-from-port" {
  default = 0
}

variable "cidr_block" {
  type = list
  default = ["0.0.0.0/0"]
}