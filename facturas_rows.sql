==========================================================
- ESTRUCTURA DE LA TABLA: facturas
- Proyecto: Sistema para el registro y trazabilidad de 
  recepción de mercancía ("El Morocho")
==========================================================

CREATE TABLE IF NOT EXISTS public.facturas (
    id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    created_at timestamp with time zone DEFAULT now(),
    proveedor text NOT NULL,
    producto text NOT NULL,
    kilos numeric(10,2) NOT NULL, 
    monto numeric(10,2) NOT NULL, 
    usuario_id uuid               
);

==========================================================
     REGISTROS DE INSERCIÓN (DATA REAL DEL SISTEMA)
==========================================================

INSERT INTO "public"."facturas" ("id", "proveedor", "producto", "kilos", "monto", "usuario_id", "created_at") VALUES ('08e6c92a-eb22-4ea5-adc5-566f2031225d', 'Carnicería El Toro', 'Solomo de Cuerito', '85.25', '515.50', '80512efa-0ae0-40e9-b9d8-cd13c3382dc6', '2026-02-19 20:16:12.360757+00'), ('35d8f85e-26e6-467a-bd91-54ede8908c6c', 'Distribuidora Los Andes', 'Queso Amarillo', '45.5', '210.00', '7ae3035b-9cbf-43e9-bdaf-0490f579a9f3', '2026-02-19 20:16:58.120835+00'), ('400c2d41-b55e-45b7-980a-5681bb9c3b68', 'Distribuidora Central II', 'Mortadela', '18', '45.00', '80512efa-0ae0-40e9-b9d8-cd13c3382dc6', '2026-02-16 17:59:54.702827+00'), ('a17e6504-3a48-4794-9eba-973401e705e2', 'Distribuidora El Castillo', 'Salchichón Tipo Italiano', '5.00', '42.00', '7ae3035b-9cbf-43e9-bdaf-0490f579a9f3', '2026-02-04 21:09:23.540745+00'), ('a56ae5c5-a514-416a-bd52-2903e6045e79', 'Distribuidora Alimentos El Corral', 'Queso Amarillo Tipo Edam', '12', '80.00', '80512efa-0ae0-40e9-b9d8-cd13c3382dc6', '2026-02-12 19:54:24.063658+00');