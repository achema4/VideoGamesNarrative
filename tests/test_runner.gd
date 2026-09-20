extends Node

const TestModelo = preload("res://tests/test_modelo.gd")


func _ready() -> void:
	print("================================")
	print("     VIDEO GAMES NARRATIVE")
	print("          TEST RUNNER")
	print("================================")

	var test_modelo = TestModelo.new()

	ejecutar_test("Modelo", test_modelo.ejecutar())


func ejecutar_test(nombre: String, resultado: bool) -> void:
	if resultado:
		print("[PASS] ", nombre)
	else:
		print("[FAIL] ", nombre)
