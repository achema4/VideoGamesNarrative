func ejecutar() -> bool:
	var historia = Historia.new()
	historia.titulo = "El templo perdido"

	var parrafo1 = Parrafo.new()

	parrafo1.num_parrafo = 1
	parrafo1.titulo = "La entrada"
	parrafo1.texto = "Después de tres días de viaje..."

	var siguiente2 = Siguiente.new()
	siguiente2.num_parrafo = 2
	siguiente2.texto = "Seguir el camino"

	var siguiente3 = Siguiente.new()
	siguiente3.num_parrafo = 3
	siguiente3.texto = "Entrar en la cueva"

	parrafo1.siguientes.append(siguiente2)
	parrafo1.siguientes.append(siguiente3)

	historia.parrafos.append(parrafo1)

	if historia.titulo != "El templo perdido":
		print("[FAIL] El título de la historia no coincide")
		return false

	if historia.parrafos.size() != 1:
		print("[FAIL] La historia no tiene 1 párrafo")
		return false

	if historia.parrafos[0].num_parrafo != 1:
		print("[FAIL] El número del párrafo no es 1")
		return false

	if historia.parrafos[0].titulo != "La entrada":
		print("[FAIL] El título del párrafo no coincide")
		return false

	if historia.parrafos[0].siguientes.size() != 2:
		print("[FAIL] El párrafo no tiene 2 siguientes")
		return false

	if historia.parrafos[0].siguientes[0].num_parrafo != 2:
		print("[FAIL] El primer siguiente no apunta al párrafo 2")
		return false

	if historia.parrafos[0].siguientes[0].texto != "Seguir el camino":
		print("[FAIL] El texto del primer siguiente no coincide")
		return false

	if historia.parrafos[0].siguientes[1].num_parrafo != 3:
		print("[FAIL] El segundo siguiente no apunta al párrafo 3")
		return false

	if historia.parrafos[0].siguientes[1].texto != "Entrar en la cueva":
		print("[FAIL] El texto del segundo siguiente no coincide")
		return false

	return true
