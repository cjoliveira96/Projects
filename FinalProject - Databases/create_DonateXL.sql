/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     10/13/2022 3:32:11 PM                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ARTICLESUBCATEGORIES') and o.name = 'FK_ARTICLESUBCATEGORIES_ARTICLECATEGORIES')
alter table ARTICLESUBCATEGORIES
   drop constraint FK_ARTICLESUBCATEGORIES_ARTICLECATEGORIES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CITIES') and o.name = 'FK_CITIES_COUNTRIES')
alter table CITIES
   drop constraint FK_CITIES_COUNTRIES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONTAINERS') and o.name = 'FK_CONTAINERS_ORIGINOFGOODS')
alter table CONTAINERS
   drop constraint FK_CONTAINERS_ORIGINOFGOODS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONTAINERS') and o.name = 'FK_CONTAINERS_WAREHOUSES')
alter table CONTAINERS
   drop constraint FK_CONTAINERS_WAREHOUSES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ITEMS') and o.name = 'FK_ITEMS_STORES')
alter table ITEMS
   drop constraint FK_ITEMS_STORES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ITEMS') and o.name = 'FK_ITEMS_ORIGINOFGOODS')
alter table ITEMS
   drop constraint FK_ITEMS_ORIGINOFGOODS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ITEMS') and o.name = 'FK_ITEMS_SOCIAL_PROJECTS')
alter table ITEMS
   drop constraint FK_ITEMS_SOCIAL_PROJECTS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ITEMS') and o.name = 'FK_ITEMS_SIZES')
alter table ITEMS
   drop constraint FK_ITEMS_SIZES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ITEMS') and o.name = 'FK_ITEMS_ARTICLESUBCATEGORIES')
alter table ITEMS
   drop constraint FK_ITEMS_ARTICLESUBCATEGORIES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NDC') and o.name = 'FK_NDC_CITIES')
alter table NDC
   drop constraint FK_NDC_CITIES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NEWSLETTER') and o.name = 'FK_NEWSLETTER_FOLLOWERS')
alter table NEWSLETTER
   drop constraint FK_NEWSLETTER_FOLLOWERS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NEWSLETTER') and o.name = 'FK_NEWSLETTER_STORES')
alter table NEWSLETTER
   drop constraint FK_NEWSLETTER_STORES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROMOITEMS') and o.name = 'FK_PROMOITEMS_ITEMS')
alter table PROMOITEMS
   drop constraint FK_PROMOITEMS_ITEMS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROMOITEMS') and o.name = 'FK_PROMOITEMS_PROMOTIONS')
alter table PROMOITEMS
   drop constraint FK_PROMOITEMS_PROMOTIONS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PROMOTIONS') and o.name = 'FK_PROMOTIONS_STORES')
alter table PROMOTIONS
   drop constraint FK_PROMOTIONS_STORES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('STORES') and o.name = 'FK_STORES_CITIES')
alter table STORES
   drop constraint FK_STORES_CITIES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('STORES') and o.name = 'FK_STORES_NDC')
alter table STORES
   drop constraint FK_STORES_NDC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('STORES') and o.name = 'FK_STORES_ORIGINOFGOODS')
alter table STORES
   drop constraint FK_STORES_ORIGINOFGOODS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('WAREHOUSES') and o.name = 'FK_WAREHOUSES_NDC')
alter table WAREHOUSES
   drop constraint FK_WAREHOUSES_NDC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('WAREHOUSES') and o.name = 'FK_WAREHOUSES_CITIES')
