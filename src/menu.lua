---@diagnostic disable: discard-returns
--REQUERIDOS
require "Avanzadas"
require "basicas"
require "LUMAR"

--MENU CIENTIFICO
function Cientifico()
    --VARIABLES
    local operaciones = {"Coseno"}

    io.write(operaciones[1])

    local input = io.read("*l")

    if input == operaciones[1] then
        coseno(io.read("*n"))
    end
end

--ESTE ES LE MENU CONVENCIONAL
function MenuEspecial()
    local operaciones = {"Suma", "Resta", "Multiplicacion", "Division", "Potencia", "Raiz", "Pi", "Coseno"}

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
function MenuTrabajado()
    --VARIABLES DE LA FUNCION
    local keyWord1 = "Normal"
    local keyWord2 = "Cientifica"
    local br = "\n"
    local modos = {"Normal", "Cientifica"}

    --IMPRIMIR LOS MODOS DE TRABAJO
    io.write(modos[1], br)
    io.write(modos[2], br, br)

    local input = io.read("*l")
    io.write(br)

    if input == keyWord1 then
        MenuEspecial()
    end

    if input == keyWord2 then
        Cientifico()
    end
end

--FUNCION PARA CREAR UN TEXTO DE INICO EN LAS AVANZADAS
function AvanzadasInicio()
    --VARIABLES ESPECIALES
    local br = "\n"
    Op = {
        "Seno",
        "Coseno",
        "Tangente"
    }

    print("A continuacion seleccione la operacion cientifica que desea realizar")

    io.write(Op[1], br)
    io.write(Op[2], br)
    io.write(Op[3], br, br)

end

--cientifico()