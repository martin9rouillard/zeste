def menu
  puts '1. Convertir des radians en degrés.'
  puts '2. Convertir des degrés en radians.'
  puts '3. Convertir des kilomètres par heure en mètres par seconde.'
  puts '4. Convertir des mètres par seconde en kilomètres par heure.'
  puts '5. Quitter.'
  choix = 0
  while choix < 1 or choix > 5
    print "\nVotre choix : "
    choix = gets.chomp.to_i
  end
  return choix
end

PI = 3.14159265359
DEG_VERS_RAD = 180 / PI
MS_VERS_KMH = 3.6
choix = menu
if choix != 5
  print "\nEntrez le nombre : "
  nombre = gets.chomp.to_f
  if choix == 1
    print nombre * DEG_VERS_RAD
  elsif choix == 2
    print nombre / DEG_VERS_RAD
  elsif choix == 3
    print nombre / MS_VERS_KMH
  else
    print nombre * MS_VERS_KMH
  end
end
