# Informe de evaluación — *Yuyos de la Quebrada de Cafayate*

## 1. Encabezado

- **Commit evaluado:** `94eff35` (rama `main`, 24/09/2026 06:57 −03), «Seguridad: sin lavados oculares en el algarrobo; liga advertida como tóxica en ficha y nota de lectura».
- **Fecha:** 24 de septiembre de 2026.
- **Evaluó:** Claude (Anthropic), a pedido de Eduardo Diedrich.
- **Material leído:** `cafayate.tex`, `contratapa-texto.tex`, `cubierta.tex`, `cafayate.pdf` y `cubierta.pdf` commiteados (interior de 60 págs.) y las 23 láminas de `img/`.

**Nota de método.** El repositorio sigue sin `evalua.py`. Calculé los puntajes automáticos aplicando la definición de cada control, con los mismos criterios que en las evaluaciones de `bea8a8e` y `a3b9a88`, para que las tres sean comparables. El fuente compila. En mi entorno falta `spanish.ldf` y compilé cargando el español con `\babelprovide`, así que el control de renglones desbordados es aproximado. Todo lo demás se midió sobre el PDF commiteado, que corresponde al fuente de este commit. Las páginas se citan por el folio impreso.

El `evalua.json` commiteado en `94eff35` trae los puntajes manuales de la evaluación de `a3b9a88`. Hay que reemplazarlo por el que acompaña este informe.

**Qué cambió desde `a3b9a88`:**

- Se quitaron los lavados oculares del algarrobo.
- La liga ahora figura como tóxica en su caja y en la nota de lectura.
- La lámina de la liga se achicó y quedó en la misma página que su ficha.
- Se rehízo la lámina 16.

## 2. Condiciones excluyentes

| # | Condición | ¿Se da? | Caso |
|---|---|---|---|
| 1 | No compila / no hay PDF | No | — |
| 2 | Planta tóxica con dosis de uso interno | No | Retama, cepa caballo, paico, liga, chamico y palán palán, todas sin dosis. |
| 3 | Promesa de curar enfermedad grave sin aclarar falta de evidencia | No | Tusca y sífilis (p. 18), sombra de toro y alcoholismo (p. 19), liga y cáncer (p. 35): las tres tienen su caja. |
| 4 | Ilustración de una especie distinta de la ficha | No | — |
| 5 | Falta una imagen referenciada | No | Las 23 existen. |
| 6 | Planta tóxica con nombre científico equivocado | No | — |

No se da ninguna condición excluyente.

## 3. Tabla de puntajes

| # | Dimensión | Automático | Manual | Total |
|---|---|---:|---:|---:|
| 1 | Contenido, fidelidad y estructura | 1,71 / 2 | 12 / 13 | 13,71 / 15 |
| 2 | Rigor botánico | 4,00 / 4 | 6 / 8 | 10,00 / 12 |
| 3 | Seguridad sanitaria | 7,00 / 7 | 5 / 6 | 12,00 / 13 |
| 4 | Redacción y estilo | — | 6 / 8 | 6,00 / 8 |
| 5 | Corrección ortotipográfica | 3,00 / 4 | 5 / 6 | 8,00 / 10 |
| 6 | Ilustraciones | 3,60 / 4 | 6 / 8 | 9,60 / 12 |
| 7 | Diseño y maquetación | 2,00 / 2 | 4 / 8 | 6,00 / 10 |
| 8 | Aparato editorial y paratextos | 3,75 / 4 | 2 / 4 | 5,75 / 8 |
| 9 | Preimpresión y producción | 4,00 / 5 | 1 / 2 | 5,00 / 7 |
| 10 | Derechos y aspectos legales | 0,50 / 1 | 2 / 4 | 2,50 / 5 |
| | **Nota analítica** | **29,57** | **49** | **78,57** |
| | **Nota holística** | | | **80** |

Evaluaciones anteriores:

| Commit | Analítica | Holística | Veredicto |
|---|---:|---:|---|
| `bea8a8e` | 64,88 | 66 | NO APTO |
| `a3b9a88` | 74,64 | 78 | Otra ronda |
| `94eff35` | 78,57 | 80 | Apto con correcciones menores |

## 4. Observaciones por dimensión

### 1. Contenido, fidelidad y estructura — Excelente (12)

*Automático (1,71).* 18 de 21 fichas superan las 60 palabras sin contar las cajas. Quedan cortas retama (59), palán palán (49) y chamico (46), que son cortas a propósito. El algarrobo quedó en 173 palabras después del recorte.

