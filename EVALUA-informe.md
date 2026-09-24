# Informe de evaluación — *Yuyos de la Quebrada de Cafayate*

## 1. Encabezado

- **Commit evaluado:** `bea8a8e` (rama `main`, 24/09/2026 05:35 −03).
- **Fecha:** 24 de septiembre de 2026.
- **Evaluó:** Claude (Anthropic), a pedido de Eduardo Diedrich.
- **Material leído:** `cafayate.tex`, `cafayate.pdf` commiteado (60 págs., generado a las 05:29, antes del commit), las 23 láminas de `img/` y las 35 fotos del cuadernillo original (`00_…jpg` a `34_…jpg`).

**Nota de método.** El repositorio no contiene `evalua.py`. Los puntajes automáticos de este informe los calculé aplicando al pie de la letra la definición de cada control de la rúbrica; conviene volver a correrlos con el script cuando exista. El fuente compila (probado con `pdflatex` tras agregar `spanish.ldf`, que faltaba en mi entorno, no en el repo). Las páginas se citan por el folio impreso; entre paréntesis, la página del PDF cuando hace falta.

## 2. Condiciones excluyentes

| # | Condición | ¿Se da? | Caso |
|---|---|---|---|
| 1 | No compila / no hay PDF | No | — |
| 2 | Planta tóxica con dosis de uso interno | No | Retama, cepa caballo, paico, chamico y palán palán sin dosis. |
| 3 | Promesa de curar enfermedad grave sin aclarar falta de evidencia | No | Límite: tusca «se usó tradicionalmente contra la sífilis» (p. 19) sin aclaración en la ficha; lo cubre en general la nota de lectura y está en pasado, así que no lo cuento como promesa. |
| 4 | Ilustración de una especie distinta de la ficha | **Sí** | p. 33 (PDF 47), `15-lamina-cicatrizantes.jpg`. El epígrafe dice «Llantén, cola de caballo y paico: la roseta, el tallo hueco y la espiga dentada». La lámina muestra una leguminosa de hojas compuestas con vainas oscuras, una rama espinosa con espigas amarillas (aspecto de *Prosopis*) y un arbusto de flores amarillas. No hay roseta, ni tallo articulado, ni paico. |
| 5 | Falta una imagen referenciada | No | Las 23 existen. |
| 6 | Planta tóxica con nombre científico equivocado | No | *Datura ferox*, *Nicotiana glauca*, *Spartium junceum*, *Xanthium spinosum* y *Dysphania ambrosioides* son correctos. |

**Resultado: NO APTO** por la condición 4.

## 3. Tabla de puntajes

| # | Dimensión | Automático | Manual | Total |
|---|---|---:|---:|---:|
| 1 | Contenido, fidelidad y estructura | 1,71 / 2 | 9 / 13 | 10,71 / 15 |
| 2 | Rigor botánico | 4,00 / 4 | 5 / 8 | 9,00 / 12 |
| 3 | Seguridad sanitaria | 7,00 / 7 | 3 / 6 | 10,00 / 13 |
| 4 | Redacción y estilo | — | 6 / 8 | 6,00 / 8 |
| 5 | Corrección ortotipográfica | 2,75 / 4 | 4 / 6 | 6,75 / 10 |
| 6 | Ilustraciones | 3,75 / 4 | 2 / 8 | 5,75 / 12 |
| 7 | Diseño y maquetación | 2,00 / 2 | 4 / 8 | 6,00 / 10 |
| 8 | Aparato editorial y paratextos | 3,67 / 4 | 2 / 4 | 5,67 / 8 |
| 9 | Preimpresión y producción | 3,00 / 5 | 0 / 2 | 3,00 / 7 |
| 10 | Derechos y aspectos legales | 0,00 / 1 | 2 / 4 | 2,00 / 5 |
| | **Nota analítica** | **27,88** | **37** | **64,88** |
| | **Nota holística** | | | **66** |

## 4. Observaciones por dimensión

### 1. Contenido, fidelidad y estructura — Bueno (9)

*Automático (1,71).* 18 de 21 fichas superan las 60 palabras. Quedan cortas retama (57), palán palán (47) y chamico (44). Son justamente las fichas tóxicas, cortas a propósito: el control castiga una decisión editorial correcta y conviene excluir de él las fichas de «Las que no se tocan».

