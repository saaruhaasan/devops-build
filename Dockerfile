FROM nginx:alpine

# Copy your build output into nginx's default html folder
COPY ./build /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

