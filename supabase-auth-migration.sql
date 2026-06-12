-- 로그인 기능 마이그레이션 (Une Phrase)
-- Supabase Dashboard → SQL Editor 에서 실행하세요
-- 실행 전 supabase-setup.sql이 먼저 적용되어 있어야 합니다

-- 문장 소유자 컬럼: 새로 추가되는 문장은 자동으로 현재 로그인한 사용자 소유가 됨
alter table sentences
  add column if not exists user_id uuid references auth.users(id) default auth.uid();

-- 기존의 "누구나 접근" 정책 제거
drop policy if exists "allow all for anon" on sentences;

-- 로그인한 사용자가 자기 문장만 보고/추가하고/수정하고/삭제할 수 있게 함
drop policy if exists "select own" on sentences;
create policy "select own" on sentences
  for select using (user_id = auth.uid());

drop policy if exists "insert own" on sentences;
create policy "insert own" on sentences
  for insert with check (user_id = auth.uid());

-- update의 using 절에 "user_id is null"을 포함:
-- 로그인 전에 만들어진 주인 없는 시드 문장(속담 5개)을
-- 처음 로그인한 계정이 자동으로 가져갈 수 있게 함 (앱이 로그인 시 1회 실행)
drop policy if exists "update own" on sentences;
create policy "update own" on sentences
  for update using (user_id = auth.uid() or user_id is null)
  with check (user_id = auth.uid());

drop policy if exists "delete own" on sentences;
create policy "delete own" on sentences
  for delete using (user_id = auth.uid());
