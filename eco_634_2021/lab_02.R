



n <- 17
vec_1 = sample (10, n, replace = TRUE)
vec_1

for (i in (1:length(vec_1)))
{
  print(paste0("The element of vec_1 at index ", i ," is: ", vec_1[i]))
}


length(vec_1)

print_number = function(n)
{
  print(paste0("The value of the number is ", n))
}
print_number(145)


create_and_print_vec = function(n, min = 30, max =  )

{
  vec_2 = sample(min:max, n, replace = TRUE)
for (i in (1:n))
{
  print(paste0("The element at index ", i ," is ", vec_2[i]))
}
 }
create_and_print_vec(24, min = 1, max = 10)




create_and_print_vec = function(n, min = 5, max = 10)
  
  sample(5:10, n, replace = TRUE)
{
  for (i in (1:15))
  {
    print(paste0("The element at index ", i ," is ", sample(5:10,1)))
  }
  }
