# Informe de evaluación — *Yuyos de la Quebrada de Cafayate*

## 1. Encabezado

- **Commit evaluado:** `b4bae3c` (rama `main`, 25/09/2026 19:00 −03), «Correcciones de la evaluación de 94eff35».
- **Fecha:** 25 de septiembre de 2026.
- **Evaluó:** Claude (Anthropic), a pedido de Eduardo Diedrich.
- **Material leído:**
  - `cafayate.tex`, `contratapa-texto.tex` y `cubierta.tex`;
  - `cafayate.pdf` y `cubierta.pdf` commiteados (interior de 60 págs.);
  - las 23 láminas de `img/`;
  - las fotos del cuadernillo de la raíz del repositorio, cotejadas por muestreo.

**Nota de método.** El repositorio sigue sin `evalua.py`. Calculé los puntajes automáticos aplicando la definición de cada control, con los mismos criterios que en las evaluaciones de `bea8a8e`, `a3b9a88` y `94eff35`, para que las cuatro sean comparables. El fuente compila. En mi entorno falta `spanish.ldf` y compilé cargando el español con `\babelprovide`, así que el control de renglones desbordados es aproximado. Todo lo demás se midió sobre el PDF commiteado, que se generó 13 segundos antes del commit y corresponde a su fuente. Las páginas se citan por el folio impreso.

**Reproducibilidad.** El PDF commiteado declara el perfil de salida FOGRA39, pero `cmyk.py` y `perfil-salida.tex` no están en el repositorio. Por eso, quien compile desde un clon limpio obtiene un PDF sin *OutputIntent* y un aviso de «Falta perfil-salida.tex». Tomé el punto de ese control porque se mide sobre el PDF commiteado. Si `evalua.py` compilara el fuente por su cuenta, ese control valdría 0 y la nota analítica bajaría a 82,96, sin que cambie el veredicto.

**Qué cambió desde `94eff35`:**

- Hay tres cajas de advertencia nuevas: molle, cedrón y llantén.
- Seis fichas pasan de afirmar a atribuir a la tradición.
- La altura del atamisqui está corregida.
- La liga tiene descripción propia y una aclaración sobre *Ligaria cuneifolia*.
- Se corrigieron tres pasajes de redacción y el epígrafe de la lámina 14.
- Se agregaron tres términos al glosario.
- Hay una maquetación nueva:
  - `\necesita` reemplaza a `\needspace`;
  - las cajas van pegadas a su ficha;
  - el filete de cierre se omite si no entra;
  - las páginas de lámina salen sin cornisa ni folio.
- La lámina 19 está rehecha.
- Todas las láminas están en alta resolución y en CMYK.

## 2. Condiciones excluyentes

| # | Condición | ¿Se da? | Caso |
|---|---|---|---|
| 1 | No compila / no hay PDF | No | — |
| 2 | Planta tóxica con dosis de uso interno | No | Retama, cepa caballo, paico, liga, chamico y palán palán, todas sin dosis. |
| 3 | Promesa de curar enfermedad grave sin aclarar falta de evidencia | No | Tusca y sífilis (p. 15), sombra de toro y alcoholismo (p. 18), liga y cáncer (p. 36): las tres tienen su caja. |
| 4 | Ilustración de una especie distinta de la ficha | No | — |
| 5 | Falta una imagen referenciada | No | Las 23 existen. |
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
| 6 | Ilustraciones | 4,00 / 4 | 6 / 8 | 10,00 / 12 |
| 7 | Diseño y maquetación | 2,00 / 2 | 6 / 8 | 8,00 / 10 |
| 8 | Aparato editorial y paratextos | 3,75 / 4 | 2 / 4 | 5,75 / 8 |
| 9 | Preimpresión y producción | 5,00 / 5 | 1 / 2 | 6,00 / 7 |
| 10 | Derechos y aspectos legales | 0,50 / 1 | 2 / 4 | 2,50 / 5 |
| | **Nota analítica** | **30,96** | **53** | **83,96** |
| | **Nota holística** | | | **85** |

Evaluaciones anteriores:

| Commit | Analítica | Holística | Veredicto |
|---|---:|---:|---|
| `bea8a8e` | 64,88 | 66 | NO APTO |
| `a3b9a88` | 74,64 | 78 | Otra ronda |
| `94eff35` | 78,57 | 80 | Apto con correcciones menores |
| `b4bae3c` | 83,96 | 85 | Apto con correcciones menores |

## 4. Observaciones por dimensión

