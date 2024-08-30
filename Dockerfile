# Stage 1: Build stage to compile a binary
FROM alpine:latest AS build_stage

WORKDIR /app
RUN echo '<p>Hello World</p>' > index.html

# Stage 2: Final stage to create the Nginx server
FROM nginx:alpine
# Copy the index.html from the build stage to the final stage
COPY --from=build_stage /app/index.html /usr/share/nginx/html/index.html
# deamon off would  mean foreground
CMD echo "starting nginx" && nginx -g 'daemon off;'

