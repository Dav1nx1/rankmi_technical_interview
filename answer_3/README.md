Creado por Oscar Corcho, para Rankmi tech interview.

Enunciado . 

3.- El clima organizacional es la expresión personal de la percepción que los trabajadores y directivos se
forman de la organización a la que pertenecen y que incide directamente en el desempeño de la organización.
Este indicador se mide a través de encuestas realizadas a los colaboradores pertenecientes a la totalidad o a
un segmento de áreas de la empresa. El promedio de las evaluaciones de los colaboradores es asociado al
área a la que pertenecen y representa la nota obtenida por dicha área en la evaluación.
Por ejemplo:

Si se considera la jerarquía anterior, la nota del área Gerencia general está dada por el promedio de las notas
de las áreas Gerencia finanzas, Gerencia operaciones y Gerencia Tecnología. A su vez, la nota de las áreas
Gerencia de finanzas, Gerencia operaciones y Gerencia tecnología está dada por el promedio de las notas de
sus áreas hijo.

Vamos a asumir que las encuestas ya fueron respondidas y los resultados calculados.

Se requiere crear un api utilizando RoR que permita almacenar los resultados para una jerarquía de N
niveles con 0 a N áreas hijo por area padre. (las tablas creadas deben ser poblada con seeds o como se
estime conveniente).
- Si falla la inserción de algún dato durante el request la operación debe ser cancelada volviendo a su
estado inicial
- El api debe tener un endpoint que retorne la jerarquía de áreas creada con sus respectivas notas ya
calculadas. Debe responder en formato json con una estructura similar a la siguiente:

Generar un endpoint que permite agregar un nuevo hijo a un área ya creada. Al crearse el nuevo hijo se
debe recalcular la nota de las áreas superiores.

Generar un endpoint que permita cambiar un área dentro de la jerarquía. Los resultados deben ser
recalculados al realizarse el cambio.