### 1. Contenido, fidelidad y estructura — Excelente (12)

*Automático (1,71).* 18 de 21 fichas superan las 60 palabras sin contar las cajas. Quedan cortas retama (57), palán palán (47) y chamico (44), que son cortas a propósito. La liga, que ahora tiene descripción, pasa holgada.

*Manual.* La ficha de la liga (p. 36) ganó lo que le faltaba para reconocerla: hospedantes, tallos articulados, hojas y bayas. Además aclara que en el valle se llama liga a más de una hemiparásita. La nota de lectura y las fichas siguen coincidiendo, y la voz de la autora y de los vecinos está intacta. No llega a 13 por tres razones:

- **Chamico y palán palán:** siguen magros para reconocerlos sin la lámina. La descripción del chamico está dentro de la caja y no en la ficha.
- **Molle** (p. 15): se perdió el nombre local «aguaribay», que el cuadernillo sí trae. Es una omisión menor, pero es justo el tipo de dato que hace a la voz local.
- **Capítulo 4:** agrupa como «arbustos resinosos» a la retama y a la cepa caballo, que no lo son. El epígrafe de la lámina 17 (p. 25) las llama, con más precisión, «arbustos del suelo removido».

### 2. Rigor botánico — Excelente (7)

*Automático (4).* Los 21 nombres están bien formados y no hay afirmaciones tajantes sin atribuir.

*Manual.* Las seis atribuciones señaladas en `94eff35` ahora figuran como tradición: cedrón (p. 27), paico (p. 34), marrubio (p. 29), llantén (p. 33), atamisqui (p. 18) y liga (p. 36). El hábito del atamisqui («arbusto ramoso, de uno a tres metros») está corregido. La aclaración de la liga es rigor del bueno: separa *Phoradendron liga*, la del cuadernillo, de *Ligaria cuneifolia*, y avisa que los estudios que suelen citarse se hicieron con esta última.

Quedan algunas afirmaciones presentadas como hechos, más suaves que las anteriores, y por eso no llega a 8:

- **Tusca** (p. 15): la corteza «es un desinfectante fuerte».
- **Chilca** (p. 23): «al ser muy resinosa levanta la temperatura corporal» y «activa la circulación».
- **Cola de caballo** (p. 34): «tiene propiedades cicatrizantes y astringentes, y es buena para limpiar heridas».
- **Salvia mora** (p. 29): «en infusión es sudorífica y emenagoga», y «el tratamiento debe continuarse al menos tres o cuatro días», que es una prescripción.

### 3. Seguridad sanitaria — Excelente (6)

*Automático (7).* Ninguna planta con advertencia de toxicidad trae dosis. La nota cubre la consulta y la evidencia, y trae el 0800.

*Manual.* Las tres faltas de `94eff35` están resueltas:

- **Molle** (p. 15): la caja «Los frutos, con mesura» dice que no hay evidencia de que haga adelgazar, advierte la irritación en los chicos y excluye el embarazo.
- **Llantén** (p. 33): la precaución del oído salió del texto a su caja, y suma la fiebre y la derivación de los chicos.
- **Cedrón** (p. 27): la caja nueva cubre las palpitaciones como síntoma y la interacción con la medicación cardíaca, la de la presión y la de dormir.

El índice de dolencias marca ahora con ‡ al molle, al cedrón y al llantén. No encontré riesgos conocidos sin advertir ni contradicciones entre la nota, las fichas y la posología.

Hay una observación que no descuenta. La posología (p. 10) excluye a «las plantas señaladas con advertencia», y ahora son 15 de las 21. En la práctica queda para seis plantas: algarrobo, chañar, atamisqui, incayuyo, chilca y tusca. Es coherente, pero conviene que la autora lo sepa.

### 4. Redacción y estilo — Bueno (6)

Los tres pasajes señalados están resueltos: salvia mora (p. 29), llantén (p. 33) y la frase de la p. xi. Las cajas nuevas están bien escritas, con un registro cercano y claro.

Aparece un problema nuevo, que es el costo de haber pasado tantas afirmaciones a atribuciones: las fórmulas se repiten dentro de una misma ficha.

- **Llantén** (p. 33): usa tres veces «se usa» o «se la usa», dos veces «se le atribuye(n)», una vez «la tradición le atribuye» y una vez «dice la tradición», todo en un solo párrafo.
- **Cedrón** (p. 27): encadena «la tradición lo usa», «lo recomienda», «se le atribuyen», «se lo toma» y «se lo emplea».

