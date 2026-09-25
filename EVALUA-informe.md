# Informe de evaluación — *Yuyos de la Quebrada de Cafayate*

## 1. Encabezado

- **Commit evaluado:** `f58132e` (rama `main`, 25/09/2026 19:37 −03), «Correcciones de la evaluación de b4bae3c».
- **Fecha:** 25 de septiembre de 2026.
- **Evaluó:** Claude (Anthropic), a pedido de Eduardo Diedrich.
- **Material leído:**
  - `cafayate.tex`, `contratapa-texto.tex`, `cubierta.tex`, `cmyk.py` y `perfil-salida.tex`;
  - `cafayate.pdf` y `cubierta.pdf` commiteados (interior de 60 págs.);
  - las 23 láminas de `img/` y de `img-cmyk/`;
  - la foto 10 del cuadernillo, para cotejar la frase de la p. xi.

**Nota de método.** El repositorio sigue sin `evalua.py`. Calculé los puntajes automáticos con los mismos criterios que en las cuatro evaluaciones anteriores. Compilé el fuente desde un **clon limpio**; como en mi entorno falta `spanish.ldf`, cargué el español con `\babelprovide`, así que el control de renglones desbordados es aproximado. Las páginas se citan por el folio impreso.

**Reproducibilidad: resuelta.** Con `img-cmyk/`, `perfil-salida.tex` y `perfil-salida.icc` en el repo, el clon limpio compila tomando las láminas CMYK y el PDF resultante declara el *OutputIntent* FOGRA39, igual que el commiteado. El control de perfil de color vale su punto con cualquiera de los dos PDF.

**Qué cambió desde `b4bae3c`:**

- Rayas de cierre en la p. xi y en el incayuyo (p. 28).
- La frase de la p. xi vuelve al texto del cuadernillo.
- Lámina 18 rehecha; la ficha y el epígrafe de la liga hablan de bayas rosadas.
- La lámina de la liga pasa a ancho completo, con 5 cm de alto como máximo.
- `cmyk.py`, `cmyk.bat`, `cmyk.ps1`, el perfil y `img-cmyk/` entran al repositorio.

## 2. Condiciones excluyentes

| # | Condición | ¿Se da? | Caso |
|---|---|---|---|
| 1 | No compila / no hay PDF | No | Compila también desde un clon limpio. |
| 2 | Planta tóxica con dosis de uso interno | No | Retama, cepa caballo, paico, liga, chamico y palán palán, todas sin dosis. |
| 3 | Promesa de curar enfermedad grave sin aclarar falta de evidencia | No | Tusca (p. 15), sombra de toro (p. 18) y liga (p. 36) tienen su caja. |
| 4 | Ilustración de una especie distinta de la ficha | No | — |
| 5 | Falta una imagen referenciada | No | Las 23 existen, en `img/` y en `img-cmyk/`. |
| 6 | Planta tóxica con nombre científico equivocado | No | — |

No se da ninguna condición excluyente.

## 3. Tabla de puntajes

| # | Dimensión | Automático | Manual | Total |
|---|---|---:|---:|---:|
| 1 | Contenido, fidelidad y estructura | 1,71 / 2 | 12 / 13 | 13,71 / 15 |
| 2 | Rigor botánico | 4,00 / 4 | 7 / 8 | 11,00 / 12 |
| 3 | Seguridad sanitaria | 7,00 / 7 | 6 / 6 | 13,00 / 13 |
| 4 | Redacción y estilo | — | 6 / 8 | 6,00 / 8 |
| 5 | Corrección ortotipográfica | 3,00 / 4 | 5 / 6 | 8,00 / 10 |
| 6 | Ilustraciones | 4,00 / 4 | 7 / 8 | 11,00 / 12 |
| 7 | Diseño y maquetación | 2,00 / 2 | 6 / 8 | 8,00 / 10 |
| 8 | Aparato editorial y paratextos | 3,75 / 4 | 2 / 4 | 5,75 / 8 |
| 9 | Preimpresión y producción | 5,00 / 5 | 1 / 2 | 6,00 / 7 |
| 10 | Derechos y aspectos legales | 0,50 / 1 | 2 / 4 | 2,50 / 5 |
| | **Nota analítica** | **30,96** | **54** | **84,96** |
| | **Nota holística** | | | **86** |

Evaluaciones anteriores:

| Commit | Analítica | Holística | Veredicto |
|---|---:|---:|---|
| `bea8a8e` | 64,88 | 66 | NO APTO |
| `a3b9a88` | 74,64 | 78 | Otra ronda |
| `94eff35` | 78,57 | 80 | Apto con correcciones menores |
| `b4bae3c` | 83,96 | 85 | Apto con correcciones menores |
| `f58132e` | 84,96 | 86 | Apto con correcciones menores |

## 4. Observaciones por dimensión

### 1. Contenido, fidelidad y estructura — Excelente (12)

*Automático (1,71).* 18 de 21 fichas superan las 60 palabras sin contar las cajas; quedan cortas retama, palán palán y chamico, como antes.

*Manual.* La frase de la p. xi volvió al texto de la autora: «Al tener un ser enfermo más, tienen un eslabón más en la larga cadena de consumo» coincide con la foto 10 del cuadernillo. El sujeto implícito de «tienen» queda algo suelto, pero es la voz de la autora y corresponde respetarla. No llega a 13 por lo mismo que en `b4bae3c`:

- **Chamico y palán palán** (pp. 37-38): magros para reconocerlos sin la lámina.
- **Molle** (p. 15): sin el nombre local «aguaribay» que trae el cuadernillo.
- **Capítulo 4:** retama y cepa caballo agrupadas como «arbustos resinosos» sin serlo; el epígrafe de la lámina 17 (p. 25) las llama mejor «arbustos del suelo removido».

### 2. Rigor botánico — Excelente (7)

*Automático (4).* Los 21 nombres están bien formados y no hay afirmaciones tajantes sin atribuir.

*Manual.* El cambio de «translúcidas» a «globosas y rosadas» en la liga (p. 36) está respaldado: hay descripciones regionales de *Phoradendron liga* que le dan bayas globosas de color rosado. No es solo acomodar la ficha a la lámina. Siguen como hechos las cuatro afirmaciones ya señaladas, y por eso no llega a 8:

- **Tusca** (p. 15): la corteza «es un desinfectante fuerte».
- **Chilca** (p. 23): «levanta la temperatura corporal» y «activa la circulación».
- **Cola de caballo** (p. 34): «tiene propiedades cicatrizantes y astringentes».
- **Salvia mora** (p. 29): «sudorífica y emenagoga», y «el tratamiento debe continuarse al menos tres o cuatro días».

### 3. Seguridad sanitaria — Excelente (6)

*Automático (7).* Sin dosis en plantas con advertencia; la nota cubre consulta y evidencia; está el 0800.

*Manual.* Sin cambios respecto de `b4bae3c`. Todo riesgo conocido está en caja, el índice de dolencias marca con ‡ las plantas con advertencia y no hay contradicciones. La observación de la posología (p. 10), que en la práctica queda para seis plantas, sigue en pie sin descontar.

### 4. Redacción y estilo — Bueno (6)

Se resolvió la intervención sobre la voz de la autora en la p. xi. Quedan los dos puntos de la ronda anterior, que no se tocaron:

- **Fórmulas de atribución repetidas:** llantén (p. 33) y cedrón (p. 27) encadenan «se usa», «se le atribuye», «la tradición le atribuye», «se lo toma».
- **Citas del cuadernillo:** siguen sin distinguirse del texto editorial fuera de los epígrafes y de la caja «Del cuadernillo original» (p. 8).

### 5. Corrección ortotipográfica — Bueno (5)

*Automático (3).* Sin comillas rectas (1), sin guion por raya (1), géneros en cursiva (1). El control de repetidos y dobles signos queda en 0 por los mismos falsos positivos: los cuatro «palán palán», «p. ej.,» (p. iv) y «S. l.,» (p. 43).

*Manual.* Las dos rayas de cierre están corregidas (p. xi y p. 28). Aparece una inconsistencia nueva de criterio en los epígrafes. Las láminas de una sola especie nombran la planta con su nombre científico entre paréntesis: algarrobo (p. 14), chañar, molle y jarilla. El epígrafe nuevo de la liga (p. 36), «La liga sobre su hospedante: hojas gruesas y ovaladas, bayas rosadas.», perdió el *Phoradendron liga* que el anterior sí tenía. Pesa un poco más de lo habitual porque es justo la ficha que distingue dos ligas.

### 6. Ilustraciones — Excelente (7)

*Automático (4).* Las 23 imágenes existen (1) y todas superan los 300 ppp a su tamaño de impresión (3). La liga nueva queda a 660 ppp.

*Manual.* La lámina 18 rehecha resuelve la falta principal de la ronda anterior. Es una lámina en cuatro tiempos: la mata sobre la rama, un corte del haustorio, un par de hojas gruesas y ovaladas y un racimo de bayas rosadas y globosas. Coincide con la ficha y con el epígrafe, y a ancho completo en la misma página que su ficha (p. 36) sirve para reconocer la planta. Quedan detalles menores:

- **Liga:** en la vista de la mata las hojas salen más angostas que en el detalle.
- **Algarrobo** (lámina 9, p. 14): la hoja se ve pinnada simple.
- **Jarilla** (lámina 12, p. 22): única lámina de ficha con paisaje de fondo.

No llega a 8 por la hoja del algarrobo.

### 7. Diseño y maquetación — Bueno (6)

*Automático (2).* Sin *overfull hbox* en mi compilación.

*Manual.* La liga y su lámina comparten página sin que el capítulo 7 se corra, y el comentario del fuente deja documentado el criterio. Siguen los cuatro puntos anteriores:

- **Versos en blanco:** pp. 20, 26 y 32, antes de los capítulos 4, 5 y 6.
- **Láminas lejos de su ficha:** la 13 (p. 30) y la 14 (p. 31), a tres páginas del cedrón y del arcayuyo.
- **Blanco al pie de la p. 28**, antes de la salvia mora.
- **Tamaño de las láminas de ficha:** sigue sin un criterio visible; la liga suma ahora un tercer formato (ancho completo con alto fijo).

### 8. Aparato editorial y paratextos — Suficiente (2)

*Automático (3,75).* Índices completos (1 + 1); 6 de 8 referencias con año o URL (0,75); sin referencias sin resolver (1).

*Manual.* Sin cambios: colofón con fecha, imprenta, papel y tirada en `\pendiente` (p. 45); «Fernández y Huiaracha» sin nombres de pila y sitios sin fecha de consulta (p. 43).

### 9. Preimpresión y producción — Suficiente (1)

*Automático (5).* Fuentes incrustadas sin Type 3 (1); 60 páginas, múltiplo de 4 (1); 17 × 24 cm en todas (1); sin láminas a sangre en el interior (1); *OutputIntent* FOGRA39 (1), ahora también desde un clon limpio.

*Manual.* La cubierta aparte, el negro en 100 % K y las láminas en CMYK siguen resueltos, y el PDF de imprenta ya se regenera desde el repositorio. Falta lo mismo que antes: papel, encuadernación y tirada acordados con la imprenta, el espesor de hoja real para el lomo (`cubierta.tex` sigue con 0,11 mm «a pedir») y la prueba de color. Detalle menor: el docstring de `cmyk.py` menciona un `Actualizar-Cafayate.ps1` que no está en el repositorio.

### 10. Derechos y aspectos legales — Suficiente (2)

*Automático (0,5).* Sin ISBN (0); leyenda de la Ley 11.723 presente (0,5).

*Manual.* Sin cambios: licencia «a definir con la autora» (p. iv), ISBN en trámite y consentimientos de la autora y de los vecinos sin documentar. La lámina 18 nueva también se hizo con Gemini, según el mensaje del commit; sigue sin constancia de haber revisado sus condiciones de uso para una edición impresa. No es un pedido de cambiar el crédito.

## 5. Nota analítica

**84,96 / 100.**

## 6. Nota holística

**86 / 100.**

Sigue siendo un libro en el que se puede confiar, y esta ronda cerró las dos deudas que más se notaban: la liga, la planta tóxica más difícil del libro, ahora se reconoce por su lámina tal como la describe su ficha, y las palabras de la autora vuelven a ser suyas. Se oye el cuadernillo, las cajas protegen sin asustar y las láminas sirven en el campo. Lo que más lo perjudica es lo mismo que antes: no está cerrado. Licencia, ISBN y colofón saldrían impresos como recuadros amarillos, y los tres versos en blanco del cuerpo cortan el hojeo. Pesa menos que lo logrado porque es terminación y trámite, no confianza ni contenido.

## 7. Divergencia

No hay: 1,04 puntos de diferencia.

## 8. Veredicto

**Apto con correcciones menores, que no requieren otra ronda de evaluación.** No se da ninguna condición excluyente. La nota analítica es de 84,96.

Las correcciones menores:

- **Los `\pendiente` de la p. iv y del colofón.** Siguen siendo la corrección obligatoria: sin licencia nombrada, sin ISBN y sin datos de impresión, el PDF no puede salir tal como está.
- **El nombre científico en el epígrafe de la liga** (p. 36), para volver al criterio de las otras láminas de una sola especie.

Lo que queda depende casi todo de trámites externos: la imprenta (papel, tirada, espesor de hoja, prueba de color), el ISBN, la licencia y los consentimientos. Entre aparato, preimpresión y derechos hay unos 5 o 6 puntos que ninguna corrección del fuente puede ganar hasta que esos trámites se cierren. Si hay tiempo del lado editorial, lo que más rinde es:

- atribuir las cuatro afirmaciones que quedan (tusca, chilca, cola de caballo y salvia mora);
- aliviar las fórmulas repetidas del llantén y el cedrón;
- revisar si los tres versos en blanco del cuerpo pueden evitarse.