*Manual.* Se resolvió la única falla de fidelidad que quedaba. La nota «Sobre esta edición» (p. ix) dice que el libro no incluye aplicaciones en los ojos, y ahora la ficha del algarrobo (p. 13) lo cumple. Con eso también desaparece la versión desvirtuada de las «cataratas» del cuadernillo. Siguen en pie la voz de la autora y de los vecinos, los usos restituidos de cepa caballo (p. 24) y molle (p. 15) y la estructura por capítulos. No llega a 13 porque las tres fichas de «Las que no se tocan» siguen muy magras para reconocer la planta sin la lámina.

### 2. Rigor botánico — Bueno (6)

*Automático (4).* Los 21 nombres están bien formados y no hay afirmaciones tajantes sin atribuir.

*Manual.* La nomenclatura sigue bien, con fuente citada, criterio uniforme para «spp.» y «sin.», y la aclaración de la salvia mora. Siguen sin corregirse las atribuciones presentadas como hechos:

- **Cedrón** (p. 27): «alivia jaquecas y fiebres», «con buen resultado sobre las palpitaciones».
- **Paico** (p. 35): «Es digestivo, distiende el intestino, calma los cólicos».
- **Marrubio** (p. 31): «Controla la acidez».
- **Llantén** (p. 33): «un par de cucharaditas al día disminuyen el dolor de las úlceras».
- **Atamisqui** (p. 18): «La infusión es buen reconstituyente hepático».
- **Liga** (p. 35): «Es un fuerte depurador de la sangre». Este caso no se había señalado antes.

El hábito del atamisqui («Arbusto grande, de hasta un metro y medio», p. 18) sigue sin corregir.

### 3. Seguridad sanitaria — Bueno (5)

*Automático (7).* Ninguna planta con advertencia de toxicidad trae dosis, incluida la liga, que ahora entra en el control. La nota cubre la consulta y la evidencia, y trae el 0800.

*Manual.* Las dos contradicciones que dejaban esta dimensión en Suficiente están resueltas:

- **Algarrobo** (p. 13): ya no recomienda lavados oculares, y la nota y la ficha coinciden.
- **Liga** (p. 35): la caja la nombra como tóxica, sobre todo los frutos, y enumera los síntomas. La nota de lectura la cuenta entre las cuatro plantas de toxicidad conocida, y el † del índice de dolencias ahora tiene respaldo. La caja además relaciona la baja de presión con el uso hipotensor de la ficha.

Quedan faltas menores, que impiden el 6:

- **Molle** (p. 15): la bebida de cáscara del fruto «para adelgazar» no tiene ninguna salvedad.
- **Llantén** (p. 33): la precaución de las gotas en el oído va dentro del texto y no en caja.
- **Cedrón** (p. 27): se lo recomienda para las palpitaciones sin ningún aviso a quien tenga una afección cardíaca o tome medicación para el corazón.

### 4. Redacción y estilo — Bueno (6)

No hubo cambios en los pasajes señalados:

- Salvia mora (p. 29): «como antiespasmódico dice que da muy buenos resultados», y dos veces dos puntos en la misma oración.
- Llantén (p. 33): «a la planta, usada en tos, bronquitis, laringitis y faringitis, se le atribuyen…».
- Página xi: «Al tener un enfermo más, tienen un eslabón más», sin sujeto claro.

Los agregados de este commit están bien escritos: la oración nueva del algarrobo y la caja de la liga. Las citas del cuadernillo siguen sin distinguirse del texto editorial fuera de los epígrafes.

### 5. Corrección ortotipográfica — Bueno (5)

*Automático (3).* No hay comillas rectas (1) ni guiones por raya (1), y los géneros van en cursiva (1). El control de palabras repetidas sigue en 0 por los «palán palán», que son un falso positivo.

*Manual.* Los criterios siguen uniformes. Sigue el error de correspondencia del epígrafe de la lámina 14 (p. 32), que llama a arcayuyo y marrubio «los dos amargos» cuando la ficha del arcayuyo (p. 28) lo describe de sabor dulce.

### 6. Ilustraciones — Bueno (6)

*Automático (3,60).* Las imágenes existen (1). La resolución baja de 2,68 a 2,60 porque la nueva lámina 16 mide 896 × 1200 contra los 1792 × 2400 de la anterior: queda en 217 ppp en la p. 20. Hay siete imágenes debajo de 300 ppp:

- láminas 15 y 16, a 217 ppp;
- apertura de la parte I y canasto, a 238;
- infusión y tintura, a 267;
- tapa y contratapa, a 249.

Es la segunda vez que una lámina rehecha entra a la mitad de resolución que la que reemplaza.

*Manual.* La lámina 16 (p. 20) está bien resuelta. El atamisqui ahora se reconoce por sus hojas emarginadas, las ramas verde amarillentas, la flor blanca de estambres largos y el fruto globoso. Además la lámina perdió el paisaje enmarcado, así que el estilo de las láminas de fichas quedó más parejo. Quedan dos detalles botánicos en la lámina 19 (p. 40), justo en las plantas venenosas:

