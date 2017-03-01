
def pegaPrimo(min, max)
	minimo = min
	while minimo <= max

	 	numeros = 0
	 	limite = minimo

	 	while limite > 1
	 		  numeros +=1 if minimo%limite==0	 		 	
	 		  break if numeros > 1
	 		 limite-=1
	 	end

	 		 puts minimo if numeros == 1
	 			
		minimo+=1
	end
	puts 
	
end
num = gets 

while num
	numTeste = num.split
		
		if numTeste.length == 1
			break if numTeste[0].to_i >=10
			numDeOcorrencias = numTeste
		else
			min = numTeste[0].to_i
			max = numTeste[1].to_i
			minTermos = min>=1 && min <= max
			maxTermos = max >= min && max<= 1000000000
			termosDiff = (max - min) <=100000 
			break if !minTermos || !maxTermos || !termosDiff
			pegaPrimo(min,max)
		end 
		
	num = gets
	
end


