# Informe de evaluación — *Yuyos de la Quebrada de Cafayate*

## 1. Encabezado

- **Commit evaluado:** `a3b9a88` (rama `main`, 24/09/2026 06:29 −03), «Correcciones de la evaluación editorial».
- **Fecha:** 24 de septiembre de 2026.
- **Evaluó:** Claude (Anthropic), a pedido de Eduardo Diedrich.
- **Material leído:** `cafayate.tex`, `contratapa-texto.tex`, `cubierta.tex`, `cafayate.pdf` y `cubierta.pdf` commiteados (interior en modo imprenta, 60 págs.), las 23 láminas de `img/` y las fotos del cuadernillo original.

**Nota de método.** El repositorio sigue sin `evalua.py`. Calculé los puntajes automáticos aplicando al pie de la letra la definición de cada control, con los mismos criterios que en la evaluación de `bea8a8e`, para que las dos sean comparables. El fuente compila; en mi entorno falta `spanish.ldf` y compilé cargando el español por `\babelprovide`, así que el control de renglones desbordados es aproximado. Todo lo demás se midió sobre el PDF commiteado. Las páginas se citan por el folio impreso.

El `evalua.json` commiteado en `a3b9a88` todavía trae los puntajes manuales de `bea8a8e`. Con el script, `--ref a3b9a88` leería esos puntajes viejos: hay que reemplazarlo por el que acompaña este informe.

## 2. Condiciones excluyentes

| # | Condición | ¿Se da? | Caso |
|---|---|---|---|
| 1 | No compila / no hay PDF | No | — |
| 2 | Planta tóxica con dosis de uso interno | No | Retama, cepa caballo, paico, chamico y palán palán sin dosis. |
| 3 | Promesa de curar enfermedad grave sin aclarar falta de evidencia | No | Tusca/sífilis (p. 18), liga/cáncer (p. 35) y sombra de toro/alcoholismo (p. 19) tienen su caja. |
| 4 | Ilustración de una especie distinta de la ficha | No | La lámina 15 (p. 36) ahora muestra llantén, cola de caballo y paico. Resuelta. |
| 5 | Falta una imagen referenciada | No | Las 23 existen. |
| 6 | Planta tóxica con nombre científico equivocado | No | — |

Ninguna condición excluyente.

## 3. Tabla de puntajes

| # | Dimensión | Automático | Manual | Total |
|---|---|---:|---:|---:|
| 1 | Contenido, fidelidad y estructura | 1,71 / 2 | 11 / 13 | 12,71 / 15 |
| 2 | Rigor botánico | 4,00 / 4 | 6 / 8 | 10,00 / 12 |
| 3 | Seguridad sanitaria | 7,00 / 7 | 3 / 6 | 10,00 / 13 |
| 4 | Redacción y estilo | — | 6 / 8 | 6,00 / 8 |
| 5 | Corrección ortotipográfica | 3,00 / 4 | 5 / 6 | 8,00 / 10 |
| 6 | Ilustraciones | 3,68 / 4 | 5 / 8 | 8,68 / 12 |
| 7 | Diseño y maquetación | 2,00 / 2 | 4 / 8 | 6,00 / 10 |
| 8 | Aparato editorial y paratextos | 3,75 / 4 | 2 / 4 | 5,75 / 8 |
| 9 | Preimpresión y producción | 4,00 / 5 | 1 / 2 | 5,00 / 7 |
| 10 | Derechos y aspectos legales | 0,50 / 1 | 2 / 4 | 2,50 / 5 |
| | **Nota analítica** | **29,64** | **45** | **74,64** |
| | **Nota holística** | | | **78** |

Evaluación anterior (`bea8a8e`): analítica 64,88, holística 66, NO APTO.

## 4. Observaciones por dimensión

### 1. Contenido, fidelidad y estructura — Bueno (11)

*Automático (1,71).* 18 de 21 fichas superan las 60 palabras sin contar las cajas. Quedan cortas retama (57), palán palán (47) y chamico (44), que son cortas a propósito. Sigue valiendo la sugerencia de excluir del control las fichas de «Las que no se tocan».

