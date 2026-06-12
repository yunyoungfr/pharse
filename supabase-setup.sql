-- 오늘의 한 문장 앱 (Une Phrase) - Supabase 설정
-- Supabase Dashboard → SQL Editor 에서 실행하세요

create table if not exists sentences (
  id uuid primary key default gen_random_uuid(),
  ko text not null,           -- 한국어 뜻
  fr text not null,           -- 프랑스어 문장
  src text default '내 문장',  -- 출처
  is_favorite boolean default false,  -- 즐겨찾기
  is_learned boolean default false,   -- 외운 문장
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- updated_at 자동 갱신
create or replace function update_updated_at()
returns trigger as $$
begin
  new.updated_at = now();
  return new;
end;
$$ language plpgsql;

drop trigger if exists update_sentences_updated_at on sentences;
create trigger update_sentences_updated_at
  before update on sentences
  for each row execute function update_updated_at();

-- 개인용 앱이므로 anon 접근 허용 (URL과 anon key를 아는 사람만 접근 가능)
-- 나중에 로그인 기능을 붙이면 user_id 컬럼 + auth 기반 정책으로 바꾸면 됩니다
alter table sentences enable row level security;

drop policy if exists "allow all for anon" on sentences;
create policy "allow all for anon" on sentences
  for all using (true) with check (true);

-- 기본 시드 문장 (출처가 분명한 프랑스 속담 위주)
insert into sentences (ko, fr, src) values
  ('조금씩 조금씩, 새는 둥지를 짓는다.', 'Petit à petit, l''oiseau fait son nid.', '프랑스 속담'),
  ('원하는 것이 곧 할 수 있는 것이다.', 'Vouloir, c''est pouvoir.', '프랑스 속담'),
  ('비 온 뒤에 맑은 날씨가 온다.', 'Après la pluie, le beau temps.', '프랑스 속담'),
  ('힘든 것은 첫걸음뿐이다.', 'Il n''y a que le premier pas qui coûte.', '프랑스 속담'),
  ('하루하루가 새로운 한 페이지다.', 'Chaque jour est une page nouvelle.', '격언');