Las citas del cuadernillo siguen sin distinguirse del texto editorial fuera de los epígrafes y de la única caja «Del cuadernillo original» (p. 8).

Aparte del puntaje: la frase de la p. xi es texto de la autora reescrito, y el mensaje del commit dice que está «a confirmar con la autora». Hasta que lo confirme, es una intervención sobre su voz.

### 5. Corrección ortotipográfica — Bueno (5)

*Automático (3).* No hay comillas rectas (1) ni guiones en lugar de raya (1), y los géneros van en cursiva (1). El control de repetidos y dobles signos queda en 0, pero todo por falsos positivos:

- los cuatro «palán palán»;
- los grupos «p. ej.,» de la p. iv y «S. l.,» de la p. 43, que son abreviaturas seguidas de coma y están bien.

*Manual.* Se corrigió el epígrafe de la lámina 14 (p. 31), que ahora es coherente con las dos fichas. Los criterios siguen uniformes, y todos los epígrafes terminan en punto salvo la atribución del frontispicio. Quedan dos incisos con raya de apertura y sin raya de cierre antes del punto. El libro sí la cierra en otros lugares, como «sobre el riñón—.» en la p. 3.

- **p. xi:** «—suponiendo, claro, que ese entorno sea natural.»
- **Incayuyo** (p. 28): «—unos 30 a 40 gramos por litro, tres veces por día.»

### 6. Ilustraciones — Bueno (6)

*Automático (4).* Las 23 imágenes existen (1). Todas superan los 300 ppp a su tamaño de impresión (3). La más justa es la apertura de la parte II, a 300 ppp exactos. Las láminas 15 y 16, que estaban en 217 ppp, ahora pasan de 380.

*Manual.* La lámina 19 (p. 38) está rehecha y resuelve los dos detalles de `94eff35`:

- **Palán palán:** ya no aparece como hierba con raíz.
- **Chamico:** tiene frutos verdes con menos espinas y más largas, más cerca de *D. ferox*.

Queda un detalle de correspondencia, y justo en una planta tóxica. La ficha de la liga (p. 36) habla de «bayas pequeñas y translúcidas», y su epígrafe, de «frutos translúcidos». La lámina 18 las dibuja rosadas y opacas, y las hojas le salen angostas, cuando la ficha dice «gruesas y ovaladas». Además esa lámina se imprime al 48 % de la caja, la más chica del libro, y eso le resta valor para reconocer la planta. Hay dos observaciones menores:

- **Algarrobo** (lámina 9, p. 14): la hoja se ve pinnada simple, y la de *Prosopis* es bipinnada. Puede leerse como una sola pinna, pero el dibujo no lo aclara.
- **Jarilla** (lámina 12, p. 22): es la única lámina de ficha que conserva un paisaje de fondo.

Por la liga no llega a 7.

### 7. Diseño y maquetación — Bueno (6)

*Automático (2).* No hay *overfull hbox* en mi compilación, que es aproximada.

*Manual.* Es el cambio más visible de esta ronda:

- **Blancos a media página:** desaparecieron los de las pp. 19, 21, 28, 29, 31 y 34.
- **Página con solo el filete:** la p. 26 ya no queda así.
- **Cajas de advertencia:** van pegadas a su ficha.
- **Láminas de página entera:** salen sin cornisa ni folio, y las flotantes, con ellos. El criterio es uniforme.

Los blancos que quedan están al final de capítulo (pp. 6, 10, 19 y 39), donde son normales. Quedan cuatro cosas:

- **Versos en blanco:** con `openright`, las pp. 20, 26 y 32 quedan en blanco antes de los capítulos 4, 5 y 6. Son tres blancos en el cuerpo de un libro de 60 páginas, y al hojear se notan.
- **Láminas lejos de su ficha:** la lámina 13 (p. 30) queda tres páginas después de la ficha del cedrón (p. 27), y la 14 (p. 31), tres después del arcayuyo (p. 28).
- **Blanco al pie de la p. 28:** hay un quinto de página vacío antes de la salvia mora.
- **Tamaño de las láminas de ficha:** varía del 48 % al 85 % de la caja sin un criterio visible.

### 8. Aparato editorial y paratextos — Suficiente (2)

*Automático (3,75).* El índice de plantas está completo (1) y el de dolencias no nombra plantas sin ficha (1). En la bibliografía, 6 de 8 referencias tienen año o URL (0,75). No hay referencias sin resolver (1).

*Manual.* El glosario (p. 42) ya tiene antiséptico, cardiotónico y enuresis, y cubre los términos del texto. Quedan dos cosas:

