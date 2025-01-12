-- Criar o schema, se não existir
CREATE SCHEMA IF NOT EXISTS project;

-- Criar a tabela "CHANNELS" no schema
CREATE TABLE IF NOT EXISTS project.tb_channels (
    "channel_id" INT NULL,
    "channel_name" VARCHAR(50) NULL,
    "channel_type" VARCHAR(50) NULL
);

-- Importar dados do CSV para a tabela "CHANNELS" usando o comando COPY
COPY project.tb_channels ("channel_id", "channel_name", "channel_type")
FROM 'D:/Data_Analyst/DSA_CURSO_SQL/delivery_orders_in_Brazil/DATA/archive/channels.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',', QUOTE '"', ENCODING 'UTF8');

-- Criar a tabela "DELIVERIES" no schema
CREATE TABLE IF NOT EXISTS project.tb_deliveries (
    "delivery_id" INT NULL,
    "delivery_order_id" INT NULL,
    "driver_id" INT NULL,
    "delivery_distance_meters" INT NULL,
    "delivery_status" VARCHAR(50) NULL
);

-- Importar dados do CSV para a tabela "DELIVERIES" usando o comando COPY
COPY project.tb_deliveries ("delivery_id", "delivery_order_id", "driver_id", "delivery_distance_meters", "delivery_status")
FROM 'D:/Data_Analyst/DSA_CURSO_SQL/delivery_orders_in_Brazil/DATA/archive/deliveries.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',', QUOTE '"', ENCODING 'UTF8');

-- Cria a tabela "DRIVERS"
CREATE TABLE IF NOT EXISTS project.tb_drivers (
    "driver_id" INT NULL,
    "driver_modal" VARCHAR(50) NULL,
    "driver_type" VARCHAR(50) NULL
);

-- Importar dados do CSV para a tabela "DRIVERS" usando o comando COPY
COPY project.tb_drivers ("driver_id", "driver_modal", "driver_type")
FROM 'D:/Data_Analyst/DSA_CURSO_SQL/delivery_orders_in_Brazil/DATA/archive/drivers.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',', QUOTE '"', ENCODING 'UTF8');

-- Cria a tabela "HUBS"
CREATE TABLE IF NOT EXISTS project.tb_hubs (
  "hub_id" INT DEFAULT NULL,
  "hub_name" TEXT,
  "hub_city" TEXT,
  "hub_state" TEXT,
  "hub_latitude" DOUBLE PRECISION DEFAULT NULL,
  "hub_longitude" DOUBLE PRECISION DEFAULT NULL
);

-- Importar dados do CSV para a tabela "HUBS" usando o comando COPY
COPY project.tb_hubs ("hub_id", "hub_name", "hub_city", "hub_state", "hub_latitude", "hub_longitude")
FROM 'D:/Data_Analyst/DSA_CURSO_SQL/delivery_orders_in_Brazil/DATA/archive/hubs.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',', QUOTE '"', ENCODING 'UTF8');

-- Criar a tabela "ORDERS"
CREATE TABLE IF NOT EXISTS project.tb_orders (
    "order_id" INT DEFAULT NULL,
    "store_id" INT DEFAULT NULL,
    "channel_id" INT DEFAULT NULL,
    "payment_order_id" INT DEFAULT NULL,
    "delivery_order_id" INT DEFAULT NULL,
    "order_status" TEXT,
    "order_amount" DOUBLE PRECISION DEFAULT NULL,
    "order_delivery_fee" DOUBLE PRECISION DEFAULT NULL,
    "order_delivery_cost" TEXT,
    "order_created_hour" INT DEFAULT NULL,
    "order_created_minute" INT DEFAULT NULL,
    "order_created_day" INT DEFAULT NULL,
    "order_created_month" INT DEFAULT NULL,
    "order_created_year" INT DEFAULT NULL,
    "order_moment_created" TEXT,
    "order_moment_accepted" TEXT,
    "order_moment_ready" TEXT,
    "order_moment_collected" TEXT,
    "order_moment_in_expedition" TEXT,
    "order_moment_delivering" TEXT,
    "order_moment_delivered" TEXT,
    "order_moment_finished" TEXT,
    "order_metric_collected_time" TEXT,
    "order_metric_paused_time" TEXT,
    "order_metric_production_time" TEXT,
    "order_metric_walking_time" TEXT,
    "order_metric_expediton_speed_time" TEXT,
    "order_metric_transit_time" TEXT,
    "order_metric_cycle_time" TEXT
);

-- Importar dados do CSV para a tabela "ORDERS" usando o comando COPY
COPY project.tb_orders (
    "order_id", "store_id", "channel_id", "payment_order_id", "delivery_order_id", "order_status", 
    "order_amount", "order_delivery_fee", "order_delivery_cost", "order_created_hour", 
    "order_created_minute", "order_created_day", "order_created_month", "order_created_year", 
    "order_moment_created", "order_moment_accepted", "order_moment_ready", "order_moment_collected", 
    "order_moment_in_expedition", "order_moment_delivering", "order_moment_delivered", 
    "order_moment_finished", "order_metric_collected_time", "order_metric_paused_time", 
    "order_metric_production_time", "order_metric_walking_time", "order_metric_expediton_speed_time", 
    "order_metric_transit_time", "order_metric_cycle_time"
)
FROM 'D:/Data_Analyst/DSA_CURSO_SQL/delivery_orders_in_Brazil/DATA/archive/orders.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',', QUOTE '"', ENCODING 'UTF8');

-- Criar a tabela "PAYMENTS"
CREATE TABLE IF NOT EXISTS project.tb_payments (
    "payment_id" INT DEFAULT NULL,
    "payment_order_id" INT DEFAULT NULL,
    "payment_amount" DOUBLE PRECISION DEFAULT NULL,
    "payment_fee" DOUBLE PRECISION DEFAULT NULL,
    "payment_method" TEXT,
    "payment_status" TEXT
);

-- Importar dados do CSV para a tabela "PAYMENTS" usando o comando COPY
COPY project.tb_payments (
    "payment_id", "payment_order_id", "payment_amount", "payment_fee", "payment_method", "payment_status"
)
FROM 'D:/Data_Analyst/DSA_CURSO_SQL/delivery_orders_in_Brazil/DATA/archive/payments.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',', QUOTE '"', ENCODING 'UTF8');

-- Cria a tabela "STORES"
CREATE TABLE IF NOT EXISTS project.tb_stores (
    "store_id" INT DEFAULT NULL,
    "hub_id" INT DEFAULT NULL,
    "store_name" TEXT,
    "store_segment" TEXT,
    "store_plan_price" DOUBLE PRECISION DEFAULT NULL,
    "store_latitude" DOUBLE PRECISION DEFAULT NULL,
    "store_longitude" DOUBLE PRECISION DEFAULT NULL
);

-- Importar dados do CSV para a tabela "STORES" usando o comando COPY
COPY project.tb_stores ("store_id", "hub_id", "store_name", "store_segment", "store_plan_price", "store_latitude", "store_longitude")
FROM 'D:/Data_Analyst/DSA_CURSO_SQL/delivery_orders_in_Brazil/DATA/archive/stores.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',', QUOTE '"', ENCODING 'UTF8');