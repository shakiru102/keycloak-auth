FROM quay.io/keycloak/keycloak:24.0.1

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Copy custom theme
COPY keycloak-theme /opt/keycloak/themes

# Build Keycloak
RUN /opt/keycloak/bin/kc.sh build

EXPOSE 8080

CMD ["start-dev"]