alter table WAREHOUSES
   drop constraint FK_WAREHOUSES_CITIES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ARTICLECATEGORIES')
            and   type = 'U')
   drop table ARTICLECATEGORIES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ARTICLESUBCATEGORIES')
            and   name  = 'CATEGORY_FK'
            and   indid > 0
            and   indid < 255)
   drop index ARTICLESUBCATEGORIES.CATEGORY_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ARTICLESUBCATEGORIES')
            and   type = 'U')
   drop table ARTICLESUBCATEGORIES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CITIES')
            and   name  = 'CITYCOUNTRY_FK'
            and   indid > 0
            and   indid < 255)
   drop index CITIES.CITYCOUNTRY_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CITIES')
            and   type = 'U')
   drop table CITIES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CONTAINERS')
            and   name  = 'WAREHOUSE_FK'
            and   indid > 0
            and   indid < 255)
   drop index CONTAINERS.WAREHOUSE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CONTAINERS')
            and   type = 'U')
   drop table CONTAINERS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('COUNTRIES')
            and   type = 'U')
   drop table COUNTRIES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FOLLOWERS')
            and   type = 'U')
   drop table FOLLOWERS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ITEMS')
            and   name  = 'ORIGIN_FK'
            and   indid > 0
            and   indid < 255)
   drop index ITEMS.ORIGIN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ITEMS')
            and   name  = 'SIZE_FK'
            and   indid > 0
            and   indid < 255)
   drop index ITEMS.SIZE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ITEMS')
            and   name  = 'SUBCATEGORY_FK'
            and   indid > 0
            and   indid < 255)
   drop index ITEMS.SUBCATEGORY_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ITEMS')
            and   name  = 'REUSEDIN_FK'
            and   indid > 0
            and   indid < 255)
   drop index ITEMS.REUSEDIN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ITEMS')
            and   name  = 'DESTINATIONSTORE_FK'
            and   indid > 0
            and   indid < 255)
   drop index ITEMS.DESTINATIONSTORE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ITEMS')
            and   type = 'U')
   drop table ITEMS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NDC')
            and   name  = 'NDCCITY_FK'
            and   indid > 0
            and   indid < 255)
   drop index NDC.NDCCITY_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NDC')
            and   type = 'U')
   drop table NDC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NEWSLETTER')
            and   name  = 'NEWSLETTERSTORE_FK'
            and   indid > 0
            and   indid < 255)
   drop index NEWSLETTER.NEWSLETTERSTORE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NEWSLETTER')
            and   name  = 'NEWSLETTERFOLLOWER_FK'
            and   indid > 0
            and   indid < 255)
   drop index NEWSLETTER.NEWSLETTERFOLLOWER_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NEWSLETTER')
            and   type = 'U')
   drop table NEWSLETTER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ORIGINOFGOODS')
            and   type = 'U')
   drop table ORIGINOFGOODS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROMOITEMS')
            and   name  = 'PROMOTION_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROMOITEMS.PROMOTION_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROMOITEMS')
            and   name  = 'ITEM_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROMOITEMS.ITEM_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROMOITEMS')
            and   type = 'U')
   drop table PROMOITEMS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PROMOTIONS')
            and   name  = 'PROMOTIONSTORE_FK'
            and   indid > 0
            and   indid < 255)
   drop index PROMOTIONS.PROMOTIONSTORE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PROMOTIONS')
            and   type = 'U')
   drop table PROMOTIONS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SIZES')
            and   type = 'U')
   drop table SIZES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SOCIAL_PROJECTS')
            and   type = 'U')
   drop table SOCIAL_PROJECTS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('STORES')
            and   name  = 'CITYSTORE_FK'
            and   indid > 0
            and   indid < 255)
   drop index STORES.CITYSTORE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('STORES')
            and   name  = 'NDC_FK'
            and   indid > 0
            and   indid < 255)
   drop index STORES.NDC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('STORES')
            and   type = 'U')
   drop table STORES
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('WAREHOUSES')
            and   name  = 'CITYWAREHOUSE_FK'
            and   indid > 0
            and   indid < 255)
   drop index WAREHOUSES.CITYWAREHOUSE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('WAREHOUSES')
            and   name  = 'BELONGSTONDC_FK'
            and   indid > 0
            and   indid < 255)
   drop index WAREHOUSES.BELONGSTONDC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('WAREHOUSES')
            and   type = 'U')
   drop table WAREHOUSES
go

