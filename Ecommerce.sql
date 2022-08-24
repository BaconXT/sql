show databases;

create database ecommerce;

use ecommerce;

create table Usuario (
  UsuId int primary key auto_increment,
  UsuLogin varchar (19) not null unique,
  UsuSenha varchar (255) not null,
  UsuEmail varchar (29) not null unique,
  UsuCpf varchar (15) not null unique,
  UsuCel varchar (35) not null,
  UsuNome varchar (20) not null
);

describe Usuario;

insert into Usuario(UsuLogin, UsuSenha, UsuEmail, UsuCpf, UsuCel, UsuNome)
values("yuriPacheco", md5("2"), "yuripacritter@gmail.com", "056.500.906-02", "(99) 78235-6921", "Yuri Pacheco");


insert into Usuario(UsuLogin, UsuSenha, UsuEmail, UsuCpf, UsuCel, UsuNome)
values("VictorMaia", md5("2"), "VictorMaia@gmail.com", "136.078.257-18", "(99) 72761-6112", "Victor Maia da Silva");

insert into Usuario(UsuLogin, UsuSenha, UsuEmail, UsuCpf, UsuCel, UsuNome)
values("admin", md5("admin"), "admin@gmail.com", "223.626.854-90", "(101) 78912-1543", "Benio Rittler");

select * from Usuario;


create table Produtos(

  ProdId int primary key auto_increment,
  ProdNome varchar (45) not null,
  ProdQuantidade int not null,
  ProdCategoria varchar (255) not null,
  ProdDescricao text (255) not null,
  ProdFornecedor varchar (100) not null,
  ProdDataCad timestamp default current_timestamp,
  ProdEstoque int not null, 
  ProdPreco decimal (10,2) not null,
  Foto1 varchar (255) null,
  Foto2 varchar(255) null,
  ForId int not null, 
foreign key (ForId) references Fornecedores (ForId)
);

describe Produtos;

show tables;

insert into Produtos (ProdCategoria, ProdDescricao, ProdPreco, ProdNome, Foto1, Foto2, ProdQuantidade) 
values ("Games", "Batalhe entre 4 torres, defenda sua base destruindo 3 bases, jogue com amigos, batalhe, se defenda e destrua as bases inimigas.", 5, "DoomSpire BrickBattle", "https://tr.rbxcdn.com/a4914e38525ec41c221fda9f86d4b1ab/768/432/Image/Png", "https://tr.rbxcdn.com/832616091f8c288145b37ddc7aa0a98b/768/432/Image/Png", 2);

select * from Produtos;

insert into Produtos(ProdCategoria, ProdDescricao, ProdPreco, ProdNome, Foto1, Foto2, ProdQuantidade)
values ("Games", "Terraria é um jogo eletrônico RPG de ação-aventura independente produzido pela desenvolvedora de jogos Re-Logic. Possui como características a exploração, artesanato, construção de estruturas e combate a monstros perigosos em um mundo 2D gerado proceduralmente.", 5.2 ,"Terraria", "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_download_software_1/H2x1_NSwitchDS_Terraria_image1600w.jpg", "http://assets1.ignimgs.com/2017/04/05/terrariaotherworld-ign-1491413900442.jpg", 9);


create table Fornecedores (
ForId int primary key auto_increment,
ForCnpj varchar(18) not null unique,
ForRazao varchar(100) not null,
ForFantasia varchar(100) not null,
ForFone varchar(25) not null,
ForCep varchar(10) not null,
ForEndereco varchar(67) not null,
ForNumero varchar(9) not null,
ForBairro varchar(35) not null,
ForCidade varchar(40) not null,
ForUF char(2) not null
);

describe Fornecedores;
