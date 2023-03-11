Title: Clean code es lento
Date: 2023-03-07
Modified: 2023-03-07
Category: Hacking
Tags: hacking, programming, theory
Slug: clean-code-lento
Authors: Maximiliano Greco

# Clean code es horriblemente lento

El otro día me topé con este video en YT cuya tesis principal es que aplicar
las reglas de clean code hace que el código sea lento.

Aquí el link 👇

- [LINK ARTICULO + VIDEO](https://www.computerenhance.com/p/clean-code-horrible-performance)

## Summary

- Clean code hace que el codigo sea mas lento.
- Las reglas de polimorfismo y no acoplamiento hace que perdamos 20 años de avances de hardware.

## Mi opinion

- Me parece obvio que lo haga mas lento. Se añaden capas de abastracción y esto
  no es gratis.
- Ojo, también podría ser mas rápido si el codigo estuviera desorganizado y
  hecho por muchas personas a la vez buscando incluir su propia funcionalidad
  sin coherencia. (dependende de la deuda tecnica).
- Existe un trade off entre mantenibilidad/readability vs performance y
  encontrar el equilibrio es lo que te hace senior.
- Clean code son unos principios que tienen mas o menos sentido aplicar
  dependiendo del proyecto.
- No todos los proyectos estan bien definidos y no sabes que es lo que va a
  contener. El ejemplo esta sesgado a que a priori sabes lo que busca y como
  hacerlo de forma eficiente (veo un cierto sesgo de confirmacion). Luego sí
  que veo la ventaja de iterar sobre el mismo código muchas veces.
- Cada vez me parece que la respuesta correcta es depende. Qué vas a construir?
  Es un proyecto grande o pequeño? Lo tienes claro o no?