/*==============================================================*/
/* Table: ARTICLECATEGORIES                                     */
/*==============================================================*/
create table ARTICLECATEGORIES (
   IDCATEGORY           int                  not null,
   CATEGORY             varchar(50)          not null,
   constraint PK_ARTICLECATEGORIES primary key nonclustered (IDCATEGORY)
)
go

/*==============================================================*/
/* Table: ARTICLESUBCATEGORIES                                  */
/*==============================================================*/
create table ARTICLESUBCATEGORIES (
   IDCATEGORY           int                  not null,
   IDSUBCATEGORY        int                  not null,
   SUBCATEGORY          varchar(50)          null,
   constraint PK_ARTICLESUBCATEGORIES primary key nonclustered (IDCATEGORY, IDSUBCATEGORY)
)
go

/*==============================================================*/
/* Index: CATEGORY_FK                                           */
/*==============================================================*/
create index CATEGORY_FK on ARTICLESUBCATEGORIES (
IDCATEGORY ASC
)
go

/*==============================================================*/
/* Table: CITIES                                                */
/*==============================================================*/
create table CITIES (
   IDCOUNTRY            char(3)              not null,
   IDCITY               int                  not null,
   CITYNAME             varchar(50)          not null,
   constraint PK_CITIES primary key nonclustered (IDCOUNTRY, IDCITY)
)
go

/*==============================================================*/
/* Index: CITYCOUNTRY_FK                                        */
/*==============================================================*/
create index CITYCOUNTRY_FK on CITIES (
IDCOUNTRY ASC
)
go

/*==============================================================*/
/* Table: CONTAINERS                                            */
/*==============================================================*/
create table CONTAINERS (
   IDCONTAINER          numeric              not null,
   IDWAREHOUSE          numeric              not null,
   LATITUDE             float                null,
   LONGITUDE            float                null,
   PERCENTFULL          smallint             null
      constraint CKC_PERCENTFULL_CONTAINE check (PERCENTFULL is null or (PERCENTFULL between 1 and 100)),
   constraint PK_CONTAINERS primary key (IDCONTAINER)
)
go

/*==============================================================*/
/* Index: WAREHOUSE_FK                                          */
/*==============================================================*/
create index WAREHOUSE_FK on CONTAINERS (
IDWAREHOUSE ASC
)
go

/*==============================================================*/
/* Table: COUNTRIES                                             */
/*==============================================================*/
create table COUNTRIES (
   IDCOUNTRY            char(3)              not null,
   COUNTRYNAME          varchar(50)          not null,
   constraint PK_COUNTRIES primary key nonclustered (IDCOUNTRY)
)
go

/*==============================================================*/
/* Table: FOLLOWERS                                             */
/*==============================================================*/
create table FOLLOWERS (
   IDFOLLOWER           numeric              identity,
   FIRSTNAME            varchar(30)          null,
   LASTNAME             varchar(30)          null,
   EMAIL                varchar(50)          null,
   MOBILE               varchar(10)          null,
   constraint PK_FOLLOWERS primary key nonclustered (IDFOLLOWER)
)
go

/*==============================================================*/
/* Table: ITEMS                                                 */
/*==============================================================*/
create table ITEMS (
   IDITEM               numeric              identity,
   IDSIZE               smallint             not null,
   IDORIGIN             numeric              not null,
   IDSOCIALPROJECT      numeric              null,
   IDCATEGORY           int                  null,
   IDSUBCATEGORY        int                  null,
   IDDESTINATIONSTORE   numeric              null,
   DATE_OF_ENTRANCE_IN_NDC datetime             null,
   DATE_OF_EXIT_FROM_THE_NDC datetime             null,
   DATE_OF_SALE         datetime             null,
   "USE"                varchar(20)          null
      constraint CKC_USE_ITEMS check ("USE" is null or ("USE" in ('Resell','Recycling','Reuse','Elimination'))),
   PRICE                money                null,
   PRICEOFSALE          money                null,
   PREMIUM              bit                  null,
   BRAND                varchar(50)          null,
   SEASON               varchar(50)          null
      constraint CKC_SEASON_ITEMS check (SEASON is null or (SEASON in ('Summer','Fall','Winter','Spring'))),
   constraint PK_ITEMS primary key nonclustered (IDITEM)
)
go

