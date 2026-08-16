ALTA NSS — VERSIÓN GITHUB PAGES CORREGIDA

La versión anterior fallaba porque GitHub Pages es estático y el navegador puede bloquear directamente algunas APIs por CORS. Esta versión usa un proxy CORS público para las consultas disparadas por el usuario.

Archivos:
- index.html

Funciones:
- Código Postal exactamente 5 dígitos.
- CURP exactamente 18 caracteres.
- Consulta de CP.
- Estado, municipio, localidad y colonia cuando la fuente lo proporciona.
- Búsqueda de UMF/IMSS cercana.
- Dirección desglosada.
- Copiar individual.
- Copiar todo en texto.

IMPORTANTE:
- La CURP NO se manda a Zippopotam, Nominatim ni Overpass.
- No se almacena en localStorage ni en servidor propio.
- El proxy gratuito es una dependencia externa y puede tener límites o caídas.
- Para producción con usuarios reales conviene sustituir el proxy por un backend propio o un proveedor con API/CORS y límites definidos.
- La UMF mostrada es una referencia de cercanía cartográfica, no una confirmación de adscripción oficial del IMSS.

GitHub Pages:
Sube index.html a la raíz del repositorio y activa Settings > Pages > Deploy from branch > main > /root.
