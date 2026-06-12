CREATE TABLE IF NOT EXISTS flyway_autocreate (
    id BIGSERIAL PRIMARY KEY,
    flyway_name VARCHAR(100) NOT NULL,
    flywaydepart VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);