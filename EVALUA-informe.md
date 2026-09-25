# Informe de evaluación — *Yuyos de la Quebrada de Cafayate*

## 1. Encabezado

- **Commit evaluado:** `99dc262` (rama `main`, 25/09/2026 20:04 −03).
- **Fecha:** 25 de septiembre de 2026.
- **Evaluó:** Claude (Anthropic), a pedido de Eduardo Diedrich.
- **Material leído:**
  - `cafayate.tex`, `contratapa-texto.tex`, `cubierta.tex`, `cmyk.py` y `perfil-salida.tex`;
  - `cafayate.pdf` y `cubierta.pdf` commiteados (interior de 60 págs.);
  - las 23 láminas de `img/` y de `img-cmyk/`.

**Nota de método.** El repositorio sigue sin `evalua.py`. Calculé los puntajes automáticos con los mismos criterios que en las evaluaciones anteriores. Compilé el fuente desde un **clon limpio** (con `\babelprovide` para el español, porque en mi entorno falta `spanish.ldf`), así que el control de renglones desbordados es aproximado. El PDF commiteado coincide con el que produce el fuente. Las páginas se citan por el folio impreso.

**Mensajes de commit.** Los dos commits nuevos tienen mensajes que no describen lo que hacen:

- `8ce43fd` dice «Correcciones de la evaluación de b4bae3c», pero corrige la evaluación de `0a5014b`. Es la cuarta vez seguida que se repite ese mensaje.
- `99dc262` dice «Láminas actualizadas», pero no toca ninguna imagen de `img/` ni de `img-cmyk/`: solo recompila los dos PDF, que difieren del commit anterior únicamente en la fecha de creación y el identificador del archivo.

Para que el historial sirva como registro de versiones, conviene corregirlo o aclararlo en el próximo commit.

**Qué cambió desde `0a5014b`** (todo en `8ce43fd`):

- Un bloque de «datos que completa la editorial» en el preámbulo (sello, ISBN, fecha de impresión, imprenta, papel, tapas y tirada) y un interruptor `\licenciaconfirmada`.
- Un comando `\dato` que imprime cada dato vacío en recuadro amarillo, los cuenta y avisa al final de la compilación («Faltan 8 datos editoriales»).
- En la p. iv: sale «Edición de autor»; entran el pie editorial pendiente, el aviso «Licencia a confirmar con la autora» y «ISBN en trámite, a cargo de Editorial Juana Manuela».
- En el colofón (p. 45): los datos de impresión vuelven a imprimirse, con sus cinco faltantes a la vista.

## 2. Condiciones excluyentes

| # | Condición | ¿Se da? | Caso |
|---|---|---|---|
| 1 | No compila / no hay PDF | No | Compila desde un clon limpio. |
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
| 4 | Redacción y estilo | — | 6 / 8 | 6,00 / 8 |
| 5 | Corrección ortotipográfica | 3,00 / 4 | 6 / 6 | 9,00 / 10 |
| 6 | Ilustraciones | 4,00 / 4 | 7 / 8 | 11,00 / 12 |
| 7 | Diseño y maquetación | 2,00 / 2 | 6 / 8 | 8,00 / 10 |
| 8 | Aparato editorial y paratextos | 3,75 / 4 | 2 / 4 | 5,75 / 8 |
| 9 | Preimpresión y producción | 5,00 / 5 | 1 / 2 | 6,00 / 7 |
| 10 | Derechos y aspectos legales | 0,50 / 1 | 2 / 4 | 2,50 / 5 |
| | **Nota analítica** | **30,96** | **56** | **86,96** |
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

La nota analítica no se mueve porque esta ronda no completó ningún dato: hizo visibles los que faltan. Eso no sube ningún nivel de la rúbrica, pero corrige lo que la evaluación anterior señaló como más riesgoso, y se refleja en la holística.

## 4. Observaciones por dimensión

### 1. Contenido, fidelidad y estructura — Excelente (12)

*Automático (1,71).* 18 de 21 fichas superan las 60 palabras sin contar las cajas; siguen cortas retama, palán palán y chamico. Las fichas no cambiaron en esta ronda.

*Manual.* Sin cambios. No llega a 13 por lo mismo que antes:

