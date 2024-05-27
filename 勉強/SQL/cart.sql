--------------------------------------------------------------------------------
-- public.cart のレイアウト変更
--   注意！！：テーブルに依存するオブジェクト（ビューなど）が削除される場合があります。それらのオブジェクトは復元されません。
--   2024/05/27 小林 雄磨
--------------------------------------------------------------------------------


-- 新テーブルの作成
create table public.cart (
  cart_id bigserial not null
  , account_id integer not null
  , goods_id integer not null
  , quantity integer not null
  , total_amount integer not null
)
/


-- 主キーの作成
alter table public.cart  add primary key (cart_id,account_id,goods_id)
/


-- コメントの作成
comment on table public.cart is 'カート'
/

comment on column public.cart.cart_id is 'カートID'
/

comment on column public.cart.account_id is 'アカウントID'
/

comment on column public.cart.goods_id is '商品ID'
/

comment on column public.cart.quantity is '数量'
/

comment on column public.cart.total_amount is '数量合計金額'
/

