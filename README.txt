# Santana Files — MVP funcional de demostración

Este paquete agrega un módulo de intercambio privado de archivos para la página de Santana Management.

## Qué funciona ahora mismo
- Cuentas separadas por persona.
- Usuario + contraseña.
- Panel de administrador.
- Cada usuario tiene su espacio.
- Subir varios archivos.
- Descargar archivos.
- El administrador puede abrir el espacio de cada persona.
- Mensajería básica dentro del espacio.
- Datos persistidos en el navegador mediante localStorage.

## Demo
Administrador:
- contraseña: `admin123`

Usuario:
- usuario: `demo`
- contraseña: `1234`

## Importante para uso REAL entre celulares/computadoras
La demo funciona de verdad dentro del navegador, pero para que Juan suba un archivo desde SU teléfono y tú lo veas desde TU teléfono necesitamos conectar almacenamiento y base de datos en la nube.

El archivo `supabase_schema.sql` deja preparado el esquema para Supabase. Después de conectar el backend, los archivos y mensajes dejarán de vivir solamente en el navegador y pasarán a ser compartidos entre dispositivos.

## Integración con la página existente
Puedes colocar `santana_files.html` como una sección/enlace de tu página de Santana Management. La interfaz está diseñada para móvil y escritorio.

No se afirma que el modo demo sea un sistema multiusuario en Internet: para eso falta conectar el backend real.
