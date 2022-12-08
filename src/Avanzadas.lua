--SCRIPTS REQUERIDOS
require "menu"
require "timer"

--FUNCION ENGLOBADORA
function AvanGlobal()
	
	--IMPRIMIR EL MENU DE AVANZADAS
	AvanzadasInicio()

	--CAMBIAR DE GRADOS A RADIANES
	local function degToRad()
	
		n = io.read("n")
		local constante = 180

		local calc1 = math.pi * n
		Radianes = calc1 / constante

		return n, Radianes

	end

	function coseno()
		-- TRANSFORMARDE RADIANES A GRADOS
		degToRad()
	
		--Coseno
		print("El coseno de " .. n  .. " Es igual a:")

		if n == 90 then
			print(0)
			os.exit()
		end

		local cos = math.cos(Radianes)

		return print(cos)
	end

	function tangente()

		degToRad()

		--LA TANGENTE
		print("La tangente de " .. n .. " Es igual a:")

		--CORRECCIONDE BUG
		if n == 90 then
			print("No calculable")
			os.exit()
		end

		local tan = math.tan(Radianes)

		return print(tan)

	end

	function seno()

		degToRad()

		--SENO
		print("El seno de " .. n .. " Es igual a:")

		local sen = math.sin(Radianes)

		return print(sen)
	end
end

--DEBUGGEAR LAFUNCION
--coseno()
--tangente()
--seno()