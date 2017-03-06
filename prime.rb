
def pegaPrimo(min, max)
	minimo = min
	while minimo <= max

	 	numeros = 0
	 	raiz = Math.sqrt(minimo)
	 	limite = raiz.to_i 
	 	comeco = 2
	 	while comeco < limite + 1
	 		  if minimo%comeco==0 	
	 		  	numeros += 1
	 		  	break
	 		  end
	 		  	 
	 		 comeco+=1
	 	end

	 		puts minimo  if numeros < 1 
	 			 
	 		
		minimo+=1
	end
	puts 
	
end


		
def arruma(i)
	i.times do |x|
		num = gets
		numero = num.split
		break if numero ==1

		    min = numero[0].to_i
			max = numero[1].to_i
			minTermos = min>=1 && min <= max
			maxTermos = max >= min && max<= 1000000000
			termosDiff = (max - min) <=100000 
			break if !minTermos || !maxTermos || !termosDiff
			min = 2 if min == 1
			pegaPrimo(min,max)
	end
	
end
 

num = gets 
j=0
ocorrencias = 10
  while num
	   if num.split.length == 1
	   	    ocorrencias = num.split[0].to_i

	   	arruma(ocorrencias)
	   else
	   	break
	   end

			
			num = gets 
       end