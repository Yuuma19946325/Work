--------------------------------------------------------------------------------
-- public."order" �̃��C�A�E�g�ύX
--   ���ӁI�I�F�e�[�u���Ɉˑ�����I�u�W�F�N�g�i�r���[�Ȃǁj���폜�����ꍇ������܂��B�����̃I�u�W�F�N�g�͕�������܂���B
--   2024/05/30 ���� �Y��
--------------------------------------------------------------------------------


-- �V�e�[�u���̍쐬
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


-- ��L�[�̍쐬
alter table public.order_information  add primary key (order_id)
/


-- �R�����g�̍쐬
comment on table public.order_information is '����'
/

comment on column public.order_information.order_id is '����ID'
/

comment on column public.order_information.account_id is '�A�J�E���gID'
/

comment on column public.order_information.post_code is '�X�֔ԍ�'
/

comment on column public.order_information.address is '�Z��'
/

comment on column public.order_information.total_amount is '���v���z'
/

comment on column public.order_information.order_state is '�������'
/

comment on column public.order_information.update_data is '�X�V����'
/

