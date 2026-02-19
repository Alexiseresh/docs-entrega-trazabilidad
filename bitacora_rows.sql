==========================================================
- ESTRUCTURA DE LA TABLA: bitacora
- Descripción: Sistema para el registro y trazabilidad de 
  recepción de mercancía ("El Morocho")
==========================================================

CREATE TABLE IF NOT EXISTS public.bitacora (
    id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    created_at timestamp with time zone DEFAULT now(),
    usuario_nombre text NOT NULL,
    usuario_rol text NOT NULL,    
    accion text NOT NULL,         
    detalles text,                
    modulo text DEFAULT 'recepcion'
);

==========================================================
     HISTORIAL DE ACCIONES (TRAZABILIDAD DEL SISTEMA)
==========================================================

INSERT INTO "public"."bitacora" ("id", "created_at", "usuario_nombre", "usuario_rol", "accion", "detalles", "modulo") VALUES ('151a43b7-31be-4563-a494-43a60e8698e1', '2026-02-12 20:49:31.774633+00', 'Kaulis Slyter', 'gerente', 'UPDATE', 'Editó el registro #9854 (Jamón de Pierna Estándar - 45.05kg)', 'Recepción de Mercancía'), ('164bc5b7-c279-4325-b996-7b2e1d8d651f', '2026-02-16 17:22:06.689695+00', 'Kaulis Slyter', 'gerente', 'UPDATE', 'Editó el registro #5e79 (Queso Amarillo Tipo Edam - 12 Kgkg)', 'Recepción de Mercancía'), ('443ec26c-91f3-40c1-a650-1208411c4481', '2026-02-16 17:19:12.622152+00', 'Kaulis Slyter', 'gerente', 'UPDATE', 'Editó el registro #2af0 (Prosciutto Italiano - 5.25 Kgkg)', 'Recepción de Mercancía'), ('4a196112-3a98-42ce-9d3d-e129e414c4a6', '2026-02-16 18:04:51.539883+00', 'Kaulis Slyter', 'gerente', 'DELETE', 'Eliminó el registro #53b8 (Mortadela Tipo Edam - 99.99kg)', 'Recepción de Mercancía'), ('5632510c-be54-4f7c-8f74-a3453969b1e7', '2026-02-19 20:16:12.749312+00', 'Alexis Lopez', 'trabajador', 'INSERT', 'Registró: Solomo de Cuerito (85.25 kg) - Prov: Carnicería El Toro', 'Recepción de Mercancía'), ('5aac7339-0dc2-4d79-af35-bcf131a5a1e3', '2026-02-16 17:20:54.772018+00', 'Kaulis Slyter', 'gerente', 'DELETE', 'Eliminó el registro #2af0 (Prosciutto Italiano - 5.25kg)', 'Recepción de Mercancía'), ('7df0326f-e538-4c86-addd-308bd8806bf3', '2026-02-19 20:16:58.413607+00', 'Kaulis Garcia', 'gerente', 'INSERT', 'Registró: Queso Amarillo (45.5 kg) - Prov: Distribuidora Los Andes', 'Recepción de Mercancía'), ('a0f379f0-5d4e-40db-8274-ad55ce270245', '2026-02-16 18:04:23.847435+00', 'Kaulis Slyter', 'gerente', 'INSERT', 'Registró: Mortadela Tipo Edam (99.99 kg) - Prov: Embutidos Polar', 'Recepción de Mercancía'), ('a6544baa-b17e-4ee5-a58e-5fcf5ab024e3', '2026-02-16 17:18:49.624553+00', 'Kaulis Slyter', 'gerente', 'INSERT', 'Registró nueva entrada: Prosciutto Italiano (5.25) del proveedor Distribuidora El Faro', 'Recepción de Mercancía'), ('aa50e490-388f-4380-bb74-0b9d18c0256b', '2026-02-16 17:59:54.939211+00', 'Alexis Lopez', 'trabajador', 'INSERT', 'Registró: Mortadela (15.5 kg) - Prov: Distribuidora Central', 'Recepción de Mercancía'), ('c15395a7-fe24-4335-ba01-67732475dab9', '2026-02-12 19:54:24.425703+00', 'Alexis Lopez', 'trabajador', 'INSERT', 'Registró nueva entrada: Queso Amarillo Tipo Edam (12.5 Kg) del proveedor Distribuidora Alimentos El Corral', 'Recepción de Mercancía'), ('d447e329-8541-47e3-89fd-e933ba239ad9', '2026-02-12 21:27:46.817516+00', 'Kaulis Slyter', 'gerente', 'DELETE', 'Eliminó el registro #9854 (Jamón de Pierna Estándar - 45.05kg)', 'Recepción de Mercancía'), ('e95d1847-25da-4ff8-aa35-bb2107ae0d20', '2026-02-16 18:02:23.310697+00', 'Kaulis Slyter', 'gerente', 'UPDATE', 'Editó registro #3b68: Mortadela (18kg)', 'Recepción de Mercancía');