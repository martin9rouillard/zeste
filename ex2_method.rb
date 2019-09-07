def ppcd (x)
  tab = []
  i = 1

  puts "#{x ** 0.5}"
  temp = x ** 0.5

  while i <= temp
    if (x % i == 0)
      tab += [i]
    end
    i += 1
  end
  return tab
end

puts "PGCD"
puts "Donnez-moi votre premier nombre."
x = gets.chomp
puts "Donnez-moi votre deuxième nombre."
y = gets.chomp

temp = 0

if x > y
  temp = y
  y = x
  x = temp
end

tabx = ppcd(x.to_i)
taby = ppcd(y.to_i)

puts "tabx"
puts tabx
puts "taby"
puts taby

nx = tabx.length-1
ny = taby.length-1

while tabx[nx] != taby[ny]
  if tabx[nx] > taby[ny]
    nx -= 1
  else
    ny -= 1
  end
end

puts "#{tabx[nx]}"
