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