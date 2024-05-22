--------------------------------------------------------------------------------
-- public.account �̃��C�A�E�g�ύX
--   ���ӁI�I�F�e�[�u���Ɉˑ�����I�u�W�F�N�g�i�r���[�Ȃǁj���폜�����ꍇ������܂��B�����̃I�u�W�F�N�g�͕�������܂���B
--   2024/05/21 ���� �Y��
--------------------------------------------------------------------------------


-- �V�e�[�u���̍쐬
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


-- ��L�[�̍쐬
alter table public.account  add primary key (account_id)
/


-- �R�����g�̍쐬
comment on table public.account is '�A�J�E���g'
/

comment on column public.account.account_id is '�A�J�E���gID'
/

comment on column public.account.account_name is '�A�J�E���g��'
/

comment on column public.account.post_code is '�X�֔ԍ�'
/

comment on column public.account.address is '�Z��'
/

comment on column public.account.telephone_number is '�d�b�ԍ�'
/

comment on column public.account.mail_address is 'E���[���A�h���X'
/

comment on column public.account.password is '�p�X���[�h'
/

comment on column public.account.update_data is '�X�V����'
/

comment on column public.account.delete_data is '�폜����'
/

comment on column public.account.delete_flag is '�폜�t���O'
/