/*==============================================================*/
/* Index: DESTINATIONSTORE_FK                                   */
/*==============================================================*/
create index DESTINATIONSTORE_FK on ITEMS (
IDDESTINATIONSTORE ASC
)
go

/*==============================================================*/
/* Index: REUSEDIN_FK                                           */
/*==============================================================*/
create index REUSEDIN_FK on ITEMS (
IDSOCIALPROJECT ASC
)
go

/*==============================================================*/
/* Index: SUBCATEGORY_FK                                        */
/*==============================================================*/
create index SUBCATEGORY_FK on ITEMS (
IDCATEGORY ASC,
IDSUBCATEGORY ASC
)
go

/*==============================================================*/
/* Index: SIZE_FK                                               */
/*==============================================================*/
create index SIZE_FK on ITEMS (
IDSIZE ASC
)
go

/*==============================================================*/
/* Index: ORIGIN_FK                                             */
/*==============================================================*/
create index ORIGIN_FK on ITEMS (
IDORIGIN ASC
)
go

/*==============================================================*/
/* Table: NDC                                                   */
/*==============================================================*/
create table NDC (
   IDNDC                numeric              identity,
   IDCOUNTRY            char(3)              not null,
   IDCITY               int                  not null,
   NDCACRONYM           varchar(10)          null,
   NDCNAME              varchar(50)          null,
   STREET               varchar(100)         null,
   BUILDING             varchar(10)          null,
   FLOOR                varchar(5)           null,
   ZIPCODE              varchar(10)          null,
   constraint PK_NDC primary key nonclustered (IDNDC),
   constraint AK_ADDRESSES_NDC unique (STREET, BUILDING, FLOOR, ZIPCODE),
   constraint AK_COUNTRY unique (IDCOUNTRY)
)
go

/*==============================================================*/
/* Index: NDCCITY_FK                                            */
/*==============================================================*/
create index NDCCITY_FK on NDC (
IDCOUNTRY ASC,
IDCITY ASC
)
go

/*==============================================================*/
/* Table: NEWSLETTER                                            */
/*==============================================================*/
create table NEWSLETTER (
   IDFOLLOWER           numeric              not null,
   IDSTORE              numeric              not null,
   IDNEWSLETTER         numeric              identity,
   DATEOFSUBSCRIPTION   datetime             not null,
   DATEOFEXIT           datetime             null,
   constraint PK_NEWSLETTER primary key nonclustered (IDFOLLOWER, IDSTORE, IDNEWSLETTER)
)
go

/*==============================================================*/
/* Index: NEWSLETTERFOLLOWER_FK                                 */
/*==============================================================*/
create index NEWSLETTERFOLLOWER_FK on NEWSLETTER (
IDFOLLOWER ASC
)
go

/*==============================================================*/
/* Index: NEWSLETTERSTORE_FK                                    */
/*==============================================================*/
create index NEWSLETTERSTORE_FK on NEWSLETTER (
IDSTORE ASC
)
go

/*==============================================================*/
/* Table: ORIGINOFGOODS                                         */
/*==============================================================*/
create table ORIGINOFGOODS (
   IDORIGIN             numeric              identity,
   LATITUDE             float                null,
   LONGITUDE            float                null,
   constraint PK_ORIGINOFGOODS primary key nonclustered (IDORIGIN)
)
go

/*==============================================================*/
/* Table: PROMOITEMS                                            */
/*==============================================================*/
create table PROMOITEMS (
   IDITEM               numeric              not null,
   IDPROMOTION          numeric              not null,
   DISCOUNTPERCENTAGE   smallint             null default 10
      constraint CKC_DISCOUNTPERCENTAG_PROMOITE check (DISCOUNTPERCENTAGE is null or (DISCOUNTPERCENTAGE between 1 and 100)),
   constraint PK_PROMOITEMS primary key (IDITEM, IDPROMOTION)
)
go