- **Chamico y palán palán** (pp. 37-38): magros para reconocerlos sin la lámina.
- **Molle** (p. 15): sin el nombre local «aguaribay» que trae el cuadernillo.
- **Capítulo 4:** retama y cepa caballo agrupadas como «arbustos resinosos» sin serlo.

### 2. Rigor botánico — Excelente (8)

*Automático (4).* Los 21 nombres están bien formados y no hay afirmaciones tajantes sin atribuir.

*Manual.* Sin cambios. Todas las propiedades están atribuidas a la tradición (tusca, p. 15; chilca, p. 23; salvia mora, p. 29; cola de caballo, p. 34) y la química de la cola de caballo es correcta.

### 3. Seguridad sanitaria — Excelente (6)

*Automático (7).* Sin dosis en plantas con advertencia; la nota cubre consulta y evidencia; está el 0800.

*Manual.* Sin cambios. Todo riesgo conocido está en caja, el índice de dolencias marca con ‡ las plantas con advertencia y no hay contradicciones.

### 4. Redacción y estilo — Bueno (6)

Sin cambios en el cuerpo. Siguen:

- **Fórmulas de atribución repetidas:** llantén (p. 33) y cedrón (p. 27).
- **Citas del cuadernillo:** sin distinguirse del texto editorial fuera de los epígrafes y de la caja «Del cuadernillo original» (p. 8).

En el colofón (p. 45), dos párrafos empiezan con «Se terminó de…» («de componer» y «de imprimir»). Es la fórmula del género y no descuenta, pero con el párrafo de agradecimiento y el de tipografías en el medio, se lee como repetición.

### 5. Corrección ortotipográfica — Excelente (6)

*Automático (3).* Sin comillas rectas en el texto (1), sin guion por raya (1), géneros en cursiva (1). El control de repetidos sigue en 0 por falsos positivos: «palán palán», «p. ej.,» y «S. l.,».

*Manual.* Sin erratas nuevas. En el colofón, el relleno del recuadro amarillo deja un blanco visible antes de la coma y del punto («ciudad ,», «interior ,», «tapas .»). Desaparece cuando se completen los datos, así que no descuenta, pero hay que mirarlo en la prueba final.

### 6. Ilustraciones — Excelente (7)

*Automático (4).* Las 23 imágenes existen (1) y todas superan los 300 ppp a su tamaño de impresión (3).

*Manual.* Sin cambios, pese al mensaje de `99dc262`: ninguna lámina fue modificada. Siguen:

- **Algarrobo** (lámina 9, p. 14): la hoja se ve pinnada simple.
- **Jarilla** (lámina 12, p. 22): única lámina de ficha con paisaje de fondo.
- **Liga** (p. 36): en la vista de la mata las hojas salen más angostas que en el detalle.

### 7. Diseño y maquetación — Bueno (6)

*Automático (2).* Sin *overfull hbox*. Hay dos *overfull vbox* de 1 pt en el glosario, que el control no cuenta y no se ven.

*Manual.* Sin cambios:

- **Versos en blanco:** pp. 20, 26 y 32.
- **Láminas lejos de su ficha:** la 13 (p. 30) y la 14 (p. 31).
- **Blanco al pie de la p. 28.**
- **Tamaño de las láminas de ficha:** sin un criterio visible.

El párrafo de impresión del colofón, justificado y con cinco recuadros que no se cortan, queda con espacios muy abiertos en su primera línea. Es provisorio: se resuelve solo al cargar los datos, pero conviene revisarlo entonces, porque «imprenta, ciudad» y «papel y gramaje» reales pueden volver a abrir la línea.

### 8. Aparato editorial y paratextos — Suficiente (2)

*Automático (3,75).* Índices completos (1 + 1); 6 de 8 referencias con año o URL (0,75); sin referencias sin resolver (1).

*Manual.* El colofón (p. 45) vuelve a mostrar lo que le falta, que es lo que se pedía, pero sigue **sin datos de impresión**: el nivel no cambia. La bibliografía sigue igual: «Fernández y Huiaracha» sin nombres de pila y sitios sin fecha de consulta (p. 43).

Hay una falla nueva en el mecanismo: el comentario del preámbulo y el aviso de compilación mandan a `PENDIENTES-editorial.md`, que **no está en el repositorio**. Quien reciba el fuente —la editorial, justamente— ve «Ver PENDIENTES-editorial.md» y no encuentra nada.

