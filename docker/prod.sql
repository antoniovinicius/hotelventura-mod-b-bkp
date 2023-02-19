CREATE TABLE `tb_contatos` (
  `id_contato` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `mensagem` text NOT NULL,
  `data_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;



CREATE TABLE `tb_emails` (
  `id_email` int NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `tb_log_reservas` (
  `id_log_reserva` int NOT NULL,
  `texto_log` varchar(200) NOT NULL,
  `data_registro` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_log_reserva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tb_quartos` (
  `id_quarto` int NOT NULL AUTO_INCREMENT,
  `nome_quarto` varchar(128) NOT NULL,
  `descricao` varchar(512) NOT NULL,
  `tarifa` decimal(10,2) NOT NULL,
  `foto` varchar(256) NOT NULL,
  `data_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_quarto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

INSERT INTO `tb_quartos` VALUES (1,'Bife de Costela com molho','Vide electram sadipscing et per. Aenean aliquam molestie leo, vitae iaculis nisl.',40.00,'images/1ce85fd1cb1deebf5b9454a01.jpg','2018-09-12 16:48:58'),(2,'Hambúrguer com Fritas','Vide electram sadipscing et per. Aenean aliquam leo, vitae iaculis nisl.',40.00,'images/b96aebc26eff9b487b674b104.jpg','2018-09-12 16:48:58'),(10,'Teste21234412','TEste2234',120.00,'images/b96aebc26eff9b487b674b105.jpg','2022-06-20 20:52:44'),(12,'Quarto presidencial','quarto presidencial',500.00,'images/a846c5291e5d8e1a84b4e6e01.jpg','2022-06-21 18:11:29');

CREATE TABLE `tb_reservas` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `qt_hospedes` int NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `data_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fk_id_quarto` int DEFAULT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `fk_id_quartos_idx` (`fk_id_quarto`),
  CONSTRAINT `fk_id_quartos` FOREIGN KEY (`fk_id_quarto`) REFERENCES `tb_quartos` (`id_quarto`)
) ENGINE=InnoDB AUTO_INCREMENT=513 DEFAULT CHARSET=utf8mb3;

INSERT INTO `tb_reservas` VALUES (511,'Teste','teste@teste.com.br',4,'2022-07-07','2022-07-21','2022-07-06 22:37:43',NULL),(512,'Teste','teste@teste.com.br',2,'2022-07-08','2022-07-21','2022-07-06 22:42:43',NULL);

CREATE TABLE `tb_usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `senha` varchar(256) NOT NULL,
  `data_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo_usuario` int NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

INSERT INTO `tb_usuarios` VALUES (1,'João Rangel','joao@hcode.com.br','1111','2018-04-17 18:57:44',1),(4,'Antonio Souza','antvinicius@gmail.com','3333','2022-06-08 22:51:10',1),(5,'admin','admin@admin.com','1234','2022-07-13 13:55:04',1);

ALTER TABLE railway.tb_reservas ADD status_reserva varchar(64) NULL;



INSERT INTO `tb_contatos` VALUES (3,'Teste','teste@teste.com','teste23134','2022-06-08 23:42:56'),(4,'Antonio','teste@teste.com.br','Opa bão?!!','2022-10-24 16:31:25'),(5,'TEste','teste@teste.com.br','Teste2','2022-12-04 15:07:53'),(7,'aaaaa2','aaaaa2@uau.com','uau','2022-12-10 19:36:48'),(8,'aaaaa2','aaaaa2@uau.com','uau','2022-12-10 19:40:37'),(9,'teste1234','ga@ga.com','ga','2022-12-10 19:41:23'),(10,'teste1644','teste1644@uol.com','teste1644','2022-12-10 19:44:51'),(11,'arg','arg@argentina.com','TEste copa','2022-12-13 19:38:31'),(12,'Adimir','admir@admir.com','OALAR','2022-12-13 19:47:18'),(13,'Huge','huge@huge.com.br','EAI ADEMIR','2022-12-13 19:49:23'),(14,'opa','agora chefge','bao','2022-12-13 19:49:37'),(15,'opa','agora chefge','bao','2022-12-13 19:50:45'),(16,'aaaaaa','aaaaaa@aaa.com.br','asddadasd','2023-01-27 19:42:00');

INSERT INTO `tb_emails` VALUES (1,'teste@teste.com'),(3,'antvinicius@gmail.com'),(4,'abc@abvc.com.br'),(5,'teste@test2.com'),(6,'geae@geage.com.br'),(7,'ger23@g3.com.br');

INSERT INTO `tb_quartos` VALUES (1,'QUARTO DE SOLTEIRO PADRÃO','Estes quartos de solteiro são tranquilos e confortáveis, e oferecem televisão de tela plana, linha de telefone externa e uma escrivaninha, tornando-se ideais para visitantes a negócios. Desfrute de acesso Wi-Fi gratuito, uma decoração clássica, piso em parquet e banheiro privativo.\r\n1 pessoa.\r\n1 cama de solteiro.',180.00,'images/e7ac9bc94c866260ae9fe8a01.jpg','2018-09-12 16:48:58'),(2,'QUARTO DE CASAL PADRÃO','Desfrute de ar condicionado, cama de casal grande e acesso Wi-Fi gratuito. Estes quartos de casal são espaçosos e oferecem bastante luz natural. Oferecem uma decoração moderna e leve, com uma elegante mistura de tons chocolate e bege, piso em parquet e mobília de madeira clássica. 2 pessoas. 1 cama de casal.',250.00,'images/e7ac9bc94c866260ae9fe8a02.jpg','2018-09-12 16:48:58'),(10,'QUARTO TRIPLO SUPERIOR','Estes quartos que foram reformados recentemente agora oferecem uma atmosfera aconchegante, com decoração moderna, um elegante piso em parquet e cores neutras. Esses quartos são completos, com acesso Wi-Fi gratuito e TV de tela plana. 3 pessoas. 1 cama de casal e 1 cama de solteiro.',300.00,'images/e7ac9bc94c866260ae9fe8a03.jpg','2022-06-20 20:52:44'),(12,'QUARTO MASTER DELUXE','Este é o quarto mais espaçoso e luxuoso do hotel. São 80m² de estrutura moderna para você aproveitar a viagem. Os destaques são seus vários ambientes como: sala de estar, sala de TV, piscina privativa, copa & cozinha, banheiro com hidromassagem e terraço. 2 pessoas. 1 cama de casal.',500.00,'images/e7ac9bc94c866260ae9fe8a06.jpg','2022-06-21 18:11:29'),(13,'QUARTO TESTE TRIUNFAL','Quarto teste triunfal',700.00,'images/6a5abe5407a8fef0b6db1e900.jpg','2023-01-27 19:38:39');