/*==============================================================*/
/* Index: ITEM_FK                                               */
/*==============================================================*/
create index ITEM_FK on PROMOITEMS (
IDITEM ASC
)
go

/*==============================================================*/
/* Index: PROMOTION_FK                                          */
/*==============================================================*/
create index PROMOTION_FK on PROMOITEMS (
IDPROMOTION ASC
)
go

/*==============================================================*/
/* Table: PROMOTIONS                                            */
/*==============================================================*/
create table PROMOTIONS (
   IDPROMOTION          numeric              identity,
   IDSTORE              numeric              not null,
   STARTDATE            datetime             not null,
   ENDDATE              datetime             not null,
   TYPEOFPROMOTION      varchar(20)          not null
      constraint CKC_TYPEOFPROMOTION_PROMOTIO check (TYPEOFPROMOTION in ('Countdown','Regular')),
   STARTINGPRICE        money                null,
   FINALPRICE           money                null,
   PRICEREDUCTIONPERDAY money                null,
   constraint PK_PROMOTIONS primary key nonclustered (IDPROMOTION)
)
go

/*==============================================================*/
/* Index: PROMOTIONSTORE_FK                                     */
/*==============================================================*/
create index PROMOTIONSTORE_FK on PROMOTIONS (
IDSTORE ASC
)
go

/*==============================================================*/
/* Table: SIZES                                                 */
/*==============================================================*/
create table SIZES (
   IDSIZE               smallint             not null,
   SIZE                 varchar(5)           not null,
   constraint PK_SIZES primary key nonclustered (IDSIZE)
)
go

/*==============================================================*/
/* Table: SOCIAL_PROJECTS                                       */
/*==============================================================*/
create table SOCIAL_PROJECTS (
   IDSOCIALPROJECT      numeric              identity,
   SOCIALPROJECT_NAME   varchar(50)          not null,
   constraint PK_SOCIAL_PROJECTS primary key nonclustered (IDSOCIALPROJECT)
)
go

/*==============================================================*/
/* Table: STORES                                                */
/*==============================================================*/
create table STORES (
   IDSTORE              numeric              not null,
   IDCOUNTRY            char(3)              not null,
   IDCITY               int                  not null,
   IDNDC                numeric              not null,
   LATITUDE             float                null,
   LONGITUDE            float                null,
   STORETYPE            varchar(20)          not null
      constraint CKC_STORETYPE_STORES check (STORETYPE in ('Regular','Premium')),
   STREET               varchar(100)         null,
   BUILDING             varchar(10)          null,
   FLOOR                varchar(5)           null,
   ZIPCODE              varchar(10)          null,
   constraint PK_STORES primary key (IDSTORE),
   constraint AK_ADDRESSES_S unique (STREET, BUILDING, FLOOR, ZIPCODE)
)
go

/*==============================================================*/
/* Index: NDC_FK                                                */
/*==============================================================*/
create index NDC_FK on STORES (
IDNDC ASC
)
go

/*==============================================================*/
/* Index: CITYSTORE_FK                                          */
/*==============================================================*/
create index CITYSTORE_FK on STORES (
IDCOUNTRY ASC,
IDCITY ASC
)
go

/*==============================================================*/
/* Table: WAREHOUSES                                            */
/*==============================================================*/
create table WAREHOUSES (
   IDWAREHOUSE          numeric              identity,
   IDCOUNTRY            char(3)              not null,
   IDCITY               int                  not null,
   IDNDC                numeric              not null,
   STREET               varchar(100)         null,
   BUILDING             varchar(10)          null,
   FLOOR                varchar(5)           null,
   ZIPCODE              varchar(10)          null,
   constraint PK_WAREHOUSES primary key nonclustered (IDWAREHOUSE),
   constraint AK_ADDRESSES_W unique (STREET, BUILDING, FLOOR, ZIPCODE)
)
go