*Manual.* Las 21 plantas del cuadernillo están, con su voz: el «quemadillo» del chañar (p. 15), la ramita de incayuyo detrás de la oreja (p. 27), el atamisqui contra las faras y los gorgojos (p. 19), las «Palabras de la autora» casi literales (p. XI). La agrupación por capítulos tiene sentido.

Lo que baja el puntaje es la fidelidad.

- **Sección omitida sin aviso.** El cuadernillo trae una sección entera, «Fitoterapia», con unas cincuenta plantas en orden alfabético y sus usos en tintura (fotos 03 a 08). El libro la omite sin decirlo. La nota de lectura (PDF p. 9) sólo declara que se quitaron dosis de plantas tóxicas.
- **Usos suprimidos en silencio.** Cepa caballo pierde hipertensión, diarrea, gripe y sobrepeso (foto 15). Incayuyo pierde la gonorrea (foto 20). Molle pierde «adelgazar» (foto 25). El algarrobo contra las «cataratas» pasa a ser «infecciones oculares» (foto 11 frente a p. 15), lo que desvirtúa el original.
- **Fichas que no permiten reconocer la planta.** Paico, una planta tóxica, es sólo «yuyo poco llamativo» (p. 32). Marrubio es «planta austera» (p. 28). Salvia mora es «arbusto de hojas pequeñas y flores lilas» (p. 28).

### 2. Rigor botánico — Bueno (5)

*Automático (4).* Los 21 nombres científicos están bien formados y no hay afirmaciones tajantes sin atribuir.

*Manual.*

- **Correcciones sin fuente ni aviso.** Tusca pasa de *Acacia farnesiana* en el cuadernillo a *Vachellia aroma* en el libro, y algarrobo pasa de *Prosopis strombulifera* a *Prosopis* spp. Las dos correcciones son acertadas, pero el libro no dice que corrige ni cita una fuente (Flora Argentina, POWO).
- **Ortografía de un nombre.** POWO acepta *Aloysia citrodora*, no *citriodora* (p. 27).
- **Nombre común sin aclarar.** Salvia mora: las fotos del cuadernillo muestran una *Salvia* de flor azul, pero la ficha dice *Lippia alba*. El libro no aclara que el nombre local puede designar más de una especie.
- **Atribuciones presentadas como hechos.** Hay muchas, pese a lo que promete la nota de lectura: «Su propiedad más destacada es la antirreumática» (molle, p. 17); «remineraliza los huesos», «es útil para deportistas» (cola de caballo, p. 32); «La infusión de la flor es diurética; la corteza, antidiarreica» (algarrobo, p. 15).

Los datos químicos (citisina, carboxiatractilósido, ascaridol, anabasina, alcaloides tropánicos) son correctos.

### 3. Seguridad sanitaria — Suficiente (3)

*Automático (7).* Ninguna planta tóxica trae dosis. La nota de lectura cubre la consulta profesional y la evidencia, y trae el teléfono 0800-333-0160.

*Manual.* Las advertencias existentes están bien escritas y en caja. Faltan varias:

- **Jarilla** (p. 23): recomienda la infusión «para cortar la tos rebelde» sin ninguna advertencia. El género *Larrea* tiene hepatotoxicidad documentada por vía interna.
- **Salvia mora** (p. 28): se la llama «emenagoga» sin advertencia de embarazo, aunque el propio glosario (p. 40) dice que las emenagogas están contraindicadas en el embarazo.
- **Marrubio** (p. 28): tampoco advierte sobre el embarazo.
- **Tusca y sífilis** (p. 19): la nota de lectura promete que donde se atribuya la cura de infecciones severas «el libro lo dice con todas las letras», y la ficha de tusca no lo dice. Es una contradicción visible.
- **Índice de dolencias** (p. 38): la † marca sólo la toxicidad. Cola de caballo, marrubio, arcayuyo y sombra de toro llevan advertencia en su ficha y no aparecen marcadas.
- **Advertencias lejos de su ficha:** las de marrubio y liga quedan separadas de su texto por una lámina de página entera (pp. 30 y 34). Ver la dimensión 7.

### 4. Redacción y estilo — Bueno (6)

Prosa clara y cercana, con buenos arranques de capítulo, por ejemplo «Son las que uno lleva en el bolsillo» (p. 27). Tiene estos problemas:

- **Enumeraciones de catálogo** que heredan el tono del cuadernillo: molle (p. 17) y cepa caballo (p. 24).
- **Cambios de género** en una misma ficha: cepa caballo dice «La tradición la usa…», luego «Se lo usa…» y «se lo emplea» (p. 24).
- **Frase del original sin sujeto claro:** «Al tener un enfermo más, tienen un eslabón más» (p. XI).
- **Citas del cuadernillo sin distinguir.** La caja «Del cuadernillo original» aparece una sola vez (p. 8). En el resto de las fichas no se sabe qué es cita y qué es texto editorial.

### 5. Corrección ortotipográfica — Suficiente (4)

*Automático (2,75).*

- **Comillas y rayas:** sin comillas rectas y sin guiones por raya (1 + 1).
- **Cursiva de los géneros:** «las intoxicaciones por Datura» va en redonda (p. 37), lo que descuenta 0,25.
- **Palabras repetidas:** el control marca 4 casos de «palán palán», que es el nombre de la planta. Es un falso positivo, pero se aplica tal como está definido y deja el control en 0. Conviene agregar una lista de excepciones.

*Manual.*

- **Criterios que cambian entre piezas:**
  - «spp.» va en cursiva en la ficha y en el índice, pero en redonda en el epígrafe de la lámina de p. 14.
  - «sin.» va en cursiva, igual que el paréntesis, en las fichas de pp. 19, 27, 28 y 32, pero en redonda en el índice de plantas.
  - «y especies afines» va en cursiva, como si fuera parte del nombre (p. 23 e índice).
- **Mismo nombre, dos formas:** la jarilla es «*Larrea* spp.» en su lámina (p. 22) y «*Larrea cuneifolia* y especies afines» en su ficha (p. 23).
- **Unidades:** conviven «20 a 30 gramos» (p. 8) y «30 ml» (p. 10).
- **Epígrafes:** en general terminan en punto, pero la cita de Bach del frontispicio no (p. XII).
- **Tilde en «sólo»:** se usa en todo el libro. Es uniforme, aunque la RAE hoy recomienda omitirla.

### 6. Ilustraciones — Insuficiente (2)

*Automático (3,75).*

- **Imágenes:** existen las 23 (1).
- **Resolución:** cinco imágenes quedan por debajo de 300 ppp a su tamaño de impresión: cubierta y contratapa (253), apertura de la parte I y canasto (238) e infusión y tintura (267). El resultado es 2,75.

*Manual.*

- **Lámina 15:** muestra plantas de otra ficha. Es la condición excluyente 4.
- **Láminas fieles:** algarrobo, chañar, molle, liga, la de las resinosas (con la espina tripartita de la cepa caballo) y la de las tóxicas (chamico con cápsulas espinosas, palán palán glauco) son buenas y sirven en el campo.
- **Errores de detalle:**
  - el arcayuyo lleva una flor labiada rosada que la especie no tiene (lámina 14, p. 30);
  - el palán palán aparece como hierba con raíz, cuando es un arbusto o arbolito;
  - el chamico tiene espinas de *D. stramonium* más que de *D. ferox*.
- **Textura repetida:** el mismo arbusto gris sirve de incayuyo (lámina 13) y de atamisqui (lámina 16).
- **Estilos mezclados:** hay láminas con marco (13, 16, 19) y sin marco (14, 17), y paisajes de quebrada pegados arriba en las láminas 15 y 16.
- **Plantas tóxicas sin reconocer:** el paico, que es tóxico, no aparece reconocible en ninguna lámina.

### 7. Diseño y maquetación — Suficiente (4)

*Automático (2).* No hay *overfull hbox* en la compilación de control. El repo no trae el `.log` original, así que el dato es de mi compilación.

*Manual.* Palatino con Avant Garde, jerarquía clara, cajas bien diseñadas y folios omitidos en las láminas. Pero hay bastante que corregir:

- **Blancos accidentales** por `\laminapagina`:
  - la apertura del capítulo 3 tiene cuatro líneas y el resto de la página en blanco (p. 13);
  - al molle le quedan tres cuartos de página en blanco (p. 17);
  - la apertura del capítulo 4 queda casi vacía (p. 21).
