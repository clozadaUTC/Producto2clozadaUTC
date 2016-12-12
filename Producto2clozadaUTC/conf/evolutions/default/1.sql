# --- First database schema

# --- !Ups



create table postre (
  id                        bigint not null,
  name                      varchar(255),
  descripcion                      varchar(255),
calorias                    varchar(255),
  
  
  constraint pk_postre primary key (id))
;

create sequence company_seq start with 1000;
create sequence postre_seq start with 1000;


alter table postre add constraint fk_postre_company_1 foreign key (company_id) references company (id) on delete restrict on update restrict;
create index ix_postre_company_1 on postre (company_id);


# --- !Downs

SET REFERENTIAL_INTEGRITY FALSE;

drop table if exists company;
drop table if exists postre;

SET REFERENTIAL_INTEGRITY TRUE;

drop sequence if exists company_seq;
drop sequence if exists postre_seq;