/*==============================================================*/
/* Index: BELONGSTONDC_FK                                       */
/*==============================================================*/
create index BELONGSTONDC_FK on WAREHOUSES (
IDNDC ASC
)
go

/*==============================================================*/
/* Index: CITYWAREHOUSE_FK                                      */
/*==============================================================*/
create index CITYWAREHOUSE_FK on WAREHOUSES (
IDCOUNTRY ASC,
IDCITY ASC
)
go

alter table ARTICLESUBCATEGORIES
   add constraint FK_ARTICLESUBCATEGORIES_ARTICLECATEGORIES foreign key (IDCATEGORY)
      references ARTICLECATEGORIES (IDCATEGORY)
go

alter table CITIES
   add constraint FK_CITIES_COUNTRIES foreign key (IDCOUNTRY)
      references COUNTRIES (IDCOUNTRY)
go

alter table CONTAINERS
   add constraint FK_CONTAINERS_ORIGINOFGOODS foreign key (IDCONTAINER)
      references ORIGINOFGOODS (IDORIGIN)
go

alter table CONTAINERS
   add constraint FK_CONTAINERS_WAREHOUSES foreign key (IDWAREHOUSE)
      references WAREHOUSES (IDWAREHOUSE)
go

alter table ITEMS
   add constraint FK_ITEMS_STORES foreign key (IDDESTINATIONSTORE)
      references STORES (IDSTORE)
go

alter table ITEMS
   add constraint FK_ITEMS_ORIGINOFGOODS foreign key (IDORIGIN)
      references ORIGINOFGOODS (IDORIGIN)
go

alter table ITEMS
   add constraint FK_ITEMS_SOCIAL_PROJECTS foreign key (IDSOCIALPROJECT)
      references SOCIAL_PROJECTS (IDSOCIALPROJECT)
go

alter table ITEMS
   add constraint FK_ITEMS_SIZES foreign key (IDSIZE)
      references SIZES (IDSIZE)
go

alter table ITEMS
   add constraint FK_ITEMS_ARTICLESUBCATEGORIES foreign key (IDCATEGORY, IDSUBCATEGORY)
      references ARTICLESUBCATEGORIES (IDCATEGORY, IDSUBCATEGORY)
go

alter table NDC
   add constraint FK_NDC_CITIES foreign key (IDCOUNTRY, IDCITY)
      references CITIES (IDCOUNTRY, IDCITY)
go

alter table NEWSLETTER
   add constraint FK_NEWSLETTER_FOLLOWERS foreign key (IDFOLLOWER)
      references FOLLOWERS (IDFOLLOWER)
go

alter table NEWSLETTER
   add constraint FK_NEWSLETTER_STORES foreign key (IDSTORE)
      references STORES (IDSTORE)
go

alter table PROMOITEMS
   add constraint FK_PROMOITEMS_ITEMS foreign key (IDITEM)
      references ITEMS (IDITEM)
go

alter table PROMOITEMS
   add constraint FK_PROMOITEMS_PROMOTIONS foreign key (IDPROMOTION)
      references PROMOTIONS (IDPROMOTION)
go

alter table PROMOTIONS
   add constraint FK_PROMOTIONS_STORES foreign key (IDSTORE)
      references STORES (IDSTORE)
go

alter table STORES
   add constraint FK_STORES_CITIES foreign key (IDCOUNTRY, IDCITY)
      references CITIES (IDCOUNTRY, IDCITY)
go

alter table STORES
   add constraint FK_STORES_NDC foreign key (IDNDC)
      references NDC (IDNDC)
go

alter table STORES
   add constraint FK_STORES_ORIGINOFGOODS foreign key (IDSTORE)
      references ORIGINOFGOODS (IDORIGIN)
go

alter table WAREHOUSES
   add constraint FK_WAREHOUSES_NDC foreign key (IDNDC)
      references NDC (IDNDC)
go

alter table WAREHOUSES
   add constraint FK_WAREHOUSES_CITIES foreign key (IDCOUNTRY, IDCITY)
      references CITIES (IDCOUNTRY, IDCITY)
go

