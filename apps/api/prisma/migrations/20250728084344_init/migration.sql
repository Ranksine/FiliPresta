-- CreateTable
CREATE TABLE "c_tipo_cliente" (
    "id" BIGINT NOT NULL PRIMARY KEY,
    "descripcion" TEXT NOT NULL,
    "is_active" BOOLEAN NOT NULL
);

-- CreateTable
CREATE TABLE "c_tipo_prestamo" (
    "id" BIGINT NOT NULL PRIMARY KEY,
    "descripcion" TEXT NOT NULL,
    "is_active" BOOLEAN NOT NULL
);

-- CreateTable
CREATE TABLE "d_persona" (
    "id" BIGINT NOT NULL PRIMARY KEY,
    "nombre" TEXT NOT NULL,
    "paterno" TEXT NOT NULL,
    "materno" TEXT NOT NULL,
    "domicilio_id" BIGINT,
    "edad" INTEGER NOT NULL,
    "sexo" TEXT NOT NULL,
    CONSTRAINT "d_persona_domicilio_id_fkey" FOREIGN KEY ("domicilio_id") REFERENCES "d_domicilio" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "d_domicilio" (
    "id" BIGINT NOT NULL PRIMARY KEY,
    "calle" TEXT NOT NULL,
    "num_ext" TEXT NOT NULL,
    "num_int" TEXT NOT NULL,
    "colonia" TEXT NOT NULL,
    "municipio_id" BIGINT NOT NULL,
    "comentario" TEXT
);

-- CreateTable
CREATE TABLE "users" (
    "id" BIGINT NOT NULL PRIMARY KEY,
    "username" TEXT NOT NULL,
    "pass" TEXT NOT NULL,
    "persona_id" BIGINT NOT NULL,
    "is_active" BOOLEAN NOT NULL,
    "role" INTEGER NOT NULL,
    CONSTRAINT "users_persona_id_fkey" FOREIGN KEY ("persona_id") REFERENCES "d_persona" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "d_clientes" (
    "id" BIGINT NOT NULL PRIMARY KEY,
    "persona_id" BIGINT NOT NULL,
    "tipo_cliente_id" BIGINT NOT NULL,
    "tipo_prestamo_id" BIGINT NOT NULL,
    CONSTRAINT "d_clientes_persona_id_fkey" FOREIGN KEY ("persona_id") REFERENCES "d_persona" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "d_clientes_tipo_cliente_id_fkey" FOREIGN KEY ("tipo_cliente_id") REFERENCES "c_tipo_cliente" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "d_clientes_tipo_prestamo_id_fkey" FOREIGN KEY ("tipo_prestamo_id") REFERENCES "c_tipo_prestamo" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "d_inversores" (
    "id" BIGINT NOT NULL PRIMARY KEY,
    "persona_id" BIGINT NOT NULL,
    "tipo_prestamo_id" BIGINT NOT NULL,
    "inversion" REAL NOT NULL,
    "fecha_registro" DATETIME NOT NULL,
    "is_active" BOOLEAN NOT NULL,
    CONSTRAINT "d_inversores_persona_id_fkey" FOREIGN KEY ("persona_id") REFERENCES "d_persona" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "d_inversores_tipo_prestamo_id_fkey" FOREIGN KEY ("tipo_prestamo_id") REFERENCES "c_tipo_prestamo" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
