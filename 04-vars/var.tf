variable "variable1" {
    
    default = "this is presnt value of the variable1 "
}

output "printing_the_variable" {
    value= var.variable1
}

variable "sample1"{}

output "printing_the_sample1_variable" {
    value= var.sample1
}

variable "cli" {}
output "printing_the_CLI_variable" {
    value= var.cli
    }
    
variable "input" {}

variable "sample5" {
    
    default = "Hello"
    
    }
    

variable "sample6" {
    
    default = [
      "Hello",
      1000,
      true,
      "world"
    ]
    }
    
variable "sample7" {
    
    default = {
      string = "Hello",
      number = 1000,
      boolean = true,
      
    }
    }
output "types" {
    
    value = "variable sample5 ${var.sample5}, First value in the list ${var.sample6[0]}, Boolean value of the MAP ${var.sample7["boolean"]} "
}    
    
    