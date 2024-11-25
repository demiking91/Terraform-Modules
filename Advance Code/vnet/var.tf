variable "sub" {
    type = map(object({
      name = string
      address_prefix= string
      security_group = optional(string)
    }))
  
}