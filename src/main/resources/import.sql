INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');


INSERT INTO tb_user (name, email, password) VALUES ('alex bolado', 'alex@gmail.com', '$2a$10$UEZ2vq113Xh36U3XxtGE6uLlQ8Gx8V2u9OewzE/OUfMEiw1ymvQ.i');
INSERT INTO tb_user (name, email, password) VALUES ('maria bolada', 'maria@gmail.com', '$2a$10$UEZ2vq113Xh36U3XxtGE6uLlQ8Gx8V2u9OewzE/OUfMEiw1ymvQ.i');
INSERT INTO tb_user (name, email, password) VALUES ('bob construtor', 'bob@gmail.com', '$2a$10$UEZ2vq113Xh36U3XxtGE6uLlQ8Gx8V2u9OewzE/OUfMEiw1ymvQ.i');


INSERT INTO tb_user_role (user_id, role_id) VALUES (1,2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2,1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2,2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3,1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3,2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3,3);