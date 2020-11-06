-- cliente
INSERT INTO cliente(nome, endereco) VALUES ('Arnaldo Almeida', 'Rua Almeida');
INSERT INTO cliente(nome, endereco) VALUES ('Bruna Almeida', 'Rua Almeida');
INSERT INTO cliente(nome, endereco) VALUES ('Carlos Almeida', 'Rua Almeida');
INSERT INTO cliente(nome, endereco) VALUES ('Daiane Almeida', 'Rua Almeida');
INSERT INTO cliente(nome, endereco) VALUES ('Edson Almeida', 'Rua Almeida');

INSERT INTO cliente(nome, endereco) VALUES ('Arnaldo Batista', 'Rua Boring');
INSERT INTO cliente(nome, endereco) VALUES ('Bruna Batista', 'Rua Boring');
INSERT INTO cliente(nome, endereco) VALUES ('Carlos Batista', 'Rua Boring');
INSERT INTO cliente(nome, endereco) VALUES ('Daiane Batista', 'Rua Boring');
INSERT INTO cliente(nome, endereco) VALUES ('Edson Batista', 'Rua Boring');

INSERT INTO cliente(nome, endereco) VALUES ('Arnaldo Câmara', 'Rua Camelo');
INSERT INTO cliente(nome, endereco) VALUES ('Bruna Câmara', 'Rua Camelo');
INSERT INTO cliente(nome, endereco) VALUES ('Carlos Câmara', 'Rua Camelo');
INSERT INTO cliente(nome, endereco) VALUES ('Daiane Câmara', 'Rua Camelo');
INSERT INTO cliente(nome, endereco) VALUES ('Edson Câmara', 'Rua Camelo');

INSERT INTO cliente(nome, endereco) VALUES ('Arnaldo Dantas', 'Rua Dantas');
INSERT INTO cliente(nome, endereco) VALUES ('Bruna Dantas', 'Rua Dantas');
INSERT INTO cliente(nome, endereco) VALUES ('Carlos Dantas', 'Rua Dantas');
INSERT INTO cliente(nome, endereco) VALUES ('Daiane Dantas', 'Rua Dantas');
INSERT INTO cliente(nome, endereco) VALUES ('Edson Dantas', 'Rua Dantas');

INSERT INTO cliente(nome, endereco) VALUES ('Arnaldo Elísio', 'Rua Elói');
INSERT INTO cliente(nome, endereco) VALUES ('Bruna Elísio', 'Rua Elói');
INSERT INTO cliente(nome, endereco) VALUES ('Carlos Elísio', 'Rua Elói');
INSERT INTO cliente(nome, endereco) VALUES ('Daiane Elísio', 'Rua Elói');
INSERT INTO cliente(nome, endereco) VALUES ('Edson Elísio', 'Rua Elói');


-- piloto
INSERT INTO piloto(nome, num_voos) VALUES ('Francisco Ferreira', 0);
INSERT INTO piloto(nome, num_voos) VALUES ('Guilherme Ferreira', 15);
INSERT INTO piloto(nome, num_voos) VALUES ('Hélio Ferreira', 200);
INSERT INTO piloto(nome, num_voos) VALUES ('Ivo Ferreira', 3992);
INSERT INTO piloto(nome, num_voos) VALUES ('João Ferreira', 1001);

-- voo
INSERT INTO voo(tipo, piloto, num_passageiros, distancia) VALUES (1, 2, 11, 1000);
INSERT INTO voo(tipo, piloto, num_passageiros, distancia) VALUES (2, 2, 12, 1500);

INSERT INTO voo(tipo, piloto, num_passageiros, distancia) VALUES (2, 2, 14, 2000);
INSERT INTO voo(tipo, piloto, num_passageiros, distancia) VALUES (1, 2, 14, 2500);

INSERT INTO voo(tipo, piloto, num_passageiros, distancia) VALUES (1, 3, 15, 3000);
INSERT INTO voo(tipo, piloto, num_passageiros, distancia) VALUES (1, 3, 16, 3500);

INSERT INTO voo(tipo, piloto, num_passageiros, distancia) VALUES (2, 4, 17, 3500);
INSERT INTO voo(tipo, piloto, num_passageiros, distancia) VALUES (2, 4, 18, 4000);
INSERT INTO voo(tipo, piloto, num_passageiros, distancia) VALUES (1, 4, 19, 4500);

INSERT INTO voo(tipo, piloto, num_passageiros, distancia) VALUES (2, 5, 20, 5000);

-- milhas
INSERT INTO milhas(cliente, quantidade) VALUES (2, 200);
INSERT INTO milhas(cliente, quantidade) VALUES (3, 300);
INSERT INTO milhas(cliente, quantidade) VALUES (4, 400);
INSERT INTO milhas(cliente, quantidade) VALUES (5, 500);
INSERT INTO milhas(cliente, quantidade) VALUES (6, 600);

INSERT INTO milhas(cliente, quantidade) VALUES (7, 600);
INSERT INTO milhas(cliente, quantidade) VALUES (8, 700);
INSERT INTO milhas(cliente, quantidade) VALUES (9, 800);
INSERT INTO milhas(cliente, quantidade) VALUES (10, 900);
INSERT INTO milhas(cliente, quantidade) VALUES (11, 1000);

INSERT INTO milhas(cliente, quantidade) VALUES (12, 1600);
INSERT INTO milhas(cliente, quantidade) VALUES (13, 1700);
INSERT INTO milhas(cliente, quantidade) VALUES (14, 1800);
INSERT INTO milhas(cliente, quantidade) VALUES (15, 1900);
INSERT INTO milhas(cliente, quantidade) VALUES (16, 2000);

INSERT INTO milhas(cliente, quantidade) VALUES (17, 60);
INSERT INTO milhas(cliente, quantidade) VALUES (18, 70);
INSERT INTO milhas(cliente, quantidade) VALUES (19, 80);
INSERT INTO milhas(cliente, quantidade) VALUES (20, 90);

INSERT INTO milhas(cliente, quantidade) VALUES (21, 1100);
INSERT INTO milhas(cliente, quantidade) VALUES (22, 1200);
INSERT INTO milhas(cliente, quantidade) VALUES (23, 1300);
INSERT INTO milhas(cliente, quantidade) VALUES (24, 1400);
INSERT INTO milhas(cliente, quantidade) VALUES (25, 1500);

-- cliente_voo
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (2, 2, 'Econômica');
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (3, 2, 'Executiva');
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (4, 2, 'Econômica');
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (5, 2, 'Executiva');
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (6, 2, 'Econômica');

INSERT INTO cliente_voo(cliente, voo, classe) VALUES (2, 3, 'Econômica');
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (3, 3, 'Executiva');
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (4, 3, 'Econômica');
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (5, 3, 'Executiva');
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (6, 3, 'Econômica');

INSERT INTO cliente_voo(cliente, voo, classe) VALUES (7, 4, 'Econômica');
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (8, 4, 'Executiva');
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (9, 4, 'Econômica');
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (10, 4, 'Executiva');
INSERT INTO cliente_voo(cliente, voo, classe) VALUES (11, 4, 'Econômica');