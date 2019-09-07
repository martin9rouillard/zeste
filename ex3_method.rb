PI = 3.14159265359
choix = 0

def degree (x)
  return x / (180 / PI)
end

def vitesse (x)
  return x / 3.6
end
Conversion = ["degré => radian", "km/h => m/s"]

Conversion.each_with_index { |e, i| puts "Voulez-vous faire une conversion #{e} (#{i})?" }
puts "Pour quitter faites 9.\n"

print "Quel est votre choix?"
choix = gets.chomp.to_i

case choix
when 0
  puts "Quel degré voulez-vous convertir en radian?"
  x = gets.chomp.to_f
  puts "Il y a #{degree(x)} radian pour #{x} degré."
when 1
  puts "Quelle vitesse en km/h voulez-vous convertir en m/s?"
  x = gets.chomp.to_f
  puts "km/h #{degree(x)} = #{x} m/s."
else
  print "Merci"
end