### 9. Preimpresión y producción — Suficiente (1)

*Automático (5).* Fuentes Type 1 incrustadas, sin Type 3 (1); 60 páginas, múltiplo de 4 (1); 17 × 24 cm en todas (1); sin láminas a sangre en el interior (1); *OutputIntent* presente (1).

*Manual.* Siguen faltando papel, encuadernación y tirada acordados con la imprenta, el espesor de hoja real para el lomo y la prueba de color.

El sistema de datos pendientes cubre el interior pero **no la cubierta**. En `cubierta.tex`, el espesor de hoja (0,11 mm, «pedirlo a la imprenta»), el código de barras del ISBN (un rectángulo blanco con la leyenda «ISBN / código de barras») y el sello de la editorial en el lomo y la contratapa no se cuentan como faltantes ni generan aviso. Ahora que hay editorial, el sello en la cubierta es una pieza más que antes no hacía falta.

### 10. Derechos y aspectos legales — Suficiente (2)

*Automático (0,5).* Sin ISBN (0); leyenda de la Ley 11.723 presente (0,5).

*Manual.* Se resolvió lo más delicado de la ronda anterior: la licencia ya no se afirma como decidida, porque la p. iv lleva a la vista «Licencia a confirmar con la autora», y el ISBN figura «en trámite», como corresponde. El interruptor `\licenciaconfirmada` es una buena manera de que la confirmación quede registrada en el fuente.

El nivel no sube porque la licencia sigue sin confirmar y los consentimientos siguen sin documentar. Además, la aparición de una editorial trae un punto nuevo:

- **Editorial y licencia NC.** CC BY-NC-SA 4.0 no autoriza a terceros el uso comercial. Si Editorial Juana Manuela va a vender el libro, necesita una autorización de la autora aparte de la licencia, normalmente un contrato de edición. Conviene que ese contrato exista antes de imprimir y que diga quién hace el depósito legal y a nombre de quién va el ISBN.
- **Consentimientos** de la autora y de los vecinos: sin documentar.
- **Condiciones de uso de Gemini** para la edición impresa: sin constancia. No es un pedido de cambiar el crédito.
- **Glosa de la licencia:** «con fines educativos y comunitarios» sigue siendo más estrecha que lo que permite CC BY-NC-SA. No se contradicen, pero conviene que la autora lo lea así al confirmar.

## 5. Nota analítica

**86,96 / 100.**

## 6. Nota holística

**89 / 100.**

El libro sigue siendo lo mejor que fue: todo lo que dice de las plantas está en boca de la tradición, las cajas protegen sin asustar, las láminas sirven para reconocer y se oye el cuadernillo. Lo que más lo perjudicaba en la ronda anterior —verse terminado sin estarlo— quedó resuelto de la mejor manera: el PDF muestra en amarillo cada dato que falta y la compilación los cuenta, así que ya no puede salir incompleto sin que alguien lo note. Lo que pesa ahora es lo mismo pero asumido: la licencia sin confirmar, el ISBN, la imprenta y el acuerdo con la editorial. Son trámites, no contenido, y están a la vista; por eso el libro queda a un paso de lo que una editorial exigente publicaría tal como está, pero todavía no ahí.

## 7. Divergencia

No hay: 2,04 puntos de diferencia.

## 8. Veredicto

**Apto con correcciones menores, que no requieren otra ronda de evaluación.** No se da ninguna condición excluyente. La nota analítica es de 86,96.

Las correcciones, todas antes de mandar a imprenta:

- **Confirmar la licencia con la autora** y pasar a `\licenciaconfirmadatrue`.
- **Contrato de edición** entre la autora y la editorial, que cubra la venta del libro, el ISBN y el depósito legal.
- **Cargar los ocho datos** del preámbulo cuando lleguen el ISBN y la imprenta, y revisar el colofón compuesto con los datos reales.
- **Agregar `PENDIENTES-editorial.md`** al repositorio, o sacar la referencia del aviso y del comentario.
- **Cubierta:** sumar al mismo sistema de faltantes el espesor de hoja, el código de barras del ISBN y el sello de la editorial.

Lo que queda en el texto es poco y opcional: aliviar las fórmulas del llantén y el cedrón, y revisar los tres versos en blanco del cuerpo.
