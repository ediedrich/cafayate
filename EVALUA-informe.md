# Informe de evaluación — *Yuyos de la Quebrada de Cafayate*

## 1. Encabezado

- **Commit evaluado:** `0a5014b` (rama `main`, 25/09/2026 19:53 −03).
- **Fecha:** 25 de septiembre de 2026.
- **Evaluó:** Claude (Anthropic), a pedido de Eduardo Diedrich.
- **Material leído:**
  - `cafayate.tex`, `contratapa-texto.tex`, `cubierta.tex`, `cmyk.py` y `perfil-salida.tex`;
  - `cafayate.pdf` y `cubierta.pdf` commiteados (interior de 60 págs.);
  - las 23 láminas de `img/` y de `img-cmyk/`.

**Nota de método.** El repositorio sigue sin `evalua.py`. Calculé los puntajes automáticos con los mismos criterios que en las evaluaciones anteriores. Compilé el fuente desde un **clon limpio** (con `\babelprovide` para el español, porque en mi entorno falta `spanish.ldf`), así que el control de renglones desbordados es aproximado. El PDF commiteado coincide con el que produce el fuente. Las páginas se citan por el folio impreso.

**Mensaje del commit.** El de `0a5014b` repite palabra por palabra el de `f58132e` y no describe lo que cambió de verdad (licencia, ISBN, colofón, cuatro atribuciones, epígrafe de la liga). Conviene corregirlo o dejarlo dicho en el próximo commit, para que el historial sirva.

**Qué cambió desde `f58132e`:**

- Licencia CC BY-NC-SA 4.0 nombrada en la p. iv, con URL, y año en el ©.
- Línea del ISBN comentada: ya no se imprime.
- Colofón con fecha de composición; los datos de impresión pasan a comentarios y no se imprimen.
- Tusca, chilca, salvia mora y cola de caballo: las cuatro afirmaciones pasan a atribuciones.
- El epígrafe de la liga recupera *Phoradendron liga*.

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
| | **Nota holística** | | | **88** |

Evaluaciones anteriores:

| Commit | Analítica | Holística | Veredicto |
|---|---:|---:|---|
| `bea8a8e` | 64,88 | 66 | NO APTO |
| `a3b9a88` | 74,64 | 78 | Otra ronda |
| `94eff35` | 78,57 | 80 | Apto con correcciones menores |
| `b4bae3c` | 83,96 | 85 | Apto con correcciones menores |
| `f58132e` | 84,96 | 86 | Apto con correcciones menores |
| `0a5014b` | 86,96 | 88 | Apto con correcciones menores |

## 4. Observaciones por dimensión

### 1. Contenido, fidelidad y estructura — Excelente (12)

*Automático (1,71).* 18 de 21 fichas superan las 60 palabras sin contar las cajas; siguen cortas retama, palán palán y chamico.

*Manual.* Sin cambios de fondo. Los ajustes de atribución no alteran lo que dice el cuadernillo. No llega a 13 por lo mismo que antes:

- **Chamico y palán palán** (pp. 37-38): magros para reconocerlos sin la lámina.
- **Molle** (p. 15): sin el nombre local «aguaribay» que trae el cuadernillo.
- **Capítulo 4:** retama y cepa caballo agrupadas como «arbustos resinosos» sin serlo.

### 2. Rigor botánico — Excelente (8)

*Automático (4).* Los 21 nombres están bien formados y no hay afirmaciones tajantes sin atribuir.

*Manual.* Se cerraron las cuatro afirmaciones que quedaban como hechos, y en las cuatro el cambio es bueno, no cosmético:

- **Tusca** (p. 15): la corteza «tiene fama de desinfectante fuerte».
- **Chilca** (p. 23): «dicen que levanta la temperatura corporal y activa la circulación».
- **Salvia mora** (p. 29): «se la tiene por sudorífica y emenagoga»; la instrucción de continuar el tratamiento pasa a describir la práctica («quienes la usan así la toman tres o cuatro días»). La caja «No en el embarazo» se ajustó en consecuencia sin perder fuerza.
- **Cola de caballo** (p. 34): «en el valle se la tiene por cicatrizante y astringente».

La composición química de la cola de caballo (sílice, saponinas, flavonoides, alcaloides) es correcta para el género. No queda nada que descontar.

### 3. Seguridad sanitaria — Excelente (6)

*Automático (7).* Sin dosis en plantas con advertencia; la nota cubre consulta y evidencia; está el 0800.

*Manual.* Sin cambios. Todo riesgo conocido está en caja, el índice de dolencias marca con ‡ las plantas con advertencia y no hay contradicciones.

### 4. Redacción y estilo — Bueno (6)

Las atribuciones nuevas están bien resueltas y varían la fórmula («tiene fama de», «dicen que», «se la tiene por»), lo que evita sumar repeticiones. Quedan los dos puntos anteriores, que no se tocaron:

- **Fórmulas de atribución repetidas:** llantén (p. 33) y cedrón (p. 27).
- **Citas del cuadernillo:** sin distinguirse del texto editorial fuera de los epígrafes y de la caja «Del cuadernillo original» (p. 8).

### 5. Corrección ortotipográfica — Excelente (6)

*Automático (3).* Sin comillas rectas en el texto (las dos del fuente están en un aviso de compilación) (1), sin guion por raya (1), géneros en cursiva (1). El control de repetidos sigue en 0 por falsos positivos: «palán palán», «p. ej.,» y «S. l.,».

*Manual.* El epígrafe de la liga (p. 36), «Liga (*Phoradendron liga*): mata sobre su hospedante, hojas gruesas y bayas rosadas.», vuelve al criterio de las demás láminas de una sola especie. Con las rayas ya corregidas en la ronda anterior, no encuentro erratas ni inconsistencias de criterio.

### 6. Ilustraciones — Excelente (7)

*Automático (4).* Las 23 imágenes existen (1) y todas superan los 300 ppp a su tamaño de impresión (3).

*Manual.* Sin cambios:

- **Algarrobo** (lámina 9, p. 14): la hoja se ve pinnada simple.
- **Jarilla** (lámina 12, p. 22): única lámina de ficha con paisaje de fondo.
- **Liga** (p. 36): en la vista de la mata las hojas salen más angostas que en el detalle.

### 7. Diseño y maquetación — Bueno (6)

*Automático (2).* Sin *overfull hbox* en mi compilación.

*Manual.* La página de créditos pasa a bandera, que es lo correcto para un párrafo con una URL larga. El resto sigue igual:

- **Versos en blanco:** pp. 20, 26 y 32.
- **Láminas lejos de su ficha:** la 13 (p. 30) y la 14 (p. 31).
- **Blanco al pie de la p. 28.**
- **Tamaño de las láminas de ficha:** sin un criterio visible.

### 8. Aparato editorial y paratextos — Suficiente (2)

*Automático (3,75).* Índices completos (1 + 1); 6 de 8 referencias con año o URL (0,75); sin referencias sin resolver (1).

*Manual.* El colofón (p. 45) gana la fecha de composición, pero los datos de impresión (imprenta, papel, tirada, fecha de impresión) pasaron a comentarios del fuente. El colofón sigue **sin datos de impresión**, igual que antes; la diferencia es que ahora el PDF no lo avisa. La bibliografía sigue igual: «Fernández y Huiaracha» sin nombres de pila y sitios sin fecha de consulta (p. 43).

### 9. Preimpresión y producción — Suficiente (1)

*Automático (5).* Fuentes incrustadas sin Type 3 (1); 60 páginas, múltiplo de 4 (1); 17 × 24 cm en todas (1); sin láminas a sangre en el interior (1); *OutputIntent* FOGRA39 (1).

*Manual.* Sin cambios: faltan papel, encuadernación y tirada acordados con la imprenta, el espesor de hoja real para el lomo y la prueba de color.

### 10. Derechos y aspectos legales — Suficiente (2)

*Automático (0,5).* Sin ISBN (0); leyenda de la Ley 11.723 presente (0,5).

*Manual.* Nombrar la licencia es lo que se pedía, y la redacción es clara y compatible con el ©. Pero el comentario que la precede en el fuente dice «Confirmar con la autora»: la p. iv afirma como decidida una licencia que la titular todavía no aprobó. Eso es más delicado que el `\pendiente` anterior, porque ya no hay nada en el PDF que impida mandarlo así. Además:

- El ISBN no figura: la línea está comentada, en lugar de decir «en trámite».
- Siguen sin documentar los consentimientos de la autora y de los vecinos.
- Sigue sin constancia de las condiciones de uso de Gemini para la edición impresa. No es un pedido de cambiar el crédito.

Un detalle menor: la glosa «con fines educativos y comunitarios» es más estrecha que lo que permite CC BY-NC-SA (cualquier uso no comercial). No se contradicen, porque manda la licencia, pero conviene que la autora lo lea así.

## 5. Nota analítica

**86,96 / 100.**

## 6. Nota holística

**88 / 100.**

Es el mejor estado que tuvo el libro: ahora todo lo que dice de las plantas está puesto en boca de la tradición, las cajas protegen sin asustar, la liga se reconoce por su lámina y se oye el cuadernillo. Por primera vez, además, el PDF se ve terminado: ya no hay recuadros amarillos en créditos ni colofón. Lo que más lo perjudica es justamente eso: se ve terminado sin estarlo. La licencia impresa todavía no la aprobó la autora, el ISBN y los datos de impresión simplemente no están, y nada en el PDF lo avisa. Pesa menos que lo logrado porque sigue siendo trámite y no contenido, pero ahora es un trámite que se puede olvidar.

## 7. Divergencia

No hay: 1,04 puntos de diferencia.

## 8. Veredicto

**Apto con correcciones menores, que no requieren otra ronda de evaluación.** No se da ninguna condición excluyente. La nota analítica es de 86,96.

Las correcciones menores, todas antes de mandar a imprenta:

- **Confirmar la licencia con la autora** y borrar el comentario, o volver a marcarla como `\pendiente` hasta tenerla.
- **ISBN:** cargarlo cuando llegue; mientras tanto, conviene que el faltante se vea.
- **Datos de impresión del colofón:** completarlos cuando se contrate la imprenta.

Una sugerencia de método: si los faltantes van a vivir en comentarios, que la compilación en modo imprenta los avise (un `\PackageWarning` o un `\pendiente` que solo salga en pantalla alcanza). Así el PDF de lectura queda limpio y el de imprenta no puede salir incompleto sin que nadie lo note.

Lo que queda en el texto es poco y opcional: aliviar las fórmulas del llantén y el cedrón, y revisar los tres versos en blanco del cuerpo.