*Manual.* La nueva nota «Sobre esta edición» (p. ix) declara lo que se omitió: la sección «Fitoterapia», los usos contra enfermedades que requieren atención médica y las aplicaciones en los ojos. Volvieron los usos suprimidos de cepa caballo (p. 24) y molle (p. 15). Paico (p. 35), marrubio (p. 31) y salvia mora (p. 29) tienen ahora descripciones que permiten reconocerlas. La voz y la estructura siguen siendo lo mejor del libro.

Queda una falla de fidelidad declarada y no cumplida. La ficha del algarrobo (p. 13) conserva «lavados para infecciones oculares», justo lo que la nota dice haber quitado, y además sigue desvirtuando las «cataratas» del cuadernillo.

### 2. Rigor botánico — Bueno (6)

*Automático (4).* Los 21 nombres están bien formados y no hay afirmaciones tajantes sin atribuir.

*Manual.* La nomenclatura quedó bien:

- La nota cita Flora Argentina y POWO y avisa de la corrección de la tusca.
- *Aloysia citrodora* está corregida (p. 27).
- «spp.» y «sin.» siguen un criterio único.
- Salvia mora aclara que el nombre local designa también especies de *Salvia*. El cuadernillo dice *Lippia alba* en el texto y muestra una *Salvia* azul en las fotos, así que la aclaración era necesaria.

Lo que impide llegar a Excelente son las atribuciones que todavía se presentan como hechos:

- **Cedrón** (p. 27): «alivia jaquecas y fiebres», «con buen resultado sobre las palpitaciones».
- **Paico** (p. 35): «Es digestivo, distiende el intestino, calma los cólicos».
- **Marrubio** (p. 31): «Controla la acidez» y «está recomendada para quienes tratan esa dolencia», dicho de la diabetes.
- **Llantén** (p. 33): «un par de cucharaditas al día disminuyen el dolor de las úlceras de estómago».
- **Atamisqui** (p. 18): «La infusión es buen reconstituyente hepático».

Hay además un detalle de hábito en el atamisqui: «Arbusto grande, de hasta un metro y medio». Es contradictorio en sí mismo, y la especie suele superar esa altura.

### 3. Seguridad sanitaria — Suficiente (3)

*Automático (7).* Ninguna planta tóxica trae dosis. La nota cubre la consulta y la evidencia, y trae el 0800.

*Manual.* El avance es grande:

- Jarilla (p. 23) tiene una advertencia hepática y renal bien escrita.
- Salvia mora (p. 29) y marrubio (p. 31) advierten sobre el embarazo.
- La tusca tiene su caja sobre la sífilis (p. 18).
- Arcayuyo (p. 28) y marrubio advierten sobre la interacción con medicación.
- El índice de dolencias distingue † de ‡.
- Las cajas ya no se cortan.

Si no fuera por lo que sigue, esta dimensión estaría en 5. La rúbrica, sin embargo, pone en Suficiente cualquier contradicción visible entre la nota y las fichas, y hay dos:

- **Algarrobo** (p. 13). La nota de lectura dice que el libro no incluye aplicaciones en los ojos, y la ficha recomienda lavados oculares con un preparado casero, sin advertencia. Es la falla de seguridad más concreta que queda.
- **Liga** (p. 35). En el índice de dolencias lleva †, que significa advertencia de toxicidad, pero ni su caja ni la nota de lectura la nombran como tóxica. La nota enumera cinco plantas tóxicas y la liga no está entre ellas.

Hay también dos faltas menores:

- La bebida de cáscara de fruto de molle «para adelgazar» (p. 15) no tiene ninguna salvedad.
- La precaución de las gotas de llantén en el oído (p. 33) va dentro del texto y no en caja.

### 4. Redacción y estilo — Bueno (6)

La prosa sigue siendo cuidada y cercana. Se corrigieron los cambios de género de la cepa caballo. Algunos agregados nuevos quedaron torpes:

- «La tradición la considera un excelente digestivo, y como antiespasmódico dice que da muy buenos resultados», y dos veces dos puntos en la misma oración: «vías respiratorias: tos, faringitis, laringitis: se le atribuye…» (salvia mora, p. 29).
- «a la planta, usada en tos, bronquitis, laringitis y faringitis, se le atribuyen…» (llantén, p. 33).
- Sigue sin sujeto claro «Al tener un enfermo más, tienen un eslabón más» (p. xi).

