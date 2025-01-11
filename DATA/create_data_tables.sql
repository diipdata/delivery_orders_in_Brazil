-- Criar o schema, se não existir
CREATE SCHEMA IF NOT EXISTS project;

-- Criar a tabela "CHANNELS" no schema
CREATE TABLE IF NOT EXISTS project.tb_channels (
    channel_id INT NULL,
    channel_name VARCHAR(50) NULL,
    channel_type VARCHAR(50) NULL
);

-- Importar dados do CSV para a tabela "CHANNELS" usando o comando COPY
COPY project.tb_channels (channel_id, channel_name, channel_type)
FROM 'D:/Data_Analyst/DSA_CURSO_SQL/delivery_orders_in_Brazil/DATA/archive/channels.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',', QUOTE '"');

-- Criar a tabela "DELIVERIES" no schema
CREATE TABLE IF NOT EXISTS project.tb_deliveries (
    delivery_id INT NULL,
    delivery_order_id INT NULL,
    driver_id INT NULL,
    delivery_distance_meters INT NULL,
    delivery_status VARCHAR(50) NULL
);

-- Importar dados do CSV para a tabela "DELIVERIES" usando o comando COPY
COPY project.tb_deliveries (delivery_id, delivery_order_id, driver_id, delivery_distance_meters, delivery_status)
FROM 'D:/Data_Analyst/DSA_CURSO_SQL/delivery_orders_in_Brazil/DATA/archive/deliveries.csv'
WITH (FORMAT CSV, HEADER, DELIMITER ',', QUOTE '"');

-- Cria a tabela "DRIVERS"
CREATE TABLE project.tb_drivers(
	driver_id INT NULL,
	driver_modal VARCHAR(50) NULL,
	driver_type VARCHAR(50) NULL
);

-- Cria a tabela "HUBS"
CREATE TABLE project.hubs (
  hub_id int DEFAULT NULL,
  hub_name text,
  hub_city text,
  hub_state text,
  hub_latitude double DEFAULT NULL,
  hub_longitude double DEFAULT NULL);
);

-- Cria a tabela "ORDERS"
CREATE TABLE project.orders (
  order_id int DEFAULT NULL,
  store_id int DEFAULT NULL,
  channel_id int DEFAULT NULL,
  payment_order_id int DEFAULT NULL,
  delivery_order_id int DEFAULT NULL,
  order_status text,
  order_amount double DEFAULT NULL,
  order_delivery_fee int DEFAULT NULL,
  order_delivery_cost text,
  order_created_hour int DEFAULT NULL,
  order_created_minute int DEFAULT NULL,
  order_created_day int DEFAULT NULL,
  order_created_month int DEFAULT NULL,
  order_created_year int DEFAULT NULL,
  order_moment_created text,
  order_moment_accepted text,
  order_moment_ready text,
  order_moment_collected text,
  order_moment_in_expedition text,
  order_moment_delivering text,
  order_moment_delivered text,
  order_moment_finished text,
  order_metric_collected_time text,
  order_metric_paused_time text,
  order_metric_production_time text,
  order_metric_walking_time text,
  order_metric_expediton_speed_time text,
  order_metric_transit_time text,
  order_metric_cycle_time text
  );

-- Cria a tabela "PAYMENTS"
CREATE TABLE project.payments (
  payment_id int DEFAULT NULL,
  payment_order_id int DEFAULT NULL,
  payment_amount double DEFAULT NULL,
  payment_fee double DEFAULT NULL,
  payment_method text,
  payment_status text
  );

-- Cria a tabela "STORE"
  CREATE TABLE exec4.stores (
  store_id int DEFAULT NULL,
  hub_id int DEFAULT NULL,
  store_name text,
  store_segment text,
  store_plan_price int DEFAULT NULL,
  store_latitude text,
  store_longitude text);