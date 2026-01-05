FROM nginx:alpine

# Remove config padrão
RUN rm /etc/nginx/conf.d/default.conf

# Copia config do nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia build do Angular/Ionic
COPY www /usr/share/nginx/html

# Permissões (boa prática)
RUN chmod -R 755 /usr/share/nginx/html