Las citas del cuadernillo siguen sin distinguirse del texto editorial fuera de los epígrafes y de la única caja de la p. 8.

### 5. Corrección ortotipográfica — Bueno (5)

*Automático (3).* No hay comillas rectas ni guiones por raya (1 + 1), y todos los géneros van en cursiva, incluida *Datura* en p. 39 (1). El control de palabras repetidas vuelve a dar 0 por los cuatro «palán palán», que es un falso positivo. También marcaría «p. ej.,» y «S. l., s. f.», que son correctos.

*Manual.* Los criterios quedaron uniformes:

- «spp.» y «sin.» van en redonda en todas partes.
- Desapareció «y especies afines».
- La jarilla se llama igual en la lámina y en la ficha.
- Las unidades van en letra.
- «solo» va sin tilde en todo el libro.
- Los epígrafes terminan en punto.

Queda un error de correspondencia entre textos. El epígrafe de la lámina 14 (p. 32) llama a arcayuyo y marrubio «los dos amargos», y la ficha del arcayuyo (p. 28) y el epígrafe del capítulo 5 dicen que el arcayuyo es de sabor dulce, parecido a la miel.

### 6. Ilustraciones — Bueno (5)

*Automático (3,68).* Las imágenes existen (1). Hay seis imágenes debajo de 300 ppp: la nueva lámina 15 (217 ppp, p. 36), la apertura de la parte I y el canasto (238), infusión y tintura (267), y tapa y contratapa en `cubierta.pdf` (249 a 253). Eso da 2,68. La lámina 15 reemplazó un archivo de 1792 × 2400 por uno de 896 × 1200, lo que es una regresión de resolución.

*Manual.* Las tres láminas rehechas son buenas:

- La 15 (p. 36) muestra la roseta con espigas del llantén, el tallo articulado de la cola de caballo con estróbilo y el paico con sus glomérulos en espigas foliosas.
- La 13 (p. 30) muestra el cedrón con hojas verticiladas, el incayuyo con cabezuelas blanquecinas y la *Lippia alba* con cabezuelas lilas axilares.
- La 14 (p. 32) muestra el marrubio con verticilastros blancos y tallo cuadrado.

Desapareció la textura repetida entre las láminas 13 y 16. Quedan estos problemas:

- **Atamisqui** (lámina 16, p. 20): el arbusto es genérico, sin sus hojas emarginadas ni su flor.
- **Palán palán** (lámina 19): aparece como hierba con raíz.
- **Chamico** (lámina 19): la espinación es de *D. stramonium* más que de *D. ferox*.
- **Estilos:** conviven láminas con paisaje enmarcado arriba (12, 16) y láminas limpias sobre fondo crema (13, 14, 15).

El mensaje del commit dice «láminas 13, 14, 15 y 16 corregidas», pero `img/16-lamina-arboles-espinosos.jpg` no cambió.

### 7. Diseño y maquetación — Suficiente (4)

*Automático (2).* No hay *overfull hbox* en mi compilación, que es aproximada (ver la nota de método).

*Manual.* Mejoró mucho respecto de `bea8a8e`:

- Las advertencias ya no se cortan.
- Las láminas están junto a sus fichas.
- El título de la parte I corta bien.
- La cubierta salió del interior.

Pero la maquetación no quedó «sin blancos», como dice el commit:

- **p. 26:** página con la cornisa, el folio y el filete de cierre del capítulo 4, y nada más.
- **pp. 21, 28, 29, 31 y 34:** entre un tercio y la mitad de la página en blanco. Cuatro de esas páginas son casi seguidas, en el capítulo 5.
- **p. 6:** cierre del capítulo 1 con tres líneas y el filete.
- **Cornisas y folios de las láminas:** las láminas flotantes (pp. 20, 25, 30, 32, 36, 37 y 46) llevan cornisa y folio, y las de página entera (pp. 14, 16, 17, 22 y 40) no. Es una inconsistencia visible entre páginas del mismo tipo.

### 8. Aparato editorial y paratextos — Suficiente (2)

*Automático (3,75).* El índice de plantas está completo (1) y el de dolencias no nombra plantas sin ficha (1). En la bibliografía, 6 de 8 referencias tienen año o URL (0,75). No hay referencias sin resolver (1).