- **Cajas de advertencia cortadas,** con una línea sola en la página siguiente: «con acompañamiento médico.» (p. 20) y «absceso, sin tragar nada.» (p. 24).
- **Advertencias separadas de su ficha** por una lámina de página entera: marrubio en pp. 28–30 y liga en pp. 32–34.
- **Título de parte mal cortado:** «La botica a un kilómetro a la / redonda» (p. 1).
- **Cubierta y contratapa dentro del interior:** están en el PDF del interior (págs. 1 y 60), con el texto del pie de la cubierta casi ilegible, crema sobre fondo claro.

### 8. Aparato editorial y paratextos — Suficiente (2)

*Automático (3,67).*

- **Índice de plantas:** las 21 fichas tienen entrada.
- **Índice de dolencias:** todas las plantas que nombra tienen ficha.
- **Bibliografía:** Burgstaller y Fernández y Huiaracha no tienen año ni URL, así que cumplen 4 de 6 referencias (0,67).
- **Referencias:** no hay ninguna sin resolver.

*Manual.* Están todas las piezas, pero varias no cumplen su función:

- **Bibliografía** (p. 41): dos entradas no tienen año, lugar ni editorial, y «Fernández y Huiaracha» no lleva nombres de pila.
- **Colofón** (p. 43): no tiene fecha, imprenta, tipografías, papel ni tirada.
- **Contratapa:** sólo trae una cita de la autora y ningún texto que presente el libro.
- **Índice de dolencias** (p. 38):
  - pone a la tusca en «Garganta y vías respiratorias», cuando su ficha no dice nada de eso;
  - omite a la tusca en «Reuma y dolor muscular»;
  - omite a la cola de caballo y a la retama en «Sangre».
- **Glosario** (p. 40): faltan términos que el texto usa, como diurético, expectorante, antipirético, hipotensor, empacho, asentamiento y faras.

### 9. Preimpresión y producción — Insuficiente (0)

*Automático (3).*

- **Fuentes:** todas Type 1 incrustadas (1).
- **Páginas:** 60, múltiplo de 4 (1). No es múltiplo de 16.
- **Tamaño:** 17 × 24 cm exactos en todas las páginas (1).
- **Demasía:** cubierta y contratapa están a sangre sin demasía ni `BleedBox` (0).
- **Perfil de color:** no hay *OutputIntent* ni PDF/X (0).

*Manual.* No hay cubierta aparte ni lomo calculado. Las 23 imágenes están en RGB. El texto está compuesto en gris RGB (`tinta` = 2B2B28), no en 100 % K. No hay especificaciones acordadas con una imprenta.

### 10. Derechos y aspectos legales — Suficiente (2)

*Automático (0).* La página de créditos no tiene ISBN ni la leyenda de depósito de la Ley 11.723.

*Manual.* El © de María Eugenia Orellana y el permiso de reproducción «con fines educativos y comunitarios» no se contradicen, pero no nombran una licencia, así que el uso comercial y las obras derivadas quedan ambiguos. El conocimiento se atribuye a los vecinos, con nombre y apellido. No hay constancia de su consentimiento ni del de la autora para esta edición, y el repo tampoco documenta el origen ni las referencias de las láminas.

## 5. Nota analítica

**64,88 / 100.**

## 6. Nota holística

**66 / 100.**

Lo mejor del libro es que se oye el cuadernillo. La voz de María Eugenia y las costumbres de la Quebrada llegan intactas, y el trabajo de seguridad hecho sobre las plantas peligrosas es serio: sin dosis tóxicas, con cajas claras, con un capítulo entero para aprender a no tocar el chamico y el palán palán. Muchas láminas son hermosas y sirven para reconocer en el campo. Lo que más lo perjudica es que, en los dos puntos donde un lector confía a ciegas, el libro falla. Una lámina muestra plantas equivocadas, y la jarilla y la salvia mora se recomiendan sin advertencias que el propio libro enseña a esperar. Eso pesa más que los blancos de maquetación o la falta de ISBN, porque rompe la confianza en un libro que se va a usar para tomar cosas. A eso se suman una sección entera del cuadernillo omitida sin aviso y una producción que todavía no está lista para imprenta.

## 7. Divergencia

No hay: 1,1 puntos de diferencia.

## 8. Veredicto

**NO APTO** por la condición excluyente 4. Sin ella, la nota analítica de 64,88 daría «Requiere otra ronda de corrección y una nueva evaluación».
