SANTANA FILES PARA GITHUB PAGES

1. Crea un proyecto en Supabase.
2. En SQL Editor ejecuta supabase.sql.
3. En Storage crea un bucket PRIVADO llamado "santana-files".
4. Copia Project URL y anon/public key desde Supabase.
5. Abre app.js y reemplaza:
   PEGA_AQUI_TU_SUPABASE_URL
   PEGA_AQUI_TU_SUPABASE_ANON_KEY
6. Sube index.html, style.css y app.js a GitHub.
7. Activa GitHub Pages.

IMPORTANTE:
Esta versión ya está preparada para que un usuario autenticado suba archivos a almacenamiento real y los descargue desde otro dispositivo.
Para el administrador con acceso a TODOS los usuarios hace falta configurar el rol/políticas administrativas de Supabase; no se debe poner una service_role key dentro de GitHub Pages.
