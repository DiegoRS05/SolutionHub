# SolutionHub

## Descripción

SolutionHub es una plataforma colaborativa diseñada para compartir soluciones a problemas técnicos y conectar a usuarios con habilidades específicas. La aplicación ofrece funcionalidades para subir, editar y eliminar soluciones, así como un sistema de búsqueda automatizada que interpreta las consultas de los usuarios y muestra las mejores coincidencias.

Además, SolutionHub facilita la interacción en tiempo real a través de un chat en directo, permitiendo que los usuarios puedan resolver dudas directamente con otros miembros de la comunidad. Cada perfil de usuario muestra sus habilidades (skills) y los repositorios públicos de GitHub, proporcionando un vistazo completo a su experiencia y proyectos.

## Características principales

✅ **Gestión de soluciones:**
- Subir, editar y eliminar problemas con sus respectivas soluciones.
- Organizar soluciones según temas o áreas de conocimiento.

🔎 **Búsqueda inteligente:**
- Sistema de búsqueda automatizada que interpreta el texto ingresado y muestra la mejor coincidencia.
- Resultados clasificados por relevancia.

💬 **Chat en directo:**
- Comunicación en tiempo real entre usuarios.
- Posibilidad de contactar directamente a personas con habilidades específicas.

👤 **Perfil de usuario:**
- Visualización de habilidades (skills) del usuario.
- Acceso directo a los repositorios públicos de GitHub.

🌐 **Interfaz amigable:**
- Diseño intuitivo y fácil de usar.
- Compatible con dispositivos móviles y de escritorio.

## Tecnologías utilizadas

- **Frontend:** HTML, CSS y algo de JavaScript
- **Backend:** PHP
- **Base de datos:** MySQL por PHPMyAdmin
- **Autenticación:** Login-Register de PHP
- **Servicios externos:** API de GitHub para mostrar repositorios

## Instalación

1. **Clonar el repositorio:**
```bash
git clone https://github.com/tu_usuario/SolutionHub.git
```
2. **Descargar e instalar XAMPP** desde [Apache Friends](https://www.apachefriends.org).

3. **Configurar XAMPP:**
- Asegúrate de que Apache y MySQL estén activos desde el panel de control de XAMPP.

4. **Configurar la base de datos:**
- Importa el archivo SQL del proyecto en phpMyAdmin.

5. **Configurar las variables de entorno:**
- Define la conexión a la base de datos y las credenciales de la API de GitHub.

6. **Mover archivos:**
- Coloca los archivos del backend y frontend dentro de la carpeta `htdocs` de XAMPP.

7. **Acceder al proyecto:**
- Abre el navegador y ve a: [http://localhost/SolutionHub](http://localhost/SolutionHub)

## Uso

- Regístrate o inicia sesión para acceder a todas las funcionalidades.
- Busca soluciones a problemas o publica tus propias soluciones.
- Consulta los perfiles de otros usuarios para conocer sus habilidades y repositorios de GitHub.
- Usa el chat en directo para resolver dudas de manera instantánea.

## Licencia

Este proyecto está bajo la licencia **GPL v3**.
