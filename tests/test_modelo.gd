func ejecutar() -> bool:
	var historia = Historia.new()
	historia.titulo = "El templo perdido"

	var parrafo1 = Parrafo.new()
	
	parrafo1.num_parrafo = 1
	parrafo1.titulo = "La entrada"
	parrafo1.texto = "Después de tres días de viaje..."
	parrafo1.siguientes.assign([2, 3])

	historia.parrafos.append(parrafo1)

	if historia.titulo != "El templo perdido":
		return false

	if historia.parrafos.size() != 1:
		return false

	if historia.parrafos[0].num_parrafo != 1:
		return false

	if historia.parrafos[0].titulo != "La entrada":
		return false

	if historia.parrafos[0].siguientes != [2, 3]:
		return false

	return true
