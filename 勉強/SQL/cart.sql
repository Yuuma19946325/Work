--------------------------------------------------------------------------------
-- public.cart �̃��C�A�E�g�ύX
--   ���ӁI�I�F�e�[�u���Ɉˑ�����I�u�W�F�N�g�i�r���[�Ȃǁj���폜�����ꍇ������܂��B�����̃I�u�W�F�N�g�͕�������܂���B
--   2024/05/27 ���� �Y��
--------------------------------------------------------------------------------


-- �V�e�[�u���̍쐬
create table public.cart (
  cart_id bigserial not null
  , account_id integer not null
  , goods_id integer not null
  , quantity integer not null
  , total_amount integer not null
)
/


-- ��L�[�̍쐬
alter table public.cart  add primary key (cart_id,account_id,goods_id)
/


-- �R�����g�̍쐬
comment on table public.cart is '�J�[�g'
/

comment on column public.cart.cart_id is '�J�[�gID'
/

comment on column public.cart.account_id is '�A�J�E���gID'
/

comment on column public.cart.goods_id is '���iID'
/

comment on column public.cart.quantity is '����'
/

comment on column public.cart.total_amount is '���ʍ��v���z'
/

