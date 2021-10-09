variable instance_type {
    type        = string
    default     = "t2.micro"
    description = "description"
  }

  variable ami {
    type        = string
    default     = "ami-02e136e904f3da870"
    description = "description"
  }
variable key {
    type        = string
    default     = "jenkins123"
    description = "description"
  }
variable availability {
    default     = {us-east-1a = 1
		us-east-1b = 2
		us-east-1c = 3
}
    description = "description"
  } 
