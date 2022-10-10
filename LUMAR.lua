--CALCULADORA LUMAR

--Scrits requeridos
require "Avanzadas"
require "basicas"

--PONER TEXTO
function texto()
	-- body
	print("Inserte un numero y presiene enter, despues inserte otro numero")

	return
end

function texto_de_potencia()
	-- body
	print("Inserte el numero que decea potenciar", "\n")
	print("Despues inserte la potencia a la que se elevara", "\n")
end

function texto_de_raiz()
	-- body
	print("Inserte el numero del cual quiere obtener su raiz")
end

function texto_de_pi()
	-- body
	print("El valor de PI es:")
end



--FUNCION PRINCIPAL
function main()
	-- body

	--variables
	local keyWord1 = "Suma"
	local keyWord2 = "Resta"
	local keyWord3 = "Multiplicacion"
	local keyWord4 = "Division"
	local keyWord5 = "Potencia"
	local keyWord6 = "Raiz"
	local keyWord7 = "Pi"
	local keyWord8 = "Coseno"
	local operaciones = {"Suma", "Resta", "Multiplicacion", "Division", "Potencia", "Raiz", "Pi", "Coseno"}

	print("Bienvenido a la calculadora 'LUMAR'", "\n")
	io.read("*l")

	print("Como primer paso tienes que seleccionar que operacion realizaras", "\n")
	io.read("*l")

	print("Acontinuacion apareceran las operaciones selecciona la tuya", "\n")
	io.read("*l")

	io.write(operaciones[1], "\n")
	io.write(operaciones[2], "\n")
	io.write(operaciones[3], "\n")
	io.write(operaciones[4], "\n")
	io.write(operaciones[5], "\n")
	io.write(operaciones[6], "\n")
	io.write(operaciones[7], "\n")
	io.write(operaciones[8], "\n")

	print("Escibe tu operacion a realizar", "\n")
	--Variable especial
	local input = io.read("*l")

	if input == keyWord1 then
		io.write(texto())
		io.write(sum(io.read("*n"), io.read("*n")))
	end

	if input == keyWord2 then
		io.write(texto())
		io.write(less(io.read("*n"), io.read("*n")))
	end

	if input == keyWord3 then
		io.write(texto())
		io.write(per(io.read("*n"), io.read("*n")))
	end

	if input == keyWord4 then
		io.write(texto())
		io.write(between(io.read("*n"), io.read("*n")))
	end

	if input == keyWord5 then
		io.write(texto_de_potencia())
		print(power(io.read("*n"), io.read("*n")))
	end

	if input == keyWord6 then
		io.write(texto_de_raiz())
		print(squere(io.read("*n")))
	end

	if input == keyWord7 then
		print(texto_de_pi())
		print(pi_val())
	end

	if input == keyWord8 then
		print("Inserta el coseno a calcular")
		print(coseno(io.read("*n")))
	end

	print("\n")

	return
end

--GENERAR TODO
main()

print("Muchas gracias por usar 'LUMAR'")

os.exit()