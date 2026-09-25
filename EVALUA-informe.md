# Informe de evaluación — *Yuyos de la Quebrada de Cafayate*

## 1. Encabezado

- **Commit evaluado:** `aef1c82` (rama `main`, 25/09/2026 20:27 −03).
- **Fecha:** 25 de septiembre de 2026.
- **Evaluó:** Claude (Anthropic), a pedido de Eduardo Diedrich.
- **Material leído:**
  - `cafayate.tex`, `datos-editorial.tex`, `contratapa-texto.tex`, `cubierta.tex` y `PENDIENTES-editorial.md`;
  - `cafayate.pdf` y `cubierta.pdf` commiteados (interior de 60 págs.);
  - las 23 láminas de `img/` y de `img-cmyk/`.

**Nota de método.** El repositorio sigue sin `evalua.py`. Calculé los puntajes automáticos con los mismos criterios que en las evaluaciones anteriores. Compilé interior y cubierta desde un clon limpio con el paquete de español de babel instalado: los dos compilan sin errores y sin *overfull hbox*. El texto del interior compilado es idéntico al del PDF commiteado. Las páginas se citan por el folio impreso.

**Mensaje de commit.** Describe con exactitud lo que hace y remite a la evaluación que lo pidió.

**Qué cambió desde `36c4916`.** Una sola línea de `cubierta.tex`: el aviso del lomo provisorio usa `\pgfmathprintnumber[fixed,precision=1,use comma]` y ahora dice «Lomo provisorio de 3,3 mm: falta el espesor de hoja», con coma decimal y espacio fino antes de la unidad. Lo verifiqué en el `cubierta.pdf` commiteado y en el compilado. `cafayate.tex` y `datos-editorial.tex` no cambian, y el interior tampoco.

## 2. Condiciones excluyentes

| # | Condición | ¿Se da? | Caso |
|---|---|---|---|
| 1 | No compila / no hay PDF | No | Compila desde un clon limpio, interior y cubierta. |
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
| 2 | Rigor botánico | 4,00 / 4 | 8 / 8 | 12,00 / 12 |
| 3 | Seguridad sanitaria | 7,00 / 7 | 6 / 6 | 13,00 / 13 |
| 4 | Redacción y estilo | — | 7 / 8 | 7,00 / 8 |
| 5 | Corrección ortotipográfica | 3,00 / 4 | 6 / 6 | 9,00 / 10 |
| 6 | Ilustraciones | 4,00 / 4 | 7 / 8 | 11,00 / 12 |
| 7 | Diseño y maquetación | 2,00 / 2 | 6 / 8 | 8,00 / 10 |
| 8 | Aparato editorial y paratextos | 3,75 / 4 | 2 / 4 | 5,75 / 8 |
| 9 | Preimpresión y producción | 5,00 / 5 | 1 / 2 | 6,00 / 7 |
| 10 | Derechos y aspectos legales | 0,50 / 1 | 2 / 4 | 2,50 / 5 |
| | **Nota analítica** | **30,96** | **57** | **87,96** |
| | **Nota holística** | | | **89** |

Evaluaciones anteriores:

| Commit | Analítica | Holística | Veredicto |
|---|---:|---:|---|
| `bea8a8e` | 64,88 | 66 | NO APTO |
| `a3b9a88` | 74,64 | 78 | Otra ronda |
| `94eff35` | 78,57 | 80 | Apto con correcciones menores |
| `b4bae3c` | 83,96 | 85 | Apto con correcciones menores |
| `f58132e` | 84,96 | 86 | Apto con correcciones menores |
| `0a5014b` | 86,96 | 88 | Apto con correcciones menores |
| `99dc262` | 86,96 | 89 | Apto con correcciones menores |
| `36c4916` | 87,96 | 89 | Apto con correcciones menores |
| `aef1c82` | 87,96 | 89 | Apto con correcciones menores |

Las notas no cambian. La corrección del lomo era técnica y no alcanzaba para mover el nivel de preimpresión, que depende de los datos de la imprenta.

## 4. Observaciones por dimensión

Fuera de la cubierta, el material evaluado es idéntico al de `36c4916`: el interior no cambió en ningún carácter. Las observaciones de las dimensiones 1 a 8 y 10 se mantienen tal como quedaron en esa ronda, incluidas las menciones a lo que se resolvió entonces. Solo cambia la dimensión 9.

### 1. Contenido, fidelidad y estructura — Excelente (12)

*Automático (1,71).* 18 de 21 fichas superan las 60 palabras sin contar las cajas. Siguen cortas retama (59), palán palán (49) y chamico (46).

*Manual.* Se resolvió el molle: «También se lo llama aguaribay» (p. 15), como en el cuadernillo. No llega a 13 por:

- **Chamico y palán palán** (pp. 37-38): magros para reconocerlos sin la lámina.
- **Capítulo 4:** retama y cepa caballo agrupadas como «arbustos resinosos» sin serlo.

### 2. Rigor botánico — Excelente (8)

*Automático (4).* Los 21 nombres están bien formados (tres con *spp.*) y no hay afirmaciones tajantes sin atribuir.

*Manual.* Las reescrituras mantienen la atribución: el cedrón «tiene además fama de fortalecer el corazón» (p. 27) y el llantén se toma «por su fama de antibacteriana» y «se la tiene por hemostática» (p. 33). La única afirmación de hecho en esas fichas, las vitaminas A, B1, C y el calcio del llantén, es correcta.

### 3. Seguridad sanitaria — Excelente (6)

*Automático (7).* Sin dosis en plantas con advertencia; la nota cubre consulta y evidencia; está el 0800.

*Manual.* Sin cambios. La reescritura del cedrón deja intacta su caja «Palpitaciones: primero el médico» (p. 27), que sigue siendo necesaria justo después de «en el valle se lo toma para las palpitaciones». Índice de dolencias con ‡ y sin contradicciones.

### 4. Redacción y estilo — Excelente (7)

Se resolvieron las fórmulas repetidas:

- **Cedrón** (p. 27): «Es el yuyo al que se recurre para levantar el ánimo, aliviar jaquecas y fiebres, dormir mejor y calmar la ansiedad» reemplaza la enumeración de «la tradición lo usa… lo recomienda… se le atribuyen». Se lee de corrido y suena a la Quebrada.
- **Llantén** (p. 33): la hoja sobre la herida va «con el mismo fin» y «según dicen» cierra la atribución sin repetir el verbo.

No llega a 8 porque las citas del cuadernillo siguen sin distinguirse del texto editorial fuera de los epígrafes y de la caja de la p. 8, y porque «se le atribuye» todavía aparece cinco veces en el libro (pp. 15, 18, 19 y dos en la p. 29). Son detalles que un lector no nota de corrido.

### 5. Corrección ortotipográfica — Excelente (6)

*Automático (3).* Sin comillas rectas (1), sin guion por raya (1), géneros en cursiva (1). El control de repetidos sigue en 0 por falsos positivos: «palán palán», «p. ej.,» y «S. l.,».

*Manual.* Sin erratas en las cuatro páginas cambiadas. El blanco antes de la coma y del punto en los recuadros del colofón (p. 45) sigue, y se va al cargar los datos.

### 6. Ilustraciones — Excelente (7)

*Automático (4).* Las 23 imágenes existen (1) y todas superan los 300 ppp a su tamaño de impresión (3).

*Manual.* Sin cambios en las láminas. Siguen:

- **Algarrobo** (lámina 9, p. 14): la hoja se ve pinnada simple.
- **Jarilla** (lámina 12, p. 22): única lámina de ficha con paisaje de fondo.
- **Liga** (p. 36): en la vista de la mata las hojas salen más angostas que en el detalle.

### 7. Diseño y maquetación — Bueno (6)

*Automático (2).* Sin *overfull hbox*, ahora con la separación silábica española real. Quedan dos *overfull vbox* de 1 pt en el glosario, que el control no cuenta y no se ven.

*Manual.* Los cambios de texto no mueven nada: las 56 páginas restantes son idénticas. Siguen:

- **Versos en blanco:** pp. 20, 26 y 32.
- **Láminas lejos de su ficha:** la 13 (p. 30) y la 14 (p. 31).
- **Blanco al pie de la p. 28.**
- **Tamaño de las láminas de ficha:** sin un criterio visible.

### 8. Aparato editorial y paratextos — Suficiente (2)

*Automático (3,75).* Índices completos (1 + 1); 6 de 8 referencias con año o URL (0,75): Burgstaller Chiriani y Fernández y Huiaracha van «s. f.»; sin referencias sin resolver (1).

*Manual.* Se resolvieron los dos puntos que dependían del libro: `PENDIENTES-editorial.md` está en el repositorio, y sus folios (créditos en p. iv, colofón en p. 45, bibliografía en p. 43) coinciden con el PDF; y los sitios llevan fecha de consulta, «septiembre de 2026» (p. 43).

El nivel no cambia porque el colofón (p. 45) sigue **sin datos de impresión**, que la tabla de la rúbrica pone en «Suficiente». Siguen también los nombres de pila de «Fernández y Huiaracha», ahora anotados como pendiente de la autora.

### 9. Preimpresión y producción — Suficiente (1)

*Automático (5).* Siete fuentes Type 1 incrustadas, sin Type 3 (1); 60 páginas, múltiplo de 4 (1); 17 × 24 cm en todas (1); sin láminas a sangre en el interior (1); *OutputIntent* presente (1).

*Manual.* Se resolvió el defecto señalado en la ronda anterior: el aviso del lomo dice **«Lomo provisorio de 3,3 mm»**, redondeado y con coma, y entra en su recuadro sin tocar el sello ni el código de barras. La cubierta sigue avisando «Faltan 3 datos editoriales» y el interior «Faltan 8».

El nivel no sube porque siguen faltando papel, encuadernación y tirada acordados con la imprenta, el espesor de hoja real y la prueba de color.

### 10. Derechos y aspectos legales — Suficiente (2)

*Automático (0,5).* Sin ISBN (0); leyenda de la Ley 11.723 presente (0,5).

*Manual.* `PENDIENTES-editorial.md` recoge bien todo lo que señalaba la evaluación anterior: confirmación escrita de la licencia, contrato de edición con Editorial Juana Manuela por la cláusula NC, quién hace el depósito legal, a nombre de quién va el ISBN, consentimientos de los vecinos con sus nombres, y condiciones de uso de la herramienta de las láminas. Queda documentado *qué* falta, que es el primer paso.

El nivel no cambia porque nada de eso está hecho todavía: la licencia sigue «a confirmar» en la p. iv y los consentimientos siguen sin constancia.

## 5. Nota analítica

**87,96 / 100.**

## 6. Nota holística

**89 / 100.**

El libro sigue siendo confiable de punta a punta: todo lo que dice de las plantas está en boca de la tradición, las cajas protegen sin asustar, las láminas sirven para reconocer en el campo y se oye el cuadernillo. Esta ronda no toca una sola página del interior: corrige el único defecto técnico que había dejado la anterior, el aviso del lomo, que ahora dice «3,3 mm» y ya no puede leerse mal en una conversación con la imprenta. Lo que separa el libro de lo que una editorial exigente imprimiría tal como está sigue siendo lo mismo: la licencia sin confirmar, el contrato de edición, el ISBN y los datos de imprenta. Pesan más que todo lo demás porque sin ellos el libro no puede salir, aunque no toquen el contenido.

## 7. Divergencia

No hay: 1,04 puntos de diferencia.

## 8. Veredicto

**Apto con correcciones menores, que no requieren otra ronda de evaluación.** No se da ninguna condición excluyente. La nota analítica es de 87,96.

Del lado del libro ya no queda nada que impida imprimir. Lo que falta está listado en `PENDIENTES-editorial.md` y depende de la autora, la editorial y la imprenta:

- **Confirmar la licencia** por escrito y pasar a `\licenciaconfirmadatrue`.
- **Contrato de edición** que cubra la venta, el ISBN y el depósito legal.
- **Cargar los datos** de `datos-editorial.tex` y el código de barras, y revisar el colofón y la contratapa compuestos con los datos reales.
- **Prueba de color** de las láminas sobre el papel elegido.

Opcional, en el texto: engordar chamico y palán palán, y revisar los tres versos en blanco del cuerpo.
