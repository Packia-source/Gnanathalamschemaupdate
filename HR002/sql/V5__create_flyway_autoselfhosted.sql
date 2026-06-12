CREATE TABLE IF NOT EXISTS flyway_autoselfhosted (
    id BIGSERIAL PRIMARY KEY,
    selfhost_name VARCHAR(100) NOT NULL,
    selfhostdepart VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);