- **Colofón** (p. 45): fecha, imprenta, papel y tirada siguen en `\pendiente`. La rúbrica lo pone en Suficiente aunque la causa sea solo que falta acordar con la imprenta.
- **Bibliografía** (p. 43): «Fernández y Huiaracha» sigue sin nombres de pila, y los sitios no tienen fecha de consulta. «S. l., s. f.» es una forma normalizada de decir que el lugar y el año no se conocen.

### 9. Preimpresión y producción — Suficiente (1)

*Automático (5).*

- **Fuentes:** todas incrustadas, sin Type 3 (1).
- **Páginas:** 60, múltiplo de 4 (1).
- **Tamaño:** 17 × 24 cm en todas las páginas (1).
- **Demasía:** no hay láminas a sangre en el interior, así que el control se cumple sin casos (1).
- **Perfil de color:** *OutputIntent* FOGRA39 en el interior y en la cubierta (1). Ver la nota de reproducibilidad del encabezado.

*Manual.* Tres de los cuatro aspectos están resueltos:

- **Cubierta:** va aparte, con lomo calculado para 60 páginas y 3 mm de demasía con `BleedBox` y `TrimBox`.
- **Negro del texto:** en 100 % K.
- **Color:** las 23 láminas están en CMYK con perfil FOGRA39.

Faltan las especificaciones acordadas con la imprenta. El papel, la encuadernación y la tirada no están definidos, y el espesor de hoja de `cubierta.tex` (0,11 mm) sigue marcado «pedirlo a la imprenta». Tampoco hay constancia de una prueba de color de las láminas.

### 10. Derechos y aspectos legales — Suficiente (2)

*Automático (0,5).* No hay ISBN (0). La leyenda de la Ley 11.723 está (0,5).

*Manual.* No hubo cambios:

- La licencia sigue pendiente, «a definir con la autora» (p. iv).
- El ISBN está en trámite.
- No hay constancia del consentimiento de la autora ni de los vecinos nombrados (p. 43).

Sobre el origen de las láminas: el mensaje del commit menciona que para ampliarlas y corregir la 19 se usaron prompts de Gemini. Eso no figura en el libro, y tampoco hay constancia de haber revisado las condiciones de uso de la herramienta para una edición impresa. Lo dejo señalado porque la rúbrica pide que el uso de imágenes esté en regla. No es un pedido de cambiar el crédito.

## 5. Nota analítica

**83,96 / 100.**

## 6. Nota holística

**85 / 100.**

Es la primera versión en la que se puede confiar sin reservas. Cada riesgo conocido tiene su caja, la tradición habla como tradición y no como ciencia, y la aclaración sobre las dos ligas es la clase de honestidad que un lector agradece. Las láminas, en su resolución completa, sirven para reconocer en el campo, y la maquetación nueva se lee de corrido, sin los huecos que antes cortaban los capítulos. Lo que más lo perjudica es que todavía no está cerrado. Los recuadros amarillos de licencia, ISBN y colofón saldrían impresos, la lámina de la liga no coincide con su ficha, y la corrección hacia las atribuciones dejó algunas fichas monótonas. Nada de eso afecta la confianza. Es terminación, y por eso pesa menos que lo logrado.

## 7. Divergencia

No hay: 1,04 puntos de diferencia.

## 8. Veredicto

**Apto con correcciones menores, que no requieren otra ronda de evaluación.** No se da ninguna condición excluyente. La nota analítica es de 83,96.

Las correcciones menores son estas:

- **Los `\pendiente` de la p. iv y del colofón.** Son la corrección obligatoria: sin licencia nombrada, sin ISBN y sin datos de impresión, el PDF no puede salir tal como está, aunque completarlos no cambie la evaluación.
- **`cmyk.py` y `perfil-salida.tex` al repositorio.** Sin ellos, el PDF de imprenta no se puede regenerar desde el repo.
- **La lámina de la liga.** Hay que hacer coincidir los frutos y las hojas con la ficha, o la ficha con la lámina, e imprimirla más grande.
- **Las dos rayas de cierre** de la p. xi y la p. 28.
- **La confirmación de la autora** de la frase reescrita de la p. xi.

Si hay tiempo, lo próximo que conviene resolver es esto:

- aliviar las fórmulas repetidas del llantén y el cedrón;
- atribuir las cuatro afirmaciones que quedan (tusca, chilca, cola de caballo y salvia mora);
- revisar si los tres versos en blanco del cuerpo pueden evitarse.
