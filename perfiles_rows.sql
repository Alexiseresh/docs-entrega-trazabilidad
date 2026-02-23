==========================================================
- ESTRUCTURA DE LA TABLA: perfiles
- Descripción: Sistema para el registro y trazabilidad de 
  recepción de mercancía ("El Morocho")
==========================================================

CREATE TABLE IF NOT EXISTS public.perfiles (
    id uuid REFERENCES auth.users ON DELETE CASCADE NOT NULL PRIMARY KEY,
    nombre text NOT NULL,
    apellido text NOT NULL,
    rol text CHECK (rol IN ('gerente', 'trabajador')) NOT NULL,
    updated_at timestamp with time zone DEFAULT now()
);
