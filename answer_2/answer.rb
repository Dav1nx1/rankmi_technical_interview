# Usando RUBY Crear un algoritmo al cual se le deba ingresar un array de n números enteros, más un
# número de resultado, ejemplo: Input: numbers={2, 7, 11, 15}, target=9 Este algoritmo debe ser capaz de
# encontrar dos números dentro del array que sumados sean igual al número target, obviamente el algoritmo no
# puede ser un for que vaya sumando todos los números de uno en uno, debe tener mayor inteligencia. El
# resultado debe indicar la posición del array de los números que sumados dan el resultado esperado, ejemplo:
# Output: index1=1, index2=2

def answer_target(array, sum)
  # Se utiliza el metodo combination, para iterar sobre el array, utilizando n campos
  # para efectos de la prueba, se utilizan 2, como lo menciona el enunciado
  array.combination(2).any? { |a, b| return "index1:#{array.index(a)} index2:#{array.index(b)}" if a+b == sum }
  false
end

numbers = [2, 6, 2, 4]
target  = 8

p answer_target(numbers, target)
