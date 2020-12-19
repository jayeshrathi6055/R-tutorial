library('stringr')

# Some "stringr" library function------------------------------------------------------->

# Concatenation
print(str_c("welcome","in","India",sep = " "))

print(paste("welcome","in","India", sep = " "))

# Length
print(str_length(c("welcome","in","India")))

print(nchar(c("welcome","in","India")))

# Substring
txt = "Welcome in India"
print(str_sub(txt,1,7))
print(str_sub(txt,-5,-1))

# String padding
print(str_pad("Welcome",width = 10))
print(str_pad("Welcome",width = 10,pad = "_"))
print(str_pad("Welcome",width = 10,pad = "_",side = "both"))

# String Wrap
txt = c("How","are","you")
print(str_wrap(txt,indent = "3"))
print(cat(str_wrap(txt)))

# String trim
txt = c("welcome       ","        in","India    ")
print(str_trim(txt))
print(str_trim(txt,side = "left"))
print(str_trim(txt,side = "right"))

# Word
txt = c("work hard","You will achieve heights")
print(word(txt,1))
print(word(txt,2,-1))

# Control Structures--------------------------------------------------------------------------------->

# If-Else
a = 6
if (a==5){
  print("yes")
}else if(a<10){
  print("low")
}else{
  print("high")
}

# For loop
for (i in 1:10){
  print(i)
}

# While Loop
i = 1
while(i<=10){
  print(i)
  i = i+1
}

# Function
add = function(a,b){
  print(a+b)
}
add(2,3)