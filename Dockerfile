FROM quay.io/keycloak/keycloak:24.0.1

# Add your custom theme
COPY keycloak-theme /opt/keycloak/themes

# Build Keycloak (enable PostgreSQL support)
RUN /opt/keycloak/bin/kc.sh build

EXPOSE 8080

# Use start instead of start-dev for production
CMD ["start"]