# Etapa de producción: servir archivos estáticos con nginx
FROM nginx:stable-alpine

# Quitar la configuración por defecto de nginx si quieres personalizar
RUN rm -rf /usr/share/nginx/html/*

# Copiar todos tus archivos del proyecto al directorio de contenido de nginx
COPY . /usr/share/nginx/html/

# Exponer el puerto 80
EXPOSE 80

# Ejecutar nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
