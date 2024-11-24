extends Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func clear():
	text = ""

func addCharacter(symbol: String):
	text = text + symbol

func calculate():
	var multiplicandos = text.split("*")
	
	var resultado = 1
	var i = 0
	print(multiplicandos)
	for suma in multiplicandos:
		var suma2 = suma.replace("-","+-")
		suma2 = suma2.split("+")
		var acumulador = 0
		for elemento in suma2:
			acumulador = int(elemento) + acumulador
		multiplicandos[i] = str(acumulador)
		i = i +1
	
	for elemento in multiplicandos:
		resultado = resultado * int(elemento)
	text= str(resultado)
