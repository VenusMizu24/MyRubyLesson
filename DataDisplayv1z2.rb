require 'Date'
require 'fileutils'


class Animals1 #Animal class
	def animal1(a)  # definition of the first animal
		if(a==1) # if the value of "a" = 1 return the animals type.
			return "Cheetah"
		elsif(a==2) # if the value of "a" = 2 then return the animal name
			return "Mina"
		else #if the value is not 1 0r two return the animals birthdate
			return "6/7/2002"
		end
	end
	def animal2(a) # definition of the second animal
		if(a==1)# i
			return "Wolf"
		elsif(a==2)
			return "Keith"
		else
			return "5/3/2008"
		end
	end
	def animal3(a) # definition of the third animal
		if(a==1)
			return "Eagle"
		elsif(a==2)
			return "Barry"
		else
			return "3/26/2006"
		end
	end
end

class Furniture1 #Furniture Class
  def furniture1(a)  # definition of the first piece of furniture
    if(a==1) # if the value of "a" = 1 return the furniture type.
      return "Brown"
    elsif(a==2) # if the value of "a" = 2 then return the furniture color
      return "Chair"
    else #if the value is not 1 0r two return the date purchased
      return "5/8/2098"
    end
  end
  def furniture2(a) # definition of the second piece of furniture
    if(a==1)# i
      return "Red"
    elsif(a==2)
      return "Couch"
    else
      return "4/18/2025"
    end
  end
  def furniture3(a) # definition of the third animal
    if(a==1)
      return "Black"
    elsif(a==2)
      return "Table"
    else
      return "6/12/2110"
    end
  end
end

class Plants1 #Plants class
  def plant1(a)  # definition of the first plant
    if(a==1) # if the value of "a" = 1 return the plant name
      return "Daisy"
    elsif(a==2) # if the value of "a" = 2 then return the day to be watered
      return "Monday"
    else
      return "does" # if the value isn't 1 or 2, return weather or not the plant flowers
    end
  end
  def plant2(a)  # definition of the second plant
    if(a==1)
      return "Rose"
    elsif(a==2)
      return "Wednesday"
      else
        return "does"
    end
  end  
  
  def plant3(a)
  if(a==1)
    return "Oak"
  elsif(a==2)
    return "Tuesday"
    else
      return "does not"
  end
end  

def plant4(a)
if(a==1)
  return "Prickly Pear"
elsif(a==2)
  return "Sunday"
  else
    return "does"
 end
end  

def plant5(a)
if(a==1)
  return "Lemon Grass"
elsif(a==2)
  return "Saturday"
  else
    return "does not"
end
end  

def plant6(a)
if(a==1)
  return "Yellowroot"
elsif(a==2)
  return "Friday"
  else
    return "does not"
end
end  

def plant7(a)
if(a==1)
  return "Ergot"
elsif(a==2)
  return "Thursday"
  else
    return "does not"
end
end  

def plant8(a)
if(a==1)
  return "Wheat"
elsif(a==2)
  return "Saturday"
  else
    return "does not"
end
end  

def plant9(a)
if(a==1)
  return "Pine"
elsif(a==2)
  return "Wednesday"
  else
    return "does not"
end
end
  def plant10(a)
    if(a==1)
      return "Aloe"
    elsif(a==2)
      return "Monday"
    else
      return "does not"
    end
  end
end

# Instanciating classes
am=Animals1.new 
fu=Furniture1.new
plan=Plants1.new

# Creating arrays to draw from in loops
$animalNames=[am.animal1(2),am.animal2(2),am.animal3(2)]
$animalTypes=[am.animal1(1),am.animal2(1),am.animal3(1)]
$animalBD=[am.animal1(3),am.animal2(3),am.animal3(3)]
$funiColor=[fu.furniture1(1),fu.furniture2(1),fu.furniture3(1)]
$funiType=[fu.furniture1(2),fu.furniture2(2),fu.furniture3(2)]
$funiDate=[fu.furniture1(3),fu.furniture2(3),fu.furniture3(3)]
$pname=[plan.plant1(1),plan.plant2(1),plan.plant3(1),plan.plant4(1),plan.plant5(1),plan.plant6(1),plan.plant7(1),plan.plant8(1),plan.plant9(1),plan.plant10(1)]
$pday=[plan.plant1(2),plan.plant2(2),plan.plant3(2),plan.plant4(2),plan.plant5(2),plan.plant6(2),plan.plant7(2),plan.plant8(2),plan.plant9(2),plan.plant10(2)]
$pflow=[plan.plant1(3),plan.plant2(3),plan.plant3(3),plan.plant4(3),plan.plant5(3),plan.plant6(3),plan.plant7(3),plan.plant8(3),plan.plant9(3),plan.plant10(3)]


# Global variables - date and label
$d = Time.now.strftime("%m/%d/%Y-%I:%M%p")
$label = "Date: #{$d}
Version: 2.0
Logfile: Learning Ruby
Programmer: Nephtiry Bailey

"



# Global variables - data to put in animal file and shell
$aniName = "#{$d}: The names of the animals are #{$animalNames[0]}, #{$animalNames[1]}, and #{$animalNames[2]}"
$aniType = "#{$d}: The types of the animals are #{$animalTypes[0]}, #{$animalTypes[1]}, and #{$animalTypes[2]} respectively."
$aniDate = "#{$d}: And their birthdays are respectively #{$animalBD[0]}, #{$animalBD[1]}, and #{$animalBD[2]}"
$thanks = "Thanks for using the database! A text file of this information has been stored in your temp folder"

  # loop for informational label
for i in 0..1
if i == 0 
puts "#{$label}"
end
end

  puts "Welcome to the database! Which category would you like to see?
  
  For animals, type A
  For furniture, type B
  For plants, type C"
  
  input = gets.chomp
  
  case input
  # loop for animal class
  when "A","a"
$animalloop = File.open("C:\\temp\\Animal"+Time.now.strftime("%Y%m%d%H%M%S")+".txt", "w+")
$animalloop.puts "#{$label}"
puts "#{$aniName}
#{$aniType}
#{$aniDate}"
$animalloop.puts "#{$aniName}
  #{$aniType}
  #{$aniDate}"
    puts
    print "#{$thanks}"
  # Loop for Furniture class 
when "B","b"
  $furniloop = File.open("C:\\temp\\Furniture"+Time.now.strftime("%Y%m%d%H%M%S")+".txt", "w+")
  $furniloop.puts "#{$label}"
for i in 0..2
# Variable assigned while loop is going on
puts $Furnilog ="#{$d}: The #{$funiColor[i]} #{$funiType[i]} was bought on #{$funiDate[i]}" 
# Variable used before loop ends
$furniloop.puts "#{$Furnilog}"
end
    puts
    print "#{$thanks}"
# Loop for plant class
  when "C", "c"
$plantloop = File.open("C:\\temp\\Plant"+Time.now.strftime("%Y%m%d%H%M%S")+".txt", "w+")
$plantloop.puts "#{$label}"
for i in 0..9
 puts $Plantlog = "#{$d}: The #{$pname[i]} has to be watered #{$pday[i]} of every week.  It #{$pflow[i]} flower."
$plantloop.puts "#{$Plantlog}" 
end
    puts
    print "#{$thanks}"
else
    puts "#{input} is not a valid entry!"
end