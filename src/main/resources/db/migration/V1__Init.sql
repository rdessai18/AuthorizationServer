CREATE TABLE authorization
(
    id                            VARCHAR(255) NOT NULL,
    registered_client_id          VARCHAR(255) NULL,
    principal_name                VARCHAR(255) NULL,
    authorization_grant_type      VARCHAR(255) NULL,
    authorized_scopes             VARCHAR(255) NULL,
    attributes                    VARCHAR(255) NULL,
    state                         VARCHAR(255) NULL,
    authorization_code_value      VARCHAR(255) NULL,
    authorization_code_issued_at  datetime NULL,
    authorization_code_expires_at datetime NULL,
    authorization_code_metadata   VARCHAR(255) NULL,
    access_token_value            VARCHAR(255) NULL,
    access_token_issued_at        datetime NULL,
    access_token_expires_at       datetime NULL,
    access_token_metadata         VARCHAR(255) NULL,
    access_token_type             VARCHAR(255) NULL,
    access_token_scopes           VARCHAR(255) NULL,
    refresh_token_value           VARCHAR(255) NULL,
    refresh_token_issued_at       datetime NULL,
    refresh_token_expires_at      datetime NULL,
    refresh_token_metadata        VARCHAR(255) NULL,
    oidc_id_token_value           VARCHAR(255) NULL,
    oidc_id_token_issued_at       datetime NULL,
    oidc_id_token_expires_at      datetime NULL,
    oidc_id_token_metadata        VARCHAR(255) NULL,
    oidc_id_token_claims          VARCHAR(255) NULL,
    user_code_value               VARCHAR(255) NULL,
    user_code_issued_at           datetime NULL,
    user_code_expires_at          datetime NULL,
    user_code_metadata            VARCHAR(255) NULL,
    device_code_value             VARCHAR(255) NULL,
    device_code_issued_at         datetime NULL,
    device_code_expires_at        datetime NULL,
    device_code_metadata          VARCHAR(255) NULL,
    CONSTRAINT pk_authorization PRIMARY KEY (id)
);

CREATE TABLE authorization_consent
(
    registered_client_id VARCHAR(255) NOT NULL,
    principal_name       VARCHAR(255) NOT NULL,
    authorities          VARCHAR(255) NULL,
    CONSTRAINT pk_authorization_consent PRIMARY KEY (registered_client_id, principal_name)
);

CREATE TABLE client
(
    id                            VARCHAR(255) NOT NULL,
    client_id                     VARCHAR(255) NULL,
    client_id_issued_at           datetime NULL,
    client_secret                 VARCHAR(255) NULL,
    client_secret_expires_at      datetime NULL,
    client_name                   VARCHAR(255) NULL,
    client_authentication_methods VARCHAR(255) NULL,
    authorization_grant_types     VARCHAR(255) NULL,
    redirect_uris                 VARCHAR(255) NULL,
    post_logout_redirect_uris     VARCHAR(255) NULL,
    scopes                        VARCHAR(255) NULL,
    client_settings               VARCHAR(255) NULL,
    token_settings                VARCHAR(255) NULL,
    CONSTRAINT pk_client PRIMARY KEY (id)
);