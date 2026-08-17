-- Santana Files: esquema para Supabase
-- Ejecuta este SQL en Supabase > SQL Editor.
create table if not exists public.sf_users (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  username text unique not null,
  password_hash text not null,
  created_at timestamptz not null default now()
);

create table if not exists public.sf_files (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.sf_users(id) on delete cascade,
  original_name text not null,
  storage_path text not null,
  mime_type text,
  size_bytes bigint,
  created_at timestamptz not null default now()
);

create table if not exists public.sf_messages (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.sf_users(id) on delete cascade,
  sender text not null check (sender in ('admin','user')),
  body text not null,
  created_at timestamptz not null default now()
);

-- Crea también un bucket privado llamado: santana-files
-- Para producción, las políticas RLS deben restringir cada usuario a sus propios registros.
-- No guardes contraseñas en texto plano. El frontend demo usa texto plano SOLO para la demostración local.
