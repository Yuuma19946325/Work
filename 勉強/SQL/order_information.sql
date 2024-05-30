--------------------------------------------------------------------------------
-- public."order" のレイアウト変更
--   注意！！：テーブルに依存するオブジェクト（ビューなど）が削除される場合があります。それらのオブジェクトは復元されません。
--   2024/05/30 小林 雄磨
--------------------------------------------------------------------------------


-- 新テーブルの作成
create table public.order_information (
  order_id bigserial not null
  , account_id integer
  , post_code character varying(255) not null
  , address character varying(255) not null
  , total_amount integer not null
  , order_state integer not null
  , update_data timestamp(6) without time zone
)
/


-- 主キーの作成
alter table public.order_information  add primary key (order_id)
/


-- コメントの作成
comment on table public.order_information is '注文'
/

comment on column public.order_information.order_id is '注文ID'
/

comment on column public.order_information.account_id is 'アカウントID'
/

comment on column public.order_information.post_code is '郵便番号'
/

comment on column public.order_information.address is '住所'
/

comment on column public.order_information.total_amount is '合計金額'
/

comment on column public.order_information.order_state is '注文状態'
/

comment on column public.order_information.update_data is '更新日時'
/

