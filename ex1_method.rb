#première version fonctionnel de l'exercise 1 des méthodes.
#v1.0

def addition
  x = Argument1()
  y = Argument2()

  return "#{x} + #{y} = #{x + y}"
end

def soustraction
  x = Argument1()
  y = Argument2()

  return "#{x} - #{y} = #{x - y}"
end

def multiplication
  x = Argument1()
  y = Argument2()

  return "#{x} * #{y} = #{x * y}"
end

def division
  x = Argument1()
  y = Argument2()

  return "#{x} / #{y} = #{x / y.to_f}"
end

def Argument1
	print "Entrez le premier nombre :"
	return gets.chomp.to_i
end

def Argument2
	print "Entrez le deuxième nombre :"
	return gets.chomp.to_i
end

OP = ["Addition", "Soustraction", "Multiplication", "Division"]
OP.each_with_index { |e, i| puts "Voulez-vous faire #{i} une #{e}?" }

choix = gets.chomp.to_i

case choix
when 0
	puts 'Vous avez choisie l`addition'
	print addition()
when 1
	puts 'Vous avez choisie la soustraction'
  print soustraction()
when 2
	puts 'Vous avez choisie la multiplication'
  print multiplication()
when 3
	puts 'Vous avez choisie la division'
  print division()
else
	print 'La saisie n`est pas bonne'
end