*Manual.* Mejoraron varias piezas:

- La contratapa ya presenta el libro (`contratapa-texto.tex`).
- El índice de dolencias quedó corregido: tusca fuera de «Garganta» y dentro de «Reuma», y retama y cola de caballo en «Sangre».
- El glosario ahora trae diurético, expectorante, antipirético, hipotensor, empacho, asentamiento y faras.

El nivel queda en Suficiente por dos piezas que siguen incompletas:

- **Colofón** (p. 47): no tiene datos de impresión. Fecha, imprenta, papel y tirada figuran como `\pendiente`.
- **Bibliografía** (p. 45): Burgstaller y «Fernández y Huiaracha» siguen sin lugar ni año, y la segunda sin nombres de pila. Los sitios consultados no tienen fecha de consulta.

Faltan además en el glosario algunos términos que el texto usa, como cardiotónico, enuresis y antiséptico.

### 9. Preimpresión y producción — Suficiente (1)

*Automático (4).*

- **Fuentes:** todas Type 1 incrustadas (1).
- **Páginas:** 60, múltiplo de 4 (1).
- **Tamaño:** 17 × 24 cm en todas las páginas (1).
- **Demasía:** el interior no tiene láminas a sangre, así que el control se cumple sin casos (1). La cubierta sí declara `TrimBox` y `BleedBox` con 3 mm.
- **Perfil de color:** ninguno de los dos PDF lleva *OutputIntent* ni cumple PDF/X (0).

*Manual.* De los cuatro aspectos, dos están resueltos y dos no:

- **Cubierta aparte:** resuelta, con lomo calculado y demasía.
- **Negro del texto:** resuelto, en 100 % K. Los colores vectoriales están en CMYK.
- **Conversión a CMYK:** falta. Las 23 imágenes siguen en RGB y no hay prueba de color.
- **Especificaciones con la imprenta:** faltan. El espesor del papel (0,11 mm por hoja) está puesto a ojo, «pedirlo a la imprenta».

Con 60 páginas, el lomo da 3,3 mm, poco para una rústica pegada. Si la encuadernación termina siendo a caballete, el pliego pasa a 16 y el libro tiene que llegar a 64 páginas.

### 10. Derechos y aspectos legales — Suficiente (2)

*Automático (0,5).* No hay ISBN (0). La leyenda de la Ley 11.723 está (0,5).

*Manual.* La licencia está marcada como pendiente («a definir con la autora»), así que sigue sin nombrarse. El ISBN está en trámite. No hay constancia del consentimiento de la autora ni de los vecinos nombrados, ni documentación sobre el origen de las láminas.

## 5. Nota analítica

**74,64 / 100.**

## 6. Nota holística

**78 / 100.**

Lo mejor del libro sigue siendo que se oye el cuadernillo, y ahora además se puede confiar en él casi en todo. Las láminas corregidas sirven para reconocer en el campo, las plantas activas tienen su advertencia y la nota explica con honestidad qué se dejó afuera y por qué. Lo que más lo perjudica es que todavía no está terminado. Los recuadros amarillos de «pendiente» en créditos y colofón saldrían impresos, las páginas a medio llenar del capítulo 5 se ven apenas se hojea, y la ficha del algarrobo recomienda justo lo que la nota promete haber quitado. Eso pesa menos que las fallas de la versión anterior, porque ya no engaña al lector sobre qué planta tiene enfrente. Pero todavía no es un libro que una editorial mandaría así a imprenta.

## 7. Divergencia

No hay: 3,4 puntos de diferencia.

## 8. Veredicto

**Requiere otra ronda de corrección y una nueva evaluación.** No se da ninguna condición excluyente. La nota analítica de 74,64 queda a 0,36 del umbral de «apto con correcciones menores».

Las dos correcciones que más pesan en la nota son de una línea cada una:

- Quitar los lavados oculares del algarrobo o ponerles advertencia, y alinear la liga entre índice, caja y nota de lectura. Eso deja seguridad en 5.
- Completar el colofón y las dos referencias sin año. Eso deja el aparato en 3 o 4.

Aparte de la nota, los `\pendiente` amarillos impiden por sí solos mandar el PDF actual a imprenta.
