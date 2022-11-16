--REQUERIDOS
require "Avanzadas"
require "basicas"

--MENU CIENTIFICO
function cientifico()
    --VARIABLES
    local operaciones = {"Coseno"}

    io.write(operaciones[1])

    local input = io.read("*l")

    if input == operaciones[1] then
        coseno(io.read("*n"))
    end
end

--ESTE ES LE MENU CONVENCIONAL
function menuEspecial()
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
end

--ESTEES EL MENU TRABAJADO
function menuTrabajado()
    --VARIABLES DE LA FUNCION
    local keyWord1 = "Normal"
    local keyWord2 = "Cientifica"
    local modos ={"Normal", "Cientifica"}

    --BIENVENIDA 
    print("Hola bienvenido a LUMAR. Acontinuacion le pediremos que escoja el modo con el que desea trabajar")

    io.write(modos[1])
    io.write(modos[2])

    local input = io.read("*l")

    if input == keyWord1 then
        menuEspecial()
    end

    if input == keyWord2 then
        cientifico()
    end
end

function algoRandom()
    
end