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

INSERT INTO tb_course (name, img_url, img_gray_url) VALUES ('bootcamp html', 'imghtml.com', 'imggrayhtml.com')
INSERT INTO tb_course (name, img_url, img_gray_url) VALUES ('bootcamp flutter', 'imghtml.com', 'imggrayhtml.com')

INSERT INTO tb_notification(text, route, user_id, read, moment) VALUES ('notification test', 'user alex', 1, true, '2023-07-15T12:34:56Z');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', '2023-07-15T12:34:56Z', '2024-07-15T12:34:56Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.5', '2022-07-15T12:34:56Z', '2023-07-15T12:34:56Z', 2);

INSERT INTO tb_resource (title, description, position, img_url, type, offer_id) VALUES ('trilha Html', 'trilha do curso', 1, 'imgtrilhhtml.com', 1, 1);
INSERT INTO tb_resource (title, description, position, img_url, type, offer_id) VALUES ('forum', 'tira duvidas do curso', 2, 'imgtrilhhtml.com', 2, 1);
INSERT INTO tb_resource (title, description, position, img_url, type, offer_id) VALUES ('lives', 'lives do curso', 3, 'imgtrilhhtml.com', 0, 1);