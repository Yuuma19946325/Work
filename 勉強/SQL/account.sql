--------------------------------------------------------------------------------
-- public.account のレイアウト変更
--   注意！！：テーブルに依存するオブジェクト（ビューなど）が削除される場合があります。それらのオブジェクトは復元されません。
--   2024/05/21 小林 雄磨
--------------------------------------------------------------------------------


-- 新テーブルの作成
create table public.account (
  account_id serial not null
  , account_name varchar(100) not null
  , post_code varchar(100) not null
  , address varchar(100) not null
  , telephone_number varchar(100) not null
  , mail_address varchar(100) not null
  , password varchar(100) not null
  , update_data date not null
  , delete_data date
  , delete_flag boolean
)
/


-- 主キーの作成
alter table public.account  add primary key (account_id)
/


-- コメントの作成
comment on table public.account is 'アカウント'
/

comment on column public.account.account_id is 'アカウントID'
/

comment on column public.account.account_name is 'アカウント名'
/

comment on column public.account.post_code is '郵便番号'
/

comment on column public.account.address is '住所'
/

comment on column public.account.telephone_number is '電話番号'
/

comment on column public.account.mail_address is 'Eメールアドレス'
/

comment on column public.account.password is 'パスワード'
/

comment on column public.account.update_data is '更新日時'
/

comment on column public.account.delete_data is '削除日時'
/

comment on column public.account.delete_flag is '削除フラグ'
/

