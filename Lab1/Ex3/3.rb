#Написать методы, которые находят минимальный,элементы, номер первого положительного элемента. 
#Каждая операция в отдельном методе. Решить задачу с помощью циклов(for и while).


def min(a)
	min = a[0]
  	for i in 0...a.size
    	if (a[i] < min)
    		min = a[i]
    	end
  end
  return min
end

def max(a)
 	for i in 0..a.size-1
    	if (a[i] > max)
      		max = a[i]
    	end
  	end
  	return max
end

def first_positive(a)
	k = -1
	for i in 0..a.size
    	if(a[i] > 0)
    		k = i
    		break
    	end
    end
    if(k == -1)
    	return puts "Нету положительных элементов"
    else
    	return puts "Номер первого положительного элемента: #{k}"
    end
end


path = ARGV[0]
file = File.new(path,"r:UTF-8")
arr = file.readline.split.map(&:to_i)
puts "Выбери свою операцию:"
puts "\n1-Найти минимальный элемент\n2-Найти максимальный элемент\n3-Найти номер первого положительного элемента"
puts "\nПолученный массив:", arr, "\n"
if(ARGV[1] == "1")
	puts "Результат: Минимальный элемент массива: ", min(arr)
elsif(ARGV[1] == "2")
	puts "Результат: Максимальный элемент массива: ", max(arr)
elsif(ARGV[1] == "3")
	puts "Результат: Номер первого положительного элемента: ",first_positive(arr_int)
else 
	puts "Результат: Чел, собирай утром рюкзачек и иди на алгебру"
end