- **Palán palán:** aparece como hierba con raíz, y es un arbusto.
- **Chamico:** la espinación del fruto corresponde a *D. stramonium* más que a *D. ferox*.

Esos dos detalles son el límite superior de Bueno.

### 7. Diseño y maquetación — Suficiente (4)

*Automático (2).* No hay *overfull hbox* en mi compilación, que es aproximada.

*Manual.* La liga y su lámina ahora comparten la p. 35, lo que es una mejora. La p. 38 queda en blanco antes del capítulo 7, que abre en impar; es convencional y no la cuento como falla. Lo demás sigue igual:

- **p. 26:** página con la cornisa, el folio y el filete de cierre del capítulo 4, y nada más.
- **pp. 19, 21, 28, 29, 31 y 34:** entre un tercio y la mitad de la página en blanco. Tres de ellas son del capítulo 5.
- **Cornisas y folios de las láminas:** las láminas flotantes llevan cornisa y folio, y las de página entera (pp. 14, 16, 17 y 22) no.

### 8. Aparato editorial y paratextos — Suficiente (2)

*Automático (3,75).* El índice de plantas está completo (1) y el de dolencias no nombra plantas sin ficha (1). En la bibliografía, 6 de 8 referencias tienen año o URL (0,75). No hay referencias sin resolver (1).

*Manual.* No hubo cambios:

- **Colofón** (p. 47): fecha, imprenta, papel y tirada siguen en `\pendiente`.
- **Bibliografía** (p. 45): Burgstaller y «Fernández y Huiaracha» siguen sin lugar ni año, y la segunda sin nombres de pila. Los sitios no tienen fecha de consulta.
- **Glosario:** faltan cardiotónico, enuresis y antiséptico.

### 9. Preimpresión y producción — Suficiente (1)

*Automático (4).*

- **Fuentes:** todas incrustadas, sin Type 3 (1).
- **Páginas:** 60, múltiplo de 4 (1).
- **Tamaño:** 17 × 24 cm en todas las páginas (1).
- **Demasía:** no hay láminas a sangre en el interior, así que el control se cumple sin casos (1).
- **Perfil de color:** ningún PDF lleva *OutputIntent* (0).

*Manual.* Están resueltos la cubierta aparte, con lomo y demasía, y el negro del texto en 100 % K. Faltan la conversión a CMYK con prueba de color, porque las 23 imágenes siguen en RGB, y las especificaciones de papel y encuadernación con la imprenta.

### 10. Derechos y aspectos legales — Suficiente (2)

*Automático (0,5).* No hay ISBN (0). La leyenda de la Ley 11.723 está (0,5).

*Manual.* No hubo cambios. La licencia sigue pendiente («a definir con la autora»), el ISBN está en trámite y no hay constancia del consentimiento de la autora ni de los vecinos nombrados, ni del origen de las láminas.

## 5. Nota analítica

**78,57 / 100.**

## 6. Nota holística

**80 / 100.**

Por primera vez el libro no se contradice: lo que la nota de lectura promete, las fichas lo cumplen, y las plantas peligrosas se presentan como tales en la caja, en la nota y en el índice. Se oye el cuadernillo, las láminas sirven para reconocer en el campo y el atamisqui ya se puede identificar. Lo que más lo perjudica es que no está terminado. Los recuadros amarillos de créditos y colofón saldrían impresos, el capítulo 5 tiene páginas a medio llenar y algunas fichas todavía afirman como hechos lo que es tradición. Eso pesa, pero afecta la forma y el matiz, no la confianza: un lector que lleve este libro al monte no corre riesgo por seguirlo.

## 7. Divergencia

No hay: 1,43 puntos de diferencia.

## 8. Veredicto

**Apto con correcciones menores, que no requieren otra ronda de evaluación.** No se da ninguna condición excluyente. La nota analítica de 78,57 cruza el umbral de 75.

Las correcciones menores son estas:

- **Los `\pendiente` de la p. iv y del colofón.** Son la corrección obligatoria: sin licencia nombrada, sin ISBN y sin datos de impresión, el PDF no puede salir tal como está, aunque completarlos no cambie la evaluación.
- **La resolución de las láminas 15 y 16.** Hay que volver a exportarlas a 1792 × 2400 o más.
- **Tres frases de seguridad:** la salvedad del molle para adelgazar, la caja del llantén en el oído y el aviso cardíaco del cedrón.
- **El epígrafe de la lámina 14 y las dos referencias sin año.**

Los blancos del capítulo 5 y la página 26 son lo que más se ve al hojear. No bloquean la impresión, pero son lo próximo que conviene resolver si hay tiempo.
