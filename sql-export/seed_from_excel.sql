-- Auto-generated from assignment spreadsheets
-- Generated at: 2026-05-13T12:57:11.730982

BEGIN;

-- Roles
INSERT INTO "UserRole" ("RoleName") VALUES
('Заказчик'),('Менеджер'),('Директор'),('Мастер'),('Конструктор')
ON CONFLICT ("RoleName") DO NOTHING;

-- Users from CSV
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsar2018', '2M2IQH', 'Яковлев Ефим Ильяович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuxd2018', '*PI3KN', 'Васильева Маргарита Валерьяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEepk2018', 'VZ&Ak7', 'Петухов Гордей Серапионович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjhb2018', 'PNvt8N', 'Нестеров Виктор Юлианович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExzi2018', '{+1T1M', 'Белоусов Антонин Яковович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvva2018', 'G{q*LD', 'Ермакова Александра Куприяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEudz2018', 'Xcjvmi', 'Баранова Галина Еремеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyyj2018', 'z+U0XU', 'Лебедев Валерьян Кимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvdj2018', '5Eq6d|', 'Никонов Богдан Юлианович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErwk2018', '|nZOKu', 'Карпов Дмитрий Владимирович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElkc2018', 'BOvRGk', 'Мартынов Онисим Ярославович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmge2018', 'C947}j', 'Кузнецов Созон Викторович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtol2018', '&ksGM5', 'Николаева Ирина Федотовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjwb2018', 'IQ+a01', 'Виноградов Ростислав Еремеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzhf2018', 'xws6L9', 'Лебедева Евдокия Ивановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEobp2018', 'XNGjJy', 'Иванов Игнатий Авксентьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEloi2018', 'azEz+L', 'Савин Пётр Артёмович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuau2018', 'FNnhJ1', 'Голубев Семён Олегович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdwi2018', 'n*aog&', 'Горбачёв Ириней Викторович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEecu2018', 's6FMJ|', 'Игнатьева Глафира Эдуардовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdfk2018', 'aqgkFV', 'Красильников Геннадий Романович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkxq2018', '8igB2p', 'Якушев Германн Мэлорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhqm2018', 'BPvGYj', 'Андреев Руслан Федосеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyzm2018', '*Nx7JS', 'Козлов Эдуард Протасьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzbd2018', 'hWTIZR', 'Галкин Ярослав Фролович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEoni2018', 'phdlXA', 'Назаров Иван Мартынович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEewk2018', '4baKX7', 'Воронцов Владимир Игнатьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdfh2018', 't0CrUG', 'Артемьев Даниил Дамирович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEufs2018', '7CLi&1', 'Абрамова Милица Аристарховна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzsy2018', 'a6}lPi', 'Владимиров Протасий Витальевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElzj2018', 'Ph0lH+', 'Агафонов Ириней Фёдорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwtu2018', 'kVUA|*', 'Суворов Владислав Иринеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpyt2018', 'VAwNEk', 'Яковлев Игнатий Даниилович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEquw2018', '65j6kZ', 'Павлов Константин Гордеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcxk2018', 'sM*fqO', 'Щукина Марфа Глебовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnxq2018', '|yxsob', 'Мишин Михаил Глебович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpmm2018', 'wRERed', 'Исакова София Юрьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEitt2018', 'L+OKpQ', 'Сысоева Виктория Максимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEttt2018', '1YOnW3', 'Большаков Владимир Филатович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExrn2018', 'eaI8ng', 'Абрамова Оксана Ростиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEelh2018', 'NNmfSo', 'Зиновьев Иван Ильяович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwxd2018', 'Smjq0v', 'Евдокимов Алексей Антонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEiho2018', 'UIlg{8', 'Романов Германн Серапионович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsyo2018', 'F743ca', 'Логинов Егор Лаврентьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmwq2018', 'YZ{snT', 'Кондратьев Бронислав Тихонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEykk2018', 'EttWT{', 'Александрова Нинель Мстиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEell2018', '7wQfBj', 'Терентьев Игорь Александрович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdys2018', 'B}2V7t', 'Пахомов Гордей Борисович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqoh2018', '+xRJ|2', 'Большаков Яков Протасьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpdv2018', 'r1HuS2', 'Крылов Авдей Анатольевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzqn2018', 'Lgd57H', 'Петрова Иванна Андреевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvzo2018', 'VO7mOE', 'Воронцов Никита Лаврентьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEiyy2018', 'Ip|*iS', 'Федосеев Иван Валентинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdgv2018', 'kfmvXj', 'Галкин Владислав Филатович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEurj2018', '9ImBsL', 'Киселёв Валерьян Евгеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaul2018', 'MTZb+A', 'Путин Станислав Протасьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbdx2018', 'F|mMSS', 'Харитонов Германн Ефимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyzp2018', 'wFCnHN', 'Гурьева Ольга Аркадьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErwb2018', 'v5RpBS', 'Сысоев Демьян Антонинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpri2018', 'RI2*T9', 'Шубин Тихон Лаврентьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzpr2018', '++NP+J', 'Евсеев Эдуард Протасьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhfv2018', 'QpAY63', 'Мясников Борис Лукьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyjy2018', '20uyVz', 'Мартынова Клавдия Лукьяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEejw2018', '4}szdy', 'Филатов Константин Вадимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdby2018', 'rleZVk', 'Ефремов Протасий Протасьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzqk2018', 'TOOuow', 'Михайлов Парфений Мэлорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjdf2018', '*jzOGy', 'Самойлов Богдан Геласьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEycc2018', 'YeTO&L', 'Громова Маргарита Митрофановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmoq2018', '*bhJb4', 'Копылова Иванна Геласьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgtz2018', 'Tv&BVy', 'Носков Семён Васильевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkuy2018', 's4Vm64', 'Данилов Егор Валентинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpxb2018', 'wso}8C', 'Иванов Вячеслав Парфеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbfn2018', 'RCt1Sk', 'Кошелева Василиса Якововна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhqt2018', 'EhWhoq', 'Данилов Мстислав Олегович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExyh2018', 'CRk03h', 'Горбунов Павел Леонидович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjrd2018', '8tl2a+', 'Никитин Борис Евгеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkma2018', 'jW{dgt', 'Доронина Фаина Якуновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEknj2018', 'hKZfoC', 'Поляков Лукьян Викторович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfvq2018', '*uGVVE', 'Уварова Наталья Евгеньевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvqh2018', 'oQmpma', 'Соболев Фрол Германович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcdg2018', 'UYNHsU', 'Суворова Зинаида Александровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpdu2018', '+g13tn', 'Федосеева Иванна Михаиловна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgbi2018', 'c29wfj', 'Кудряшов Михаил Протасьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEklt2018', '5QO|u4', 'Аксёнова Александра Лаврентьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbka2018', '|AbflR', 'Баранов Алексей Авдеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEthx2018', '+t}zCu', 'Гришин Донат Константинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErns2018', 'tz2wx5', 'Ершов Виктор Яковович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEybt2018', 'e7uyxU', 'Григорьев Митрофан Парфеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEoyy2018', '4a0mnh', 'Панов Донат Александрович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEooj2018', 'GPf+Bw', 'Буров Серапион Сергеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExbs2018', 'I6DDeV', 'Дорофеева Светлана Брониславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEafi2018', 'hN8}Tj', 'Суханова Ангелина Григорьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzyb2018', 'ZG73**', 'Сергеев Антонин Вадимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhwk2018', 'TeoCY0', 'Комиссаров Тихон Варламович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzby2018', 'n|MYCO', 'Ефимова Анжелика Николаевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExzu2018', 'Sch+GG', 'Блинов Мэлор Дамирович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExzf2018', '6cmjFd', 'Блохина Акулина Якуновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzva2018', '0vLvlW', 'Гущина Ксения Романовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdya2018', 'tS2NmR', 'Пахомов Донат Евсеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaou2018', '1E6ONr', 'Дементьев Владлен Глебович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEeqk2018', 'I{iaU4', 'Мишин Ростислав Пантелеймонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErot2018', 'I+0E2j', 'Пестова Ия Святославовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhkz2018', 'T6BAKi', 'Казакова Кира Вячеславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcxd2018', '+WMe2B', 'Жданов Ярослав Варламович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpty2018', 'm{Li1+', 'Вишнякова Прасковья Всеволодовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtaa2018', 'R8oTaQ', 'Панфилов Кондрат Антонинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEibc2018', 'qb8|Mk', 'Буров Егор Арсеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwxv2018', 'qK6y{W', 'Рожков Глеб Гордеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdmd2018', '6xjzYR', 'Федосеева Ольга Алексеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEytk2018', '7D9re0', 'Яковлева Валерия Михаиловна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqga2018', 'P+4p4a', 'Лукин Пётр Кондратович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaxl2018', 'V2S+Ih', 'Дмитриев Никита Пётрович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyan2018', 'uf6Krf', 'Тарасова Зоя Якуновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEidg2018', 'YjZW6A', 'Исаков Константин Яковович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwpm2018', 'zqnoi|', 'Юдин Валентин Геласьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpiz2018', 'JTXLk6', 'Селиверстова Анжела Алексеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdoo2018', '1jH&}l', 'Беляев Якун Протасьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjeh2018', 'IgW*|U', 'Сидоров Святослав Демьянович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEerm2018', 'XPr8zT', 'Кабанов Виктор Парфеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdlu2018', 'JgY{Zo', 'Рогов Ким Станиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEplk2018', 'xQxtYm', 'Блинова Марфа Николаевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtix2018', 'Y5zv9+', 'Тетерин Варлам Кимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEarc2018', 'AZin*Q', 'Крюков Даниил Онисимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpba2018', '&HmMXH', 'Пахомова Антонина Еремеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyeg2018', 'CFEe+Z', 'Харитонов Ириней Авксентьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEshj2018', '+XW3Bk', 'Кузьмин Евсей Андреевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEchx2018', 'S5c&fX', 'Виноградов Матвей Анатольевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwvl2018', '&9Vpqk', 'Якушева Анастасия Якуновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEeeg2018', 'fIqIdE', 'Егоров Евсей Константинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaeu2018', 'ubmJ{u', 'Морозова Феврония Всеволодовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEend2018', 'SX8Z4A', 'Доронин Митрофан Лаврентьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtik2018', 'a&+vrv', 'Костин Константин Арсеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmmh2018', 'x1wAHo', 'Сорокин Агафон Семёнович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcur2018', 'FuE312', 'Мясникова Евфросиния Федотовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEath2018', 'Ii{d2t', 'Власов Никита Мартынович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdif2018', 'Tpivcr', 'Зуев Николай Георгьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErnv2018', 'gJ1NYR', 'Жданов Степан Аристархович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhrc2018', 'sk1mgK', 'Кулагин Лукий Брониславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEodw2018', 'AMSLmE', 'Кабанова Алла Фёдоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbed2018', '282IYv', 'Соболева Валерия Всеволодовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnqq2018', 'XKrJOU', 'Михеев Ярослав Антонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjgu2018', 'ELrDod', 'Комаров Всеволод Степанович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwbn2018', '96TfQ|', 'Белоусов Лукьян Геласьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfbq2018', '}G4XKd', 'Фёдоров Донат Егорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEccy2018', '4zb2ow', 'Матвиенко Валерия Вячеславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuwn2018', 'wPbrBV', 'Калашников Бронислав Арсеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsty2018', 'Caam+a', 'Турова Василиса Алексеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEubl2018', 'R&o+7+', 'Андреев Лаврентий Созонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtqw2018', 'UJW+*N', 'Филиппова Фаина Фёдоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExic2018', 'bp&g7f', 'Соболев Геннадий Якунович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvdy2018', '|9AaAE', 'Михеева Евдокия Якововна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqhl2018', 'FQQRMz', 'Евдокимова Людмила Лаврентьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhya2018', '+JQwYv', 'Чернов Арсений Германнович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEffq2018', 'Vs0tGb', 'Бирюков Вячеслав Агафонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEopr2018', 'Oklkhh', 'Веселов Вячеслав Аркадьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmbm2018', 'g90TWM', 'Исаева Любовь Мэлоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsze2018', 'S*{8Ml', 'Гуляева Лидия Ростиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEctg2018', 'dN+jod', 'Сазонова Раиса Кондратовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEruq2018', 'mXdZTI', 'Пахомов Дмитрий Юлианович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqpk2018', 'Tnh3DJ', 'Сафонов Семён Лаврентьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmhc2018', 'mMYPim', 'Игнатьева Элеонора Олеговна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErvp2018', 'iIOsgI', 'Жданова Ангелина Якуновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgdb2018', 'xLvXN{', 'Баранов Валерьян Игнатьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExet2018', 'S*onWu', 'Селезнёва Татьяна Антониновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEupl2018', 'KE6*k|', 'Наумов Ефим Онисимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkbx2018', 'T}4cTC', 'Филатова Пелагея Якуновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzwo2018', 'zkc0S}', 'Карпова Дарья Валерьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvln2018', 'keXJ3o', 'Пономарёв Ярослав Лаврентьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEayj2018', '+b6HrZ', 'Гурьев Евгений Витальевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEoby2018', '*j704g', 'Игнатова Марфа Артёмовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdje2018', 'Ros+rl', 'Бобров Пётр Леонидович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnux2018', '{XMSKj', 'Кузнецова Элеонора Матвеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyhv2018', 'zNZYk{', 'Кузьмин Василий Валерьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuwy2018', 'm0S8Hy', 'Копылова Антонина Макаровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkit2018', 'Zx89p+', 'Кабанов Гордей Геласьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzfi2018', 'VbhJh*', 'Мельникова Прасковья Мстиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbhd2018', 'a80d5I', 'Громов Куприян Святославович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpul2018', '1y2EaM', 'Капустин Федот Русланович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsyc2018', 'IX+1o1', 'Герасимов Донат Ефимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmqf2018', '*eh|rQ', 'Панова Тамара Протасьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhjw2018', 'dFb{aw', 'Ефремов Дмитрий Мартынович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcjd2018', 'F4Qv}x', 'Поляков Евсей Алексеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElnh2018', 'D+83Ot', 'Беспалов Еремей Мартынович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEebx2018', 'WTBC7e', 'Тарасова Ксения Олеговна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtbf2018', '}g|DE+', 'Кулаков Протасий Глебович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpjz2018', 'V8ArPO', 'Соловьёва Любовь Онисимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfpm2018', 'oJ7&bs', 'Владимиров Геннадий Еремеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdrx2018', '*SZ7TL', 'Некрасова Клавдия Денисовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEykq2018', 'Veq1N7', 'Казакова Фаина Антониновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEthb2018', 'Lt7|ok', 'Сазонов Протасий Игоревич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbdb2018', 'nxULDN', 'Исаев Антон Брониславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEysy2018', '*M+eyt', 'Матвеев Илья Федосеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjrt2018', 'x8St23', 'Шестаков Всеволод Лукьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwim2018', 'Sbe&j}', 'Сергеев Еремей Серапионович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbbt2018', 'IclO}d', 'Молчанова Эмилия Мэлсовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwbe2018', 'C&n1bj', 'Комаров Альвиан Юлианович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgcb2018', 'St&dIw', 'Щукина Клавдия Куприяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvai2018', '7dX5WR', 'Суханов Лукий Ростиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErbv2018', '7NrYfL', 'Мишина Глафира Вадимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyis2018', 'qcBZOv', 'Бобылёв Якун Альбертович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmiy2018', 'dK6+AE', 'Маслов Геннадий Куприянович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExrj2018', 'WJrQlq', 'Кириллов Серапион Всеволодович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtyl2018', 'C4f}5e', 'Горшкова Людмила Филатовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvrn2018', 'AfSRZI', 'Тарасова Людмила Макаровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqoa2018', 'NUeFuT', 'Русаков Ярослав Агафонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyin2018', 'eikez3', 'Ефремова Варвара Иринеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwpz2018', 'eMn{Kl', 'Игнатьев Федосей Парфеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdmj2018', 'J+}Wvc', 'Степанова Маргарита Ильяовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEooq2018', 'pSp9XX', 'Блохина Александра Митрофановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjoa2018', 'kChmEo', 'Яковлев Фёдор Мартынович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEszj2018', 'B6&cJf', 'Журавлёва Пелагея Витальевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhzm2018', 'D*pP0+', 'Корнилов Филат Артёмович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsep2018', 'sG40du', 'Ковалёв Павел Денисович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhiq2018', 'IbJ}qw', 'Петров Вадим Мэлорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmww2018', 'ukBtoC', 'Нестеров Альберт Мстиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgju2018', 'C7nYc{', 'Терентьева Вероника Протасьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcyg2018', 'UQA1Uu', 'Белоусов Евсей Николаевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjyc2018', 'cj9ECm', 'Лебедев Парфений Якунович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvxf2018', 'yS2WHF', 'Наумов Мстислав Павлович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEajj2018', 'hzO1*o', 'Поляков Яков Юлианович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjre2018', 'Ea5FeF', 'Самойлова Клавдия Владленовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEelw2018', '8m|p+S', 'Гусева Алина Васильевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkea2018', '82af{y', 'Тимофеева Елизавета Мэлсовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExkx2018', '8uXYWo', 'Гурьева Кира Варламовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyxm2018', '*DB|&d', 'Родионов Святослав Олегович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuzv2018', '|6J|mm', 'Белов Геласий Серапионович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyaa2018', '8}w*yf', 'Уваров Руслан Иринеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgpt2018', 'Gao1gX', 'Сафонов Станислав Григорьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEojz2018', 'N50|5T', 'Игнатьев Алексей Вадимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzqo2018', 'HHG+eY', 'Елисеев Евсей Борисович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkfs2018', 'q}b+Tf', 'Воронцов Валерьян Даниилович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqql2018', 'QHE5zz', 'Князев Егор Донатович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmjf2018', 'p+u{vH', 'Ковалёва Мария Максимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjjx2018', 'DP|ubQ', 'Авдеев Константин Станиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtch2018', 'TsU4a5', 'Семёнова Жанна Онисимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpll2018', 'J9pnJW', 'Устинова Милица Георгьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqcb2018', 'oMOLh+', 'Исаева Елена Валерьяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEivc2018', 'Ci52qh', 'Сорокин Лаврентий Аркадьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEybw2018', 'd+t136', 'Наумова Пелагея Лукьяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtqn2018', 'IdjLc2', 'Фадеев Христофор Вячеславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtby2018', '36YniT', 'Блохин Богдан Улебович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnrq2018', 'pn{5RN', 'Громова Фаина Лаврентьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEill2018', '5c|dSJ', 'Зыков Богдан Леонидович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErzp2018', 'W6rx|w', 'Савельева Прасковья Георгьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjgq2018', 'gJEYkn', 'Петухова Элеонора Ильяовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbho2018', 'AFvMyh', 'Морозова Клавдия Святославовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErvi2018', '|9LJNA', 'Колесников Пантелеймон Якунович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEifv2018', 'V61gmp', 'Орехова Агафья Пантелеймоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqkn2018', 'KdU6uK', 'Фадеев Виталий Анатольевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExbf2018', 'Vl9R|I', 'Блинова Прасковья Агафоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwkl2018', '415qNv', 'Игнатова Нинель Лаврентьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqwd2018', 'Ix4V{i', 'Савин Донат Ярославович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjno2018', 'kuLGGL', 'Романов Аристарх Ильяович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpgp2018', 'q|Ov9c', 'Мишин Эдуард Фёдорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwua2018', '*tyvel', 'Макарова Маргарита Всеволодовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExdd2018', 'rp22fO', 'Носкова Нинель Иринеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmom2018', '0gSoaA', 'Суворов Егор Гордеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfxd2018', 'uZm+f6', 'Савельева Олимпиада Данииловна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfiy2018', 'nBm{qt', 'Ершова Василиса Ярославовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnxj2018', 'Y+Yif+', 'Антонов Андрей Георгьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcbu2018', 'zLj0GQ', 'Ефимова Ираида Митрофановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExbv2018', '71t|e{', 'Субботин Максим Георгьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwcj2018', 'AMXhqA', 'Тетерин Христофор Степанович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsmd2018', 'ZWSZHe', 'Абрамов Игорь Семёнович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtug2018', 'b{7&Zf', 'Казаков Онисим Анатольевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcsu2018', 'HOFZa6', 'Нестеров Андрей Даниилович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfse2018', 'axoHxw', 'Медведев Эдуард Антонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgcl2018', 'swu*ZT', 'Логинова Элеонора Дмитрьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmzj2018', 'crY1JZ', 'Сергеев Георгий Кимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvut2018', 'Y7Mm*Y', 'Медведьев Федосей Агафонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwkn2018', '2*lKn+', 'Ширяева Наина Васильевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbwn2018', 'rr&WdV', 'Кузьмина Лукия Авдеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzgc2018', 'UHIU&T', 'Шестакова Иванна Ярославовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzta2018', 'cMVEpF', 'Соболев Даниил Николаевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsld2018', 's1Ndyp', 'Петрова Агафья Константиновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvgu2018', 'm8VeJw', 'Кудрявцев Евгений Александрович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqbh2018', 'GZq4nd', 'Хохлов Семён Авдеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEokf2018', 'X3+RZ0', 'Нестеров Анатолий Донатович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcbi2018', 'UrluYp', 'Киселёв Анатолий Альвианович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgza2018', 'PXAA7c', 'Нестеров Анатолий Павлович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEswq2018', 'Rm&++t', 'Рогов Никита Вячеславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqxo2018', '8iqEG*', 'Пестов Николай Константинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEguz2018', '7wsWd4', 'Сергеева Зоя Пётровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaro2018', 'LE}Woo', 'Матвиенко Фаина Демьяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaea2018', 'OQ8Kfz', 'Кулаков Авдей Донатович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzhp2018', '16+8Jh', 'Дмитриев Владислав Аркадьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtzs2018', 'D9G6j1', 'Шестакова Евдокия Авксентьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvem2018', 'HiD*0c', 'Блинов Мэлор Ильяович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvzy2018', 'T5Qaaa', 'Щукин Федосей Павлович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErjn2018', '5FMXpr', 'Русаков Всеволод Игнатьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEiam2018', 'b+*n+0', 'Субботина Оксана Геннадьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyff2018', 'LB&hR+', 'Дорофеева Надежда Богдановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEykt2018', 'XQlo|S', 'Щукина Надежда Германновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcpb2018', '|Be{Wn', 'Моисеева Надежда Протасьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkww2018', 'KzFIWJ', 'Козлова Мария Валерьяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEldo2018', 'oWfgBB', 'Трофимова Наталья Семёновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExhi2018', 'l6eiog', 'Ефремов Дамир Яковович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEltt2018', 'vJCz+l', 'Нестерова Алина Ростиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaim2018', 'HdgRJI', 'Лазарев Святослав Олегович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEndh2018', 'JUYAwS', 'Поляков Мэлор Геннадьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpvn2018', 'v18sXi', 'Молчанов Лукий Митрофанович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcxl2018', '2ToouN', 'Семёнова Алина Эдуардовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEclw2018', 'h5Q{Nx', 'Николаев Руслан Варламович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwik2018', 'DS{WpL', 'Костин Андрей Иринеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjyb2018', 'om9BwD', 'Карпов Артём Кимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEndc2018', 'r3RSO9', 'Орехова Мария Станиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjhx2018', 'cQlCrZ', 'Зуев Глеб Игнатьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqjm2018', 'thu8kK', 'Аксёнова Нинель Кондратовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElag2018', 'NupBH|', 'Никитин Аркадий Дмитрьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsct2018', '1j*J8T', 'Тетерин Ириней Викторович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvoe2018', 'zC6|UG', 'Дорофеев Александр Авдеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEklg2018', 'l9|xfT', 'Стрелков Борис Альбертович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpzs2018', 'AVm+Oj', 'Уваров Макар Юрьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEala2018', '46+ORY', 'Андреева Ульяна Евгеньевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEheo2018', 'XiJmr9', 'Кулагин Матвей Якунович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzyn2018', 'TSGsPV', 'Ершова Элеонора Ивановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbir2018', 'ww9{S1', 'Васильев Роман Матвеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhmv2018', 'KE6+sS', 'Воронцова Наина Юрьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEldj2018', 'kZwuDV', 'Ковалёв Аристарх Егорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqph2018', '8OJ1yJ', 'Ермаков Авдей Валентинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuyn2018', 'kSOtL9', 'Никонов Игорь Мстиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfyh2018', '04JQix', 'Князев Дамир Валерьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcvs2018', 'H*OqOg', 'Фокин Бронислав Иванович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqok2018', 'kZ6|yS', 'Сысоев Даниил Даниилович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkvs2018', '0GeIOP', 'Мельникова Оксана Валентиновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEytr2018', '|vfIq2', 'Громов Богдан Максимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExid2018', 'FywuoL', 'Фомин Владимир Игнатьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzxk2018', '}+j40i', 'Соколова Екатерина Руслановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjtd2018', 'ODotUj', 'Лыткина Милица Вячеславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmyz2018', 'gKQ4r+', 'Панов Пётр Пётрович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuvg2018', '}rhenI', 'Агафонов Егор Еремеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEajx2018', 'TaE4Dg', 'Казаков Виктор Аркадьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEigl2018', 'L2J*KI', 'Дроздов Борис Мэлорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEoxo2018', 'f}*V{M', 'Игнатьев Авксентий Германович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvhm2018', 'DT}WrU', 'Медведьев Николай Мстиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvys2018', 'CxXb+r', 'Медведева Ирина Валентиновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpjw2018', 'T*wJeK', 'Никонов Виктор Русланович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElxp2018', 'vKdJGk', 'Коновалов Владлен Юрьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExfm2018', 'mh6|JS', 'Алексеев Виктор Васильевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcxr2018', 'HCt|N1', 'Суворова Алина Антоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuqk2018', '3vE*Fb', 'Жуков Игнатий Семёнович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExeb2018', 'Oa}fkk', 'Терентьева Анна Дамировна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmri2018', 's*YXSm', 'Беспалов Григорий Христофорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvmr2018', 't6aouh', 'Ермакова Лидия Григорьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtyn2018', '8qte+l', 'Стрелкова Лариса Варламовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqqw2018', 'qlJ6vk', 'Костина Юлия Дмитрьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkjs2018', 'A8K6dL', 'Шарапова Марина Павловна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvmb2018', 'TY5Gd5', 'Евдокимов Геннадий Макарович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErbm2018', 'D6SSd+', 'Моисеев Лукьян Вадимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEoez2018', 'j7qgHy', 'Якушева Лукия Васильевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvij2018', '7hn2va', 'Меркушев Альберт Яковович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjgh2018', '7w4c6u', 'Вишнякова Ирина Агафоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsrr2018', '0fO0YH', 'Медведева Валентина Никитевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEocb2018', '6oLNd{', 'Кудрявцев Дамир Эдуардович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpmv2018', 'kjE3El', 'Беляков Владислав Богданович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjov2018', 'zS&ClK', 'Мамонтова Ия Лукьяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEafs2018', 'Wiw0VR', 'Цветкова Алина Улебовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEiky2018', 'G&fF7n', 'Максимов Донат Игнатьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEoyu2018', '}*E9Se', 'Беспалова Надежда Владимировна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcpi2018', '8lSh*o', 'Воробьёва Евпраксия Ильяовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjqp2018', 'zTKmDa', 'Миронова Глафира Сергеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhnh2018', 'm0WYQH', 'Тимофеев Фёдор Валентинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuvi2018', 'U0W&Z&', 'Ефимова Дарья Всеволодовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuug2018', 'aHl3qb', 'Семёнова Марина Юрьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErmf2018', 'U4jeNa', 'Смирнов Мэлор Кондратович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhnt2018', '3X5|Jy', 'Пономарёв Владлен Протасьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuvr2018', 'wu8lYK', 'Вишняков Никита Семёнович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpsb2018', '{O|F*N', 'Ларионова Антонина Игнатьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEher2018', 'cTlCHC', 'Пономарёв Христофор Русланович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyzh2018', '8m6+}r', 'Воронова Алла Юлиановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElvm2018', 'elWeXR', 'Сергеева Таисия Альвиановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEron2018', 'ywlASa', 'Смирнов Евсей Сергеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbzh2018', 'ysac1M', 'Данилова Ангелина Аркадьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnmc2018', 'X40l}h', 'Лобанова Галина Демьяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEypj2018', '2*3jan', 'Горшкова Евгения Васильевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwvg2018', 'XcZ4xF', 'Зайцева Октябрина Станиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElqo2018', 'TiSXX{', 'Шарапова Глафира Мстиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErhy2018', 'yQl65Q', 'Кулагин Мстислав Пётрович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEoqc2018', '*Cm6gW', 'Сорокин Сергей Олегович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEskh2018', 'X{x9ae', 'Кондратьев Альвиан Протасьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvkg2018', 'tzCLIX', 'Сысоев Анатолий Арсеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpnq2018', 'D69F&h', 'Иванов Антон Степанович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyza2018', 'CsA9|P', 'Попов Илья Филатович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEiai2018', 'OPjijt', 'Захарова Маргарита Авксентьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbsc2018', 'myJPKm', 'Моисеев Лукий Борисович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExsn2018', 'lY3vnH', 'Одинцов Никита Игоревич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnnv2018', 'rITdxe', 'Игнатов Демьян Матвеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqwh2018', 'yBJ1BR', 'Щербакова Октябрина Евгеньевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqdb2018', '&S*k|o', 'Баранов Андрей Евсеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExdk2018', 'qZhYRF', 'Самойлов Агафон Юлианович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgwd2018', 'AVPVNQ', 'Кабанова Таисия Донатовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExvb2018', 'QC7KQ0', 'Евсеева Тамара Эдуардовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdhh2018', 'WpZhYf', 'Лапина Фёкла Мстиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErhx2018', 'iCAe1v', 'Дроздов Владислав Эдуардович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEenm2018', '2s1Lxh', 'Орехова Ираида Николаевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwqd2018', 'MF2TkC', 'Брагина Анастасия Кимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwom2018', 'fU+Q0O', 'Большаков Лаврентий Валерьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEngr2018', '+yxoNp', 'Меркушева Евдокия Кимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjpa2018', 'cagBg7', 'Быкова Надежда Авксентьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpgx2018', 'c**OJQ', 'Бурова Екатерина Ефимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnng2018', 'E{1p}t', 'Беспалов Михаил Фёдорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtmh2018', 'ZQ2*|q', 'Марков Вячеслав Владимирович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcbm2018', 'puJ4i1', 'Дорофеева Марина Никитевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfae2018', 'pa&d4a', 'Блохин Парфений Владленович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqzo2018', 'Gy3lzx', 'Самсонов Альвиан Игнатьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcan2018', 'SZKNx{', 'Орехова Наина Кондратовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEobl2018', 'K+rV}b', 'Борисов Геннадий Вячеславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEeyg2018', 'TOcMjG', 'Афанасьев Владлен Евгеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdld2018', '6OKEWQ', 'Колобова Алина Парфеньевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErvs2018', 'V7Rly7', 'Туров Христофор Филатович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpux2018', 'NrtA{k', 'Мартынов Олег Олегович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgwm2018', 'S2JKft', 'Давыдова Елена Георгьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEecp2018', 'iOJ*u2', 'Лапин Павел Макарович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvbv2018', '4X6wL5', 'Громова Ульяна Егоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErxe2018', '0egZd8', 'Нестерова Нина Юрьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEart2018', 'hnNvJ6', 'Захаров Фёдор Викторович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqwf2018', 'YD3ird', 'Артемьева Вероника Улебовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEszy2018', 'nq+dxM', 'Зайцев Аристарх Егорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbvt2018', 'dQdmQF', 'Галкин Авксентий Ильяович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkws2018', 'fZj28G', 'Матвеев Павел Еремеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEizo2018', '0wQJ2L', 'Ершов Федосей Геласьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnnf2018', 'z|t5P{', 'Гущина Нонна Ефимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcpv2018', '|titk+', 'Матвеев Яков Христофорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnsx2018', 'czRSi3', 'Рожкова Пелагея Геннадьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEazz2018', 'uhLV9n', 'Щербакова Агата Матвеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjkw2018', '8I8Yk1', 'Александрова Иванна Лаврентьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtri2018', '0VC{f|', 'Моисеев Фёдор Мэлсович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdlw2018', '4tyo1M', 'Трофимов Ярослав Валентинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEght2018', 'E3k7zP', 'Кондратьев Аркадий Михаилович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhzq2018', 'QhSJos', 'Мартынов Матвей Антонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwia2018', 'qVG5zl', 'Лыткин Сергей Агафонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwmh2018', 'YTtWqJ', 'Тимофеев Федот Германнович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEndq2018', 'cv7LdO', 'Евсеева Ксения Георгьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErid2018', 'vMG+ko', 'Гришина Глафира Мэлсовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExxh2018', 'UgbzHK', 'Фёдоров Аркадий Николаевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwoz2018', 'vAuXEx', 'Гурьев Пётр Федотович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdjc2018', 'x*slLs', 'Марков Александр Созонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgzq2018', 'FwZalk', 'Попов Фрол Серапионович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEefa2018', 'O6TkFS', 'Жуков Тихон Германович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcdn2018', '1MtIz}', 'Самсонова Феврония Арсеньевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgwc2018', 'zWQpyU', 'Попова Татьяна Артёмовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEefc2018', 'Zaj{+Y', 'Богданов Егор Андреевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjef2018', 'J+F{R1', 'Третьяков Аристарх Геннадьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpib2018', 'VeJY8o', 'Вишнякова Людмила Евгеньевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEekp2018', 'wvC|+L', 'Горшкова Полина Якововна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjzb2018', 'lRjz+1', 'Соболева Валентина Созоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdqb2018', 'w+Sx*+', 'Ковалёва Феврония Всеволодовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEptn2018', 'NXXNVO', 'Иван Викторовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcna2018', 'c4RbaU', 'Евсеев Денис Борисович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdrj2018', 'eD*hjv', 'Степанов Виталий Лукьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjrm2018', 'Cpb+Im', 'Никифоров Всеволод Иванович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpxl2018', 'P6h4Jq', 'Воронов Донат Никитевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwgk2018', '&mfI9l', 'Игнатьева Евгения Валентиновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpou2018', 'gX3f5Z', 'Буров Федот Егорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjwl2018', 'D4ZYHt', 'Иван Семёновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEabf2018', '*Tasm+', 'Денисов Дамир Филатович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwjm2018', 'k}DJKo', 'Ершов Максим Геласьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjvz2018', '&|bGTy', 'Копылов Куприян Пётрович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuyv2018', '8hhrZ}', 'Носов Валерьян Дмитрьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExdm2018', 'DH68L9', 'Силин Игорь Авдеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEeiv2018', 'H*BxlS', 'Дроздова Александра Мартыновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfuc2018', 'VuM+QT', 'Дроздов Аркадий Геласьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEoot2018', 'usi{aT', 'Боброва Варвара Евсеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElhk2018', 'Okk0jY', 'Чернова Агата Данииловна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEazg2018', 's3bb|V', 'Лыткина Ульяна Станиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaba2018', '+gLxUB', 'Лаврентьев Леонид Игнатьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtco2018', 'tTKDJB', 'Кулаков Юрий Владленович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsyq2018', '2QbpBN', 'Соловьёв Андрей Александрович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpxi2018', '+5X&hy', 'Корнилова Марфа Макаровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEicr2018', '3+|Sn{', 'Белоусова Любовь Георгьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcui2018', 'Zi1Tth', 'Анисимов Никита Гордеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpxc2018', 'G+nFsv', 'Стрелкова Фаина Федосеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqrd2018', 'sApUbt', 'Осипов Евгений Иванович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsso2018', '+LHGST', 'Владимирова Иванна Павловна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErsy2018', '{Aa6nS', 'Кудрявцева Жанна Демьяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvpz2018', 'mS0UxK', 'Матвиенко Яков Брониславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfog2018', 'glICay', 'Селезнёв Егор Артёмович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpii2018', 'Ob}RZB', 'Брагин Куприян Митрофанович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhyk2018', '*gN}Tc', 'Гордеев Виктор Эдуардович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdxi2018', 'ywLUbA', 'Мартынов Онисим Брониславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzro2018', 'B24s6o', 'Никонова Евгения Павловна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuxg2018', 'K8jui7', 'Полякова Анна Денисовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEllw2018', 'jNtNUr', 'Макарова Пелагея Антониновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEddg2018', 'gGGhvD', 'Андреева Анна Вячеславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpdz2018', '+XZKSw', 'Кудрявцева Кира Ефимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyiw2018', 'cnj3QR', 'Шилова Кира Егоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqup2018', '95AU|R', 'Ситников Игорь Борисович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExil2018', 'w+++Ht', 'Русаков Борис Христофорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkuv2018', 'Ade++|', 'Капустина Ульяна Игоревна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmox2018', 'Je}9e7', 'Беляков Семён Германнович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvug2018', 'lEa{Cn', 'Гурьев Ириней Игнатьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzre2018', 'N*VX+G', 'Мишин Христофор Леонидович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbes2018', 'NaVtyH', 'Лазарева Антонина Христофоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkfg2018', 'r1060q', 'Маркова Ираида Сергеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyek2018', 'KY2BL4', 'Носкова Пелагея Валерьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEloq2018', 'NZV5WR', 'Баранов Станислав Дмитрьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjfb2018', 'TNT+}h', 'Ефремов Демьян Артёмович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEueq2018', 'GqAUZ6', 'Константинов Всеволод Мэлсович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpqz2018', 'F0Bp7F', 'Ситникова Ираида Андреевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEovk2018', 'JyJM{A', 'Матвеев Кондрат Иванович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhej2018', 'K9Z5Vp', 'Носков Альвиан Онисимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqrj2018', 'PC2nrX', 'Степанова Любовь Мэлсовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqca2018', 'hLEkgV', 'Кононов Авдей Протасьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElme2018', '|wu0n4', 'Ларионов Макар Якунович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfnf2018', '6cftrw', 'Пахомова Эмилия Геласьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpbt2018', '}}vuSH', 'Сысоев Виктор Варламович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhdc2018', 'iF+GK&', 'Денисова Ия Филатовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcox2018', 'y+vRV{', 'Лобанова Акулина Игоревна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsds2018', 'SxMndn', 'Жуков Максим Николаевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbye2018', 'sHjuzU', 'Александрова Анжелика Евгеньевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEakk2018', 'f5aZnV', 'Коновалов Игнатий Юлианович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmrf2018', 'uEB&n4', 'Михайлов Ростислав Вадимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyje2018', 'zxEUoz', 'Шаров Герман Митрофанович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhqg2018', '0Z4{o3', 'Воронцова Нонна Дмитрьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExyv2018', 'wSMsO2', 'Хохлова Мария Тихоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwoq2018', '0RQ1nZ', 'Уваров Федосей Донатович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkbf2018', 'mBqfYS', 'Андреева Нина Михаиловна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwtx2018', 'Ig3rQJ', 'Новиков Николай Мэлсович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhio2018', '3Aaqne', 'Жданова Анна Еремеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEome2018', 'hAOrBa', 'Егорова Фёкла Кондратовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEflj2018', 'alo84u', 'Зиновьев Лукий Владимирович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnei2018', 'M2pIA8', 'Пахомов Протасий Артёмович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzbo2018', '8km&kZ', 'Рожков Дамир Ростиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsdu2018', '}MbQZe', 'Наумова Лариса Антоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEklp2018', 'kecK{O', 'Кузьмин Максим Антонинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzdc2018', 'Zf8mx0', 'Беспалов Демьян Алексеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkzp2018', 'G*n9OB', 'Суханов Мартын Глебович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdqe2018', 'Gzy&A6', 'Сергеев Никита Валентинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElmm2018', 'dbX7VE', 'Пахомова Тамара Владиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnhf2018', 'PlKjdc', 'Герасимов Демьян Никитевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcrj2018', 'FI&nQq', 'Гришина Феврония Егоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExhd2018', '8sE1Q5', 'Козлова Вера Георгьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgcs2018', 'hNDB+t', 'Лазарева Мария Сергеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmub2018', 'RDXGd1', 'Медведьев Василий Варламович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqms2018', '|uq7Lb', 'Орлов Виктор Павлович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvqe2018', 'wJzfcY', 'Журавлёв Агафон Мэлсович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEupi2018', 'WNX1|z', 'Тимофеев Мартын Еремеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwka2018', 'y}vBjg', 'Ларионов Мартын Геласьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkkb2018', '+zE&cU', 'Белозёров Андрей Николаевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEeni2018', 'mpWg+d', 'Пономарёв Дмитрий Гордеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEset2018', 'CTN+IM', 'Белозёрова Юлия Ростиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmii2018', 'B84UwV', 'Щербаков Александр Федотович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEikh2018', '3yKW4y', 'Артемьев Даниил Филатович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaqv2018', 'nl0D9i', 'Зиновьев Дамир Ефимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErgc2018', 'Hr9YpQ', 'Туров Лукий Альбертович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEntg2018', 'pVmHC0', 'Смирнова Мария Иринеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbuk2018', 'gLK7UQ', 'Крюкова Октябрина Геннадьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsib2018', 'pM3n0J', 'Медведева Мария Антониновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmqs2018', 'KRp6IW', 'Назаров Степан Макарович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEljn2018', '368eRp', 'Николаева Василиса Всеволодовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEppn2018', '6}i+FD', 'Ефремов Сергей Пантелеймонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElqb2018', 'RNynil', 'Родионова Тамара Валентиновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEydn2018', '34I}X9', 'Миронова Галина Улебовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEijg2018', '4QlKJW', 'Сидоров Роман Иринеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdpy2018', 'MJ0W|f', 'Ситников Парфений Всеволодович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwdm2018', '&PynqU', 'Никонов Роман Геласьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdup2018', 'JM+2{s', 'Щербаков Владимир Матвеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhbm2018', '9aObu4', 'Кулаков Мартын Михаилович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExvq2018', 'hX0wJz', 'Сазонова Оксана Лаврентьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErks2018', 'LQNSjo', 'Архипов Варлам Мэлорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErvb2018', 'ceAf&R', 'Устинова Ираида Мэлоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEulo2018', '+d0+iV', 'Лукин Георгий Альбертович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgfw2018', '3c2Ic1', 'Кононов Эдуард Валентинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmxb2018', 'ZPXcRS', 'Орехова Клавдия Альбертовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgeq2018', '&&Eim0', 'Яковлев Яков Эдуардович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkhj2018', 'Pbc0t{', 'Воронов Мэлс Семёнович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEliu2018', '32FyTl', 'Вишнякова Ия Данииловна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsmf2018', '{{O2QG', 'Третьяков Фёдор Вадимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEutd2018', 'GbcJvC', 'Макаров Максим Ильяович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpgh2018', 'YV2lvh', 'Шубина Маргарита Анатольевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvop2018', 'pBP8rO', 'Блинова Ангелина Владленовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwjo2018', 'EQaD|d', 'Воробьёв Владлен Фролович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbur2018', 'aZKGeI', 'Сорокина Прасковья Фёдоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEszw2018', 'EGU{YE', 'Давыдов Яков Антонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExsu2018', '*2RMsp', 'Рыбакова Евдокия Анатольевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEztn2018', 'nJBZpU', 'Маслов Геннадий Фролович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtmn2018', 'UObB}N', 'Цветкова Элеонора Аристарховна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhep2018', 'SwRicr', 'Евдокимов Ростислав Александрович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEevr2018', 'zO5l}l', 'Никонова Венера Станиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnpa2018', 'M*QLjf', 'Громов Егор Антонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgyt2018', 'Pav+GP', 'Суворова Валерия Борисовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbrr2018', 'Z7L|+i', 'Мишина Елизавета Романовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyoo2018', 'UG1BjP', 'Зимина Ольга Аркадьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaob2018', '3fy+3I', 'Игнатьев Игнатий Антонинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwtz2018', '&GxSST', 'Пахомова Зинаида Витальевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEctf2018', 'sjt*3N', 'Устинов Владимир Федосеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEipm2018', 'MAZl6|', 'Кулаков Мэлор Вячеславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjoi2018', 'o}C4jv', 'Сазонов Авксентий Брониславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwap2018', '4hny7k', 'Бурова Наина Брониславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaxm2018', 'BEc3xq', 'Фадеев Демьян Федосеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsmq2018', 'ATVmM7', 'Бобылёва Дарья Якуновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEeur2018', 'n4V{wP', 'Виноградов Созон Арсеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvke2018', 'WQLXSl', 'Гордеев Владлен Ефимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvod2018', '0EW93v', 'Иванова Зинаида Валерьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjaw2018', 'h6z&Ky', 'Гусев Руслан Дамирович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpdp2018', '8NvRfC', 'Маслов Дмитрий Иванович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjpp2018', 'oMOQq3', 'Антонова Ульяна Семёновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkiy2018', 'BQzsts', 'Орехова Людмила Владимировна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhmn2018', 'a|Iz|7', 'Авдеева Жанна Куприяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfmn2018', 'cw3|03', 'Кузнецов Фрол Варламович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErfg2018', '5ovb1N', 'Лихачёв Онисим Гордеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEymi2018', 'nR0+pI', 'Рожков Тихон Владиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnbi2018', 'Ed*JQP', 'Павлов Максим Фёдорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhvg2018', 'SaHv6w', 'Шилов Матвей Альбертович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmbg2018', 'Fou{d3', 'Шаров Федосей Юрьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEubq2018', '{jzW2v', 'Медведева Пелагея Мартыновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEosl2018', 'O3O}we', 'Медведев Григорий Агафонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErog2018', '&W4Wtq', 'Соколова Марфа Всеволодовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsku2018', 'fUldqr', 'Петухова Василиса Еремеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEatu2018', '}nGbhZ', 'Беспалова Галина Дмитрьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhks2018', 'XV|+W4', 'Андреева Александра Владиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzbl2018', 'ih4xKJ', 'Селезнёв Федот Валентинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEoxa2018', 'mL+97r', 'Вишняков Сергей Иванович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEssm2018', 'oBrTGr', 'Зимин Василий Русланович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzxw2018', 'pX&AsH', 'Фадеева Регина Онисимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkzo2018', 'n3es*S', 'Артемьев Варлам Альбертович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdaq2018', 'dWsvBS', 'Щербаков Лукий Онисимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnjd2018', '0&3HHn', 'Горбунов Матвей Сергеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEluw2018', 'S3wj{I', 'Зиновьева Варвара Антоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEole2018', 'p+kvb6', 'Фролов Юрий Варламович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEebl2018', '+t&bky', 'Ларионова Василиса Владимировна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfug2018', 'z|6cXV', 'Силин Вячеслав Валерьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgfx2018', 'GFSZAB', 'Герасимова Феврония Валерьяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtww2018', '4icZTg', 'Пономарёва Вера Руслановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElyc2018', '+SJEpd', 'Медведьев Руслан Богданович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcbd2018', 'GwG*p6', 'Владимиров Геласий Пантелеймонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcay2018', 'ehtG*H', 'Корнилов Иван Игоревич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmel2018', '8zmoSV', 'Иван Вячеславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhqk2018', 'KBc4A+', 'Ермакова Зинаида Данииловна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkny2018', 'v2+4Ro', 'Пахомова Элеонора Григорьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmda2018', 'sG+NF0', 'Гущина Вера Ефимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhhf2018', 'd+GS5y', 'Полякова Антонина Андреевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEilc2018', 'eyRufZ', 'Зуева Марина Ильяовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwfv2018', 'ZSUiGT', 'Агафонов Агафон Максимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEozn2018', 'nndP3Q', 'Архипов Агафон Игоревич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbtr2018', 'FdZrI3', 'Лапина Иванна Аристарховна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcuf2018', 'aOdzYf', 'Маслова Мария Аристарховна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtye2018', 'MEJjQt', 'Русаков Василий Куприянович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEncq2018', 'GgG3m0', 'Николаева Евдокия Пётровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtmt2018', '}FOh*}', 'Прохоров Олег Брониславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyqb2018', 'xLmuQq', 'Зайцев Макар Владленович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExld2018', 'a8Vjkx', 'Жданов Сергей Гордеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnig2018', 'Cm00D0', 'Нестеров Авдей Митрофанович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmly2018', 'IZJ7O|', 'Григорьева Глафира Антоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElom2018', 'Yg}k84', 'Зыков Геласий Лаврентьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvoa2018', 'RdGikC', 'Александрова Марфа Протасьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwmq2018', 'ds4KAb', 'Мухин Донат Ростиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdba2018', 'D7xF6u', 'Костин Геласий Германнович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnsr2018', 'VZKTog', 'Лазарев Протасий Игоревич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqsc2018', 'UU|FkZ', 'Пестов Богдан Германнович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbct2018', 'Qg3gff', 'Алексеев Владислав Аркадьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvtg2018', 'ETMNzL', 'Савельева Евфросиния Арсеньевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuro2018', 'a1MIcO', 'Никонов Мэлс Лукьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpst2018', '0CyGnX', 'Горшкова Агафья Онисимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpsu2018', 'Vx9cQ{', 'Горбачёв Пантелеймон Германович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzqs2018', 'qM9p7i', 'Ершова Иванна Максимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEioe2018', 'yMPu&2', 'Туров Денис Геласьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcmk2018', '3f+b0+', 'Носова Наина Эдуардовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfsp2018', '&dtlI+', 'Куликов Андрей Святославович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExcd2018', 'SZXZNL', 'Нестеров Агафон Георгьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvlf2018', 'O5mXc2', 'Козлов Геласий Христофорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEanv2018', 'Xiq}M3', 'Борисова Анжелика Анатольевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzde2018', 'tlO3x&', 'Суханов Станислав Фролович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEriv2018', 'GJ2mHL', 'Тетерина Феврония Эдуардовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhcp2018', 'n2nfRl', 'Муравьёва Александра Ростиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwjv2018', 'ZfseKA', 'Новикова Лукия Ярославовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEiry2018', '5zu7+}', 'Агафонова Лариса Михаиловна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgbr2018', '}+Ex1*', 'Сергеева Агата Юрьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExxv2018', '+daE|T', 'Колобова Елена Евгеньевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbto2018', 'b1iYMI', 'Ситников Николай Филатович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfbs2018', 'v90Rep', 'Белов Роман Иринеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEple2018', 'WlW+l8', 'Волкова Алла Лукьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhhx2018', 'hmCHeQ', 'Кудрявцева Таисия Игоревна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEayn2018', 'Ka2Fok', 'Семёнова Октябрина Христофоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwld2018', 'y9HStF', 'Смирнов Сергей Яковович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhuu2018', 'X31OEf', 'Брагина Алина Валерьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmjb2018', '5mm{ch', 'Евсеев Игорь Донатович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdgp2018', '1WfJjo', 'Суворов Илья Евсеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgyi2018', '|7nYPc', 'Котов Денис Мартынович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmvn2018', 'Mrr9e0', 'Бобылёва Юлия Егоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfoj2018', 'nhGc+D', 'Брагин Бронислав Георгьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuuo2018', '42XmH1', 'Александров Владимир Дамирович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhsj2018', 's+jrMW', 'Фокин Ириней Ростиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvht2018', 'zMyS8Z', 'Воронов Митрофан Антонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEeqo2018', 'l5CBqA', 'Маслов Мстислав Антонинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExrf2018', 'mhpRIT', 'Щербаков Георгий Богданович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfku2018', 'a1m+8c', 'Кириллова Эмилия Федосеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExix2018', 'hzxtnn', 'Васильев Серапион Макарович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqrf2018', 'mI8n58', 'Галкина Олимпиада Владленовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhlk2018', 'g0jSed', 'Яковлева Ксения Онисимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwoe2018', 'yOtw2F', 'Калашникова Александра Владимировна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExyu2018', '7Fg}9p', 'Медведьева Таисия Тихоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcor2018', '2cIrC8', 'Карпова Ольга Лукьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqon2018', 'YeFbh6', 'Герасимов Мстислав Дамирович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyfd2018', '8aKdb0', 'Тимофеева Ксения Валерьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtto2018', 'qXYDuu', 'Горбунов Вячеслав Станиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdal2018', 'cJWXL0', 'Кошелева Кира Владиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbjs2018', 'Xap2ct', 'Панфилова Марина Борисовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdof2018', 'kD|LRU', 'Кудрявцев Матвей Игоревич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsnh2018', '+axm5b', 'Зуев Эдуард Пантелеймонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEftn2018', 'gPq+a}', 'Герасимов Вячеслав Ростиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhuv2018', 'EJFYzS', 'Суворов Всеволод Богданович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfhd2018', '{4wU7n', 'Ширяев Иван Игоревич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaon2018', '&OmaNE', 'Колобова Иванна Геннадьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyat2018', 'ELSTyH', 'Шестаков Антон Константинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmin2018', 'pQ6jze', 'Игнатьев Федосей Богданович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzal2018', 'zbU8R5', 'Горбунов Валентин Григорьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEemw2018', 'NxhF5I', 'Терентьева Анжела Михаиловна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmqt2018', 'SIasu5', 'Мясникова Ия Евсеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpxx2018', 'Xv{vjN', 'Горбунов Григорий Денисович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEetv2018', 'lNi&rF', 'Герасимов Олег Авксентьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEonq2018', 'mKIIRQ', 'Меркушева Нинель Матвеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErhl2018', 'U}rb9j', 'Степанов Григорий Матвеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfou2018', 'O+S9hm', 'Агафонов Владлен Станиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElno2018', 'le1vt2', 'Кузнецов Фрол Георгьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtbx2018', 'CQplH|', 'Игнатьев Борис Владиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEltw2018', 'zvjkwE', 'Симонов Юрий Созонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfuz2018', 'ILry03', 'Степанов Евсей Федотович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEygj2018', '7b6PUb', 'Зыков Вячеслав Антонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwpn2018', '9BBkXP', 'Анисимова Алина Протасьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyix2018', '6zbXg*', 'Артемьева Лариса Макаровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtms2018', '70Z&Zy', 'Мамонтова Ия Христофоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmgl2018', 'QJNgD&', 'Котова Светлана Леонидовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhix2018', 'ZKnd*0', 'Фёдорова Алла Брониславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwbk2018', 'iJMh5B', 'Гущина Анжела Аркадьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpwa2018', 'yn5MLQ', 'Дмитриев Григорий Мэлорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElrx2018', 'lbX+dF', 'Дроздова Фёкла Митрофановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEidx2018', 'R2j0mn', 'Гаврилов Василий Германович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzmk2018', 'ZrgBk6', 'Суханова Фаина Юрьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvje2018', 'gCU1fd', 'Савельев Егор Сергеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwun2018', 'yy+Qhe', 'Иван Васильевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfzq2018', '36H8f}', 'Сазонова Клавдия Евгеньевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwel2018', 'UU5FTi', 'Шаров Григорий Созонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEljg2018', 'CT44Gc', 'Щербаков Кондрат Фёдорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgsp2018', '9ACW}r', 'Дроздов Дмитрий Юлианович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjvp2018', 'etLGcB', 'Молчанов Юрий Лукьянович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEapt2018', 'cwx{RH', 'Тихонов Валентин Авдеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEilb2018', 'IN2Ahc', 'Виноградов Юрий Лукьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErch2018', '|&DFy+', 'Горбунова Нинель Сергеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfwx2018', 't|*wCk', 'Маслов Леонид Николаевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEggp2018', 'bBNxJb', 'Родионова Венера Арсеньевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbgb2018', 'VtmP58', 'Агафонов Пантелеймон Гордеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnif2018', 'Nhj*t+', 'Кудрявцев Гордей Авксентьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsvs2018', 'tLgPnC', 'Лыткина Алевтина Романовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEghx2018', 'gue+iw', 'Князев Геласий Евсеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElmy2018', 'X2LtuP', 'Бирюкова Пелагея Дмитрьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEevd2018', 'GMbcZN', 'Быков Лаврентий Ярославович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEodd2018', 's2|Eb1', 'Воронов Олег Яковович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmrj2018', 'blrD&8', 'Богданова Марфа Владимировна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyct2018', 'uD+|Ud', 'Беляев Донат Агафонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsgg2018', 'qhgYnW', 'Константинова Вероника Агафоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdcd2018', 'LxR6YI', 'Меркушев Мартын Федотович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEisg2018', 'Cp8ddU', 'Казаков Федот Кондратович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcph2018', '7YpE0p', 'Карпов Улеб Леонидович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgco2018', 'nMr|ss', 'Королёв Матвей Вадимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwjg2018', '9UfqWQ', 'Юдин Герман Кондратович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjbz2018', 'xIAWNI', 'Беляева Анна Вячеславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmgu2018', '0gC3bk', 'Беляев Валентин Артёмович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErdg2018', 'ni0ue0', 'Семёнов Герман Дмитрьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjtv2018', 'f2ZaN6', 'Шестаков Илья Антонинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtfj2018', '{{ksPn', 'Власов Вадим Васильевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpnb2018', '{ADBdc', 'Савельев Арсений Авксентьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzer2018', '5&R+zs', 'Ефимов Руслан Якунович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEiin2018', 'y9l*b}', 'Бурова Марфа Федотовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqda2018', '|h+r}I', 'Селезнёв Александр Никитевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbnj2018', '+SW2I3', 'Кулакова Виктория Георгьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqte2018', 'dC8bDI', 'Дорофеева Кира Демьяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfeo2018', '8cI7vq', 'Сафонова Нинель Якововна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvni2018', 'e4pVIv', 'Ситникова София Лукьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjis2018', 'A9K++2', 'Медведев Ириней Геннадьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExvv2018', 'R1zh}|', 'Суханова Евгения Улебовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEadl2018', 'F&IWf4', 'Игнатьев Владлен Дамирович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyzn2018', 'P1v24R', 'Ефремов Христофор Владиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEphn2018', 'F}jGsJ', 'Кошелев Ростислав Куприянович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdvk2018', 'NKNkup', 'Галкина Тамара Авксентьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtld2018', 'c+CECK', 'Журавлёва Вера Арсеньевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEima2018', 'XK3sOA', 'Савина Таисия Глебовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyfe2018', '4Bbzpa', 'Иванов Яков Мэлорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwqc2018', 'vRtAP*', 'Лыткин Ким Алексеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgtt2018', '7YD|BR', 'Логинов Федот Святославович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEiwl2018', 'LhlmIl', 'Русакова Марина Юлиановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyvi2018', '22beR}', 'Константинов Пётр Кондратович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtfz2018', 'uQY0ZQ', 'Поляков Анатолий Игоревич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEikb2018', '*QkUxc', 'Панфилова Василиса Григорьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdmi2018', 'HOGFbU', 'Воробьёв Герман Романович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtlo2018', '58Jxrg', 'Андреев Ростислав Федосеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsnd2018', 'lLHqZf', 'Бобров Агафон Владимирович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgno2018', '4fqLiO', 'Лапин Алексей Витальевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgnl2018', 'wdio{u', 'Шестаков Авдей Иванович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzna2018', 'yz1iMB', 'Гаврилова Алина Эдуардовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsyh2018', '&4jYGs', 'Жуков Юлиан Валерьянович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExex2018', 'rnh36{', 'Пономарёв Максим Альвианович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdjm2018', 'KjI1JR', 'Зиновьева Мария Лаврентьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgup2018', '36|KhF', 'Осипов Артём Мэлорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdat2018', 'ussd8Q', 'Лапин Вячеслав Геласьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEffj2018', 'cJP+HC', 'Зуев Ириней Вадимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEisp2018', 'dfz5Ii', 'Коновалова Агафья Митрофановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfrp2018', '6dcR|9', 'Исаев Дмитрий Аристархович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaee2018', '5&qONH', 'Белозёрова Алевтина Лаврентьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEthu2018', '|0xWzV', 'Самсонов Агафон Максимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdcx2018', 'TYlFkM', 'Якушев Евсей Лукьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnsa2018', 'LdqH+T', 'Фёдоров Святослав Григорьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErxm2018', '8EavEy', 'Борисов Герман Дамирович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaic2018', 'X2adoa', 'Ситников Серапион Фролович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwul2018', 'uK&3Zr', 'Третьяков Валерьян Иринеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjgl2018', '++04Tb', 'Комиссарова Мария Владимировна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgtk2018', 'pNWXhi', 'Меркушева Раиса Владленовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvrd2018', 'S7N9hz', 'Калашникова Венера Якуновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExky2018', 'Kt9EAS', 'Комиссаров Семён Павлович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExnj2018', 'IJDdP0', 'Денисов Митрофан Егорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnbu2018', '86uDLd', 'Матвиенко Дамир Богданович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEiik2018', 'gKt2zV', 'Кириллов Константин Алексеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwyi2018', '9eskgK', 'Медведьев Фёдор Мэлсович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpfr2018', 'mW1Q36', 'Карпов Евгений Лукьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjct2018', '3WpoK9', 'Маркова Евдокия Артёмовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsmg2018', 'ApH1By', 'Красильников Тихон Богданович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEexu2018', 'Nt44pG', 'Титов Семён Иринеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEztr2018', 'MYCgB7', 'Кудряшов Борис Иринеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwrc2018', 'SktJa|', 'Гаврилова Нинель Денисовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzjs2018', '|x{s+X', 'Быков Дмитрий Валерьянович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEeka2018', 'mLZvLv', 'Фомичёв Денис Федосеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEepr2018', 'BG6tpN', 'Белова Марфа Матвеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsnq2018', 'hrD}}g', 'Романова Марина Лаврентьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvqn2018', 'LPa|e3', 'Беспалов Демьян Витальевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEery2018', '*I0Rdi', 'Архипова Венера Демьяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElqv2018', 'Hqfw17', 'Носков Парфений Георгьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtuz2018', 'Yln7JW', 'Зыков Иван Варламович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEllr2018', 'hXtdCD', 'Иван Протасьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEisy2018', '5k5dHN', 'Рожков Протасий Альвианович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqiv2018', 'h+N2uW', 'Большакова Нинель Протасьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmfu2018', '{ZpDBn', 'Наумова Лидия Донатовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgbd2018', '+86Nf*', 'Панова Ольга Олеговна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkdg2018', 'R0tt07', 'Комаров Аркадий Иванович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjrs2018', 'MVg{yd', 'Федосеева Тамара Михаиловна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmvd2018', 'wyLDa{', 'Пестов Роман Михаилович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEctc2018', 'B&dlx+', 'Блинов Артём Ильяович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEavf2018', 'oDTttg', 'Владимирова Полина Иринеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEako2018', 'tD8J5+', 'Силин Игнатий Яковович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzrg2018', 'WXIgGi', 'Кононов Геннадий Созонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdwq2018', 'WkTaBP', 'Дьячков Фрол Арсеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEszg2018', 'NWkAVP', 'Горбачёв Арсений Григорьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmeh2018', 'HQ+m4W', 'Виноградов Яков Онисимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpwm2018', 'be7AT0', 'Лаврентьева Валентина Васильевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnaq2018', 'I8c5EB', 'Брагин Лукьян Мартынович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtuk2018', '6aDAzV', 'Трофимов Кондрат Игоревич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhsb2018', 'n|I6A0', 'Степанова Глафира Авксентьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaoi2018', 'Dl58m|', 'Федосеев Пётр Григорьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErmk2018', 'D3GuIv', 'Поляков Николай Антонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfnd2018', '74D9|d', 'Медведев Владимир Онисимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtza2018', 'A7Qldh', 'Иван Мэлоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnoq2018', 'qyKzu6', 'Медведева Ангелина Валентиновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmid2018', 'CVjLBK', 'Сафонова Дарья Брониславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaua2018', 'OJgRk4', 'Большаков Федот Владимирович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvvs2018', 'oBv+5G', 'Дроздов Куприян Александрович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhne2018', 'Lidn5o', 'Рябова Лукия Руслановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEksx2018', 'gLTUuE', 'Артемьева Фаина Христофоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEota2018', 'xc&O3U', 'Комиссарова Варвара Руслановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcda2018', 'Ji63Jt', 'Романова Оксана Мартыновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhjr2018', '4aeumW', 'Бобров Артём Валерьянович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtps2018', 'G&lq7J', 'Соколов Василий Михаилович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwdj2018', 'xj+&hg', 'Рогов Лукьян Онисимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgtc2018', 'ysRjen', 'Фомичёва Светлана Тихоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEeib2018', 'DN0Zs&', 'Макаров Егор Святославович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzjn2018', 'E8c864', 'Афанасьева Марфа Куприяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdsm2018', 'dQPs1p', 'Рыбаков Андрей Семёнович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuxs2018', '5FVwny', 'Белоусова Лариса Валерьяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExss2018', 'AiQQ|q', 'Ершов Сергей Геласьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtog2018', 'TE757+', 'Иванова Жанна Матвеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjfr2018', 'nxLt10', 'Носков Александр Богданович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcnj2018', 'QCQd0Z', 'Уваров Анатолий Парфеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnsz2018', 'WS}BK1', 'Некрасова Ирина Ильяовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgva2018', 'SXlY&e', 'Боброва Дарья Федосеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErgi2018', 'ROPHET', 'Степанова Любовь Лукьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgho2018', 'kDKj}M', 'Меркушев Дамир Улебович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgmb2018', 'czGJP5', 'Хохлова Виктория Глебовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEunc2018', 'M*DY73', 'Мельникова Таисия Лукьяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEatn2018', 'h{QXsQ', 'Кошелев Владислав Лукьянович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwlw2018', '9gIoYv', 'Тетерин Всеволод Ростиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEunh2018', 'nhp6F0', 'Капустина Любовь Викторовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzvg2018', 'NEACzR', 'Комиссарова Дарья Парфеньевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhhe2018', 'LKkrzY', 'Назаров Евгений Юлианович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfjj2018', 'dyv&fw', 'Зайцев Юрий Анатольевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtun2018', '}TKwPx', 'Селиверстова Дарья Георгьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmym2018', 'WhDPfl', 'Наумова Вера Ивановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmxi2018', 'uEQkUn', 'Быков Даниил Антонинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEeiw2018', 'bLgTtm', 'Корнилова Алина Игоревна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEotu2018', 'o5BP5N', 'Родионов Григорий Антонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEiui2018', 'ce4&gT', 'Волков Владлен Николаевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcsm2018', '*X3Tl8', 'Дьячкова Ираида Якововна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgwr2018', 'xhCEUR', 'Орлов Юрий Андреевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjcu2018', '2+JLPl', 'Гордеев Аристарх Русланович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExyn2018', 'IFFTHr', 'Зыков Варлам Протасьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzpz2018', 'PRI8h7', 'Фомичёв Богдан Федотович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhic2018', 'OPCVb1', 'Дорофеева Валерия Павловна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEiwx2018', '9{rX8I', 'Матвеев Борис Мэлорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmos2018', 'gC*38U', 'Исакова Прасковья Олеговна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqov2018', 'AIINBG', 'Стрелков Максим Гордеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEket2018', 'TN4H+S', 'Волков Николай Ярославович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEayo2018', 'wHQKY5', 'Мишин Донат Брониславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEryt2018', 'XcFoH*', 'Гурьев Матвей Артёмович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsvp2018', '4kES&p', 'Одинцов Даниил Мстиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEiks2018', 'FXV&W*', 'Юдин Антон Васильевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhyt2018', '3E{ZDm', 'Котова Элеонора Протасьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExkt2018', '2EyCBy', 'Александров Евсей Тихонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjyt2018', 'E&Ac|h', 'Денисов Яков Даниилович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErvn2018', '6G+AZH', 'Васильева Татьяна Пётровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEitl2018', 'BECfk*', 'Гуляева Октябрина Кондратовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpfw2018', '3kY3&K', 'Борисова Синклитикия Григорьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEide2018', 'dFR{Aq', 'Романова Евдокия Альбертовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtur2018', '+yv5+x', 'Ефимов Руслан Улебович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtwc2018', 'oqx3Pv', 'Назаров Ким Кимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEslj2018', 'YP*v6E', 'Никитина Татьяна Агафоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkxx2018', 'GhlUU&', 'Панов Никита Евсеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvdz2018', 'OhnHez', 'Журавлёва Елизавета Артёмовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnvw2018', 'blqZ85', 'Киселёв Бронислав Арсеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdno2018', 'PJ05BT', 'Галкин Владислав Кимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmmc2018', '8a0pbC', 'Анисимова Таисия Улебовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEckd2018', 'apfX0U', 'Якушев Валерьян Викторович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbbm2018', 'l4tp}r', 'Максимов Ириней Дамирович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEppq2018', 'Wgi6Ff', 'Миронова Валерия Владиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmnq2018', 'laFpJG', 'Поляков Георгий Авдеевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmqg2018', '4*M&VK', 'Фадеев Николай Денисович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEazm2018', '2seWAw', 'Авдеева Наталья Викторовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEapw2018', 'NX6N*N', 'Калинин Бронислав Денисович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtic2018', 'gIXztH', 'Суворов Дамир Яковович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfgs2018', '+H9B17', 'Горбачёва Зоя Куприяновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdrt2018', 'wg*xRp', 'Романов Анатолий Юлианович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErtg2018', 'bg7NzS', 'Соловьёва Полина Игоревна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEijp2018', '*V969Y', 'Никифоров Владлен Васильевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpnl2018', 'jinnCV', 'Кулаков Федот Георгьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExjm2018', '0PYqey', 'Смирнова Елена Якововна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEecw2018', 'V8}GOZ', 'Волков Федосей Святославович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdzx2018', '+iBUvT', 'Мухин Леонид Антонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEaaf2018', 'SIBZnG', 'Гурьева Ангелина Матвеевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEqtm2018', 'fsKT+2', 'Захаров Артём Вячеславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfzb2018', '0Q6cQY', 'Баранова Евдокия Игнатьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErqv2018', '2LK9Pw', 'Кулакова Оксана Ярославовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzwx2018', '3tICV1', 'Муравьёва Синклитикия Геннадьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjzi2018', '5cDW2|', 'Медведев Евгений Эдуардович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsjj2018', 'wuVex4', 'Савельева Феврония Фёдоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEidz2018', 'G5DP2D', 'Лаврентьева Элеонора Агафоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtqb2018', 'Y+Dq4P', 'Носов Альберт Ярославович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcdz2018', 'e1oDkm', 'Капустин Фрол Пётрович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEoio2018', 'wHOAvL', 'Крюков Евсей Семёнович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEljv2018', 'utbJSk', 'Громов Протасий Георгьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEcfc2018', 'GxVX}g', 'Ларионова Агата Ефимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEofx2018', 'dMTmGz', 'Пономарёв Ким Семёнович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEhns2018', 'oX7tXV', 'Герасимова Элеонора Вадимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExrk2018', '8&vYwK', 'Галкин Георгий Фёдорович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEscf2018', 'O|o5A+', 'Воронова Антонина Всеволодовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEyua2018', 'rW71Ck', 'Денисов Святослав Онисимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgkj2018', 'yXC+SX', 'Гаврилов Демьян Валентинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEtad2018', 'cp1gN+', 'Аксёнова Маргарита Артёмовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsan2018', 'q7Qx66', 'Королёв Якун Степанович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgbx2018', 'qrB{e1', 'Кузьмина Прасковья Онисимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEusz2018', '0||9by', 'Ефимова Александра Парфеньевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEanl2018', 'EcBP7N', 'Красильникова Лариса Ефимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgzu2018', 'AkAXti', 'Ларионова Фёкла Филатовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEriw2018', 'W39VRH', 'Шашков Филат Кимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEuup2018', 'yJ}w5s', 'Мамонтова Элеонора Максимовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExeu2018', 'dObOMp', 'Воробьёв Мартын Игоревич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElkp2018', 'TA6grZ', 'Корнилова Кира Брониславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzfz2018', 'GzUp*R', 'Лебедев Герман Евгеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkhc2018', '+4+F+o', 'Лазарев Мэлор Дмитрьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwsi2018', '8|JAAt', 'Зайцев Мэлс Русланович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDExhs2018', 'g+wDAX', 'Устинова Зоя Созоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmad2018', 'cRKuGW', 'Некрасова Алла Альбертовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpav2018', '7eur3a', 'Волков Ириней Ефимович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEave2018', '|+aXyG', 'Кондратьев Геннадий Дмитрьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkro2018', 'N5|}vM', 'Копылова Ульяна Тихоновна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdsu2018', 'aZZhZQ', 'Баранов Анатолий Митрофанович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEfuv2018', 'xSvieW', 'Прохорова Нина Улебовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEsnk2018', 'lkR1ZZ', 'Якушева Ольга Игнатьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEppv2018', 'yg1DH+', 'Филиппов Борис Геннадьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEkzy2018', 'DpvYbd', 'Мишин Владлен Арсеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEpmj2018', '0{6txi', 'Шилова Татьяна Георгьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEagt2018', 'HDZ&8{', 'Исаков Филат Григорьевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmch2018', 'IC2+2a', 'Трофимов Иван Антонинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEzeq2018', 'WlZOJ3', 'Туров Юлиан Парфеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdts2018', 'lyy5BX', 'Котов Анатолий Арсеньевич', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEgdn2018', 'rkaUu0', 'Антонов Германн Мартынович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmvy2018', '3Y}DMk', 'Кондратьева Наталья Юлиановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjtt2018', 'eKlTzd', 'Дьячкова Екатерина Владленовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEmty2018', 'J20FCe', 'Ефимов Альвиан Серапионович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEjmx2018', 'i{OH{c', 'Зимина Лукия Дмитрьевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEygt2018', 'zDTc9&', 'Сазонов Мэлор Созонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEypc2018', 'vtxvjy', 'Медведева Лариса Ростиславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDErip2018', 're53rs', 'Кириллов Игнатий Ростиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEahk2018', '|tP8kR', 'Владимиров Егор Пётрович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbid2018', 'DeyUEY', 'Мартынова Дарья Васильевна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEupo2018', 'Az*YxR', 'Иван Фёдоровна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Менеджер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEvel2018', 'dA5Kk+', 'Калинина Феврония Брониславовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEnpc2018', 'AozkWP', 'Крылова Людмила Германовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEigv2018', 'ZOYxOn', 'Потапов Геннадий Созонович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEwrl2018', 'CeSxSp', 'Мельникова Нонна Альвиановна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Директор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEbbl2018', 'BXfnEL', 'Авдеева Елизавета Федотовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Заказчик'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEteq2018', 'YI+ss5', 'Лапина Синклитикия Аристарховна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEdis2018', '|1+hrs', 'Третьяков Юрий Станиславович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDElsk2018', 'h0OP2P', 'Николаев Ефим Константинович', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Мастер'
ON CONFLICT ("Login") DO NOTHING;
INSERT INTO "UserAccount" ("Login","PasswordHash","FullName","IdUserRole")
SELECT 'loginDEegj2018', '52*BRY', 'Иванова Ирина Мэлсовна', ur."IdUserRole"
FROM "UserRole" ur WHERE ur."RoleName" = 'Конструктор'
ON CONFLICT ("Login") DO NOTHING;

-- Materials from Excel
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('У1', 'Уг.25х25х3', 'м', 26, NULL, NULL, 'Уголок', 55, 'ГОСТ 8509-93', NULL, 'Масса 1 м: 1.12 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('У2', 'Уг.25х25х4', 'м', 24, NULL, NULL, 'Уголок', 55, 'ГОСТ 8509-94', NULL, 'Масса 1 м: 1.46 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('У3', 'Уг.32х32х4', 'м', 2, NULL, NULL, 'Уголок', 55, 'ГОСТ 8509-95', NULL, 'Масса 1 м: 1.91 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('У4', 'Уг.40х40х4', 'м', 7, NULL, NULL, 'Уголок', 55, 'ГОСТ 8509-96', NULL, 'Масса 1 м: 2.48 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('У5', 'Уг.45х45х4', 'м', 2, NULL, NULL, 'Уголок', 55, 'ГОСТ 8509-97', NULL, 'Масса 1 м: 2.73 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('У6', 'Уг.50х50х5', 'м', 2, NULL, NULL, 'Уголок', 55, 'ГОСТ 8509-98', NULL, 'Масса 1 м: 3.77 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('У7', 'Уг.63х63х6', 'м', 79, NULL, NULL, 'Уголок', 55, 'ГОСТ 8509-99', NULL, 'Масса 1 м: 5.72 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('У8', 'Уг.75х75х8', 'м', 86, NULL, NULL, 'Уголок', 55, 'ГОСТ 8509-100', NULL, 'Масса 1 м: 9.02 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('У9', 'Уг.90х90х9', 'м', 47, NULL, NULL, 'Уголок', 55, 'ГОСТ 8509-101', NULL, 'Масса 1 м: 12.2 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('У10', 'Уг.100х100х10', 'м', 94, NULL, NULL, 'Уголок', 55, 'ГОСТ 8509-102', NULL, 'Масса 1 м: 15.1 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш11', 'Шв.6', 'м', 20, NULL, NULL, 'Швеллер', 55, 'ГОСТ 8240-89', NULL, 'Масса 1 м: 5.3 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш12', 'Шв.8', 'м', 60, NULL, NULL, 'Швеллер', 55, 'ГОСТ 8240-90', NULL, 'Масса 1 м: 7.05 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш13', 'Шв.10', 'м', 13, NULL, NULL, 'Швеллер', 55, 'ГОСТ 8240-91', NULL, 'Масса 1 м: 8.59 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш14', 'Шв.12', 'м', 22, NULL, NULL, 'Швеллер', 55, 'ГОСТ 8240-92', NULL, 'Масса 1 м: 10.4 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш15', 'Шв.14', 'м', 54, NULL, NULL, 'Швеллер', 55, 'ГОСТ 8240-93', NULL, 'Масса 1 м: 12.3 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш16', 'Шв.16', 'м', 48, NULL, NULL, 'Швеллер', 55, 'ГОСТ 8240-94', NULL, 'Масса 1 м: 14.2 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш17', 'Шв.18', 'м', 46, NULL, NULL, 'Швеллер', 55, 'ГОСТ 8240-95', NULL, 'Масса 1 м: 16.3 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш18', 'Шв.20', 'м', 58, NULL, NULL, 'Швеллер', 55, 'ГОСТ 8240-96', NULL, 'Масса 1 м: 18.4 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш19', 'Шв.22', 'м', 1, NULL, NULL, 'Швеллер', 55, 'ГОСТ 8240-97', NULL, 'Масса 1 м: 21 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш20', 'Шв.24', 'м', 78, NULL, NULL, 'Швеллер', 55, 'ГОСТ 8240-98', NULL, 'Масса 1 м: 24 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш21', 'Шв.30', 'м', 87, NULL, NULL, 'Швеллер', 55, 'ГОСТ 8240-99', NULL, 'Масса 1 м: 31.8 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л22', 'Лист 1', 'м', 5, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 7.8500000000000005 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л23', 'Лист 2', 'м', 33, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 15.700000000000001 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л24', 'Лист 3', 'м', 86, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 23.55 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л25', 'Лист 4', 'м', 82, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 31.400000000000002 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л26', 'Лист 5', 'м', 41, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 39.25 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л27', 'Лист 6', 'м', 6, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 47.1 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л28', 'Лист 8', 'м', 92, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 62.800000000000004 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л29', 'Лист 10', 'м', 50, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 78.5 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л30', 'Лист 12', 'м', 5, NULL, NULL, 'Лист', 45, NULL, NULL, 'Масса 1 м: 94.2 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л31', 'Лист 14', 'м', 3, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 109.9 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л32', 'Лист 16', 'м', 68, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 125.60000000000001 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л33', 'Лист 18', 'м', 58, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 141.29999999999998 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л34', 'Лист 20', 'м', 80, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 157 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л35', 'Лист 22', 'м', 19, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 172.7 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л36', 'Лист 24', 'м', 61, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 188.4 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л37', 'Лист 25', 'м', 34, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 196.25 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л38', 'Лист 26', 'м', 65, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 204.1 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л39', 'Лист 28', 'м', 33, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 219.8 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Л40', 'Лист 30', 'м', 74, NULL, NULL, 'Лист', 55, NULL, NULL, 'Масса 1 м: 235.5 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К1', 'Круг ф 5', 'м', 16, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-88', NULL, 'Масса 1 м: 0.154 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К2', 'Круг ф 6', 'м', 74, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-89', NULL, 'Масса 1 м: 0.222 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К3', 'Круг ф 7', 'м', 91, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-90', NULL, 'Масса 1 м: 0.302 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К4', 'Круг ф 8', 'м', 12, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-91', NULL, 'Масса 1 м: 0.395 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К5', 'Круг ф 9', 'м', 89, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-92', NULL, 'Масса 1 м: 0.5 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К6', 'Круг ф 10', 'м', 51, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-93', NULL, 'Масса 1 м: 0.616 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К7', 'Круг ф 12', 'м', 60, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-94', NULL, 'Масса 1 м: 0.888 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К8', 'Круг ф 14', 'м', 35, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-95', NULL, 'Масса 1 м: 1.21 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К9', 'Круг ф 15', 'м', 54, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-96', NULL, 'Масса 1 м: 1.39 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К10', 'Круг ф 16', 'м', 40, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-97', NULL, 'Масса 1 м: 1.58 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К11', 'Круг ф 17', 'м', 81, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-98', NULL, 'Масса 1 м: 1.78 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К12', 'Круг ф 18', 'м', 29, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-99', NULL, 'Масса 1 м: 2 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К13', 'Круг ф 20', 'м', 16, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-100', NULL, 'Масса 1 м: 2.47 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К14', 'Круг ф 21', 'м', 68, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-101', NULL, 'Масса 1 м: 2.72 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К15', 'Круг ф 22', 'м', 45, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-102', NULL, 'Масса 1 м: 2.98 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К16', 'Круг ф 23', 'м', 17, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-103', NULL, 'Масса 1 м: 3.26 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К17', 'Круг ф 24', 'м', 37, NULL, NULL, 'Круг', 38, 'ГОСТ 2590-104', NULL, 'Масса 1 м: 3.55 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К18', 'Круг ф 25', 'м', 77, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-105', NULL, 'Масса 1 м: 3.85 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К19', 'Круг ф 26', 'м', 25, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-106', NULL, 'Масса 1 м: 4.17 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К20', 'Круг ф 28', 'м', 58, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-107', NULL, 'Масса 1 м: 4.83 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К21', 'Круг ф 30', 'м', 80, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-108', NULL, 'Масса 1 м: 5.55 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К22', 'Круг ф 34', 'м', 76, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-109', NULL, 'Масса 1 м: 7.13 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К23', 'Круг ф 36', 'м', 93, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-110', NULL, 'Масса 1 м: 7.99 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К24', 'Круг ф 40', 'м', 99, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-111', NULL, 'Масса 1 м: 9.86 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К25', 'Круг ф 45', 'м', 43, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-112', NULL, 'Масса 1 м: 12.48 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К26', 'Круг ф 50', 'м', 24, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-113', NULL, 'Масса 1 м: 15.42 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К27', 'Круг ф 55', 'м', 8, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-114', NULL, 'Масса 1 м: 18.65 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К28', 'Круг ф 60', 'м', 97, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-115', NULL, 'Масса 1 м: 22.19 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К29', 'Круг ф 65', 'м', 61, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-116', NULL, 'Масса 1 м: 26.05 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К30', 'Круг ф 70', 'м', 20, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-117', NULL, 'Масса 1 м: 30.21 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К31', 'Круг ф 75', 'м', 47, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-118', NULL, 'Масса 1 м: 34.68 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К32', 'Круг ф 80', 'м', 67, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-119', NULL, 'Масса 1 м: 39.46 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К33', 'Круг ф 90', 'м', 29, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-120', NULL, 'Масса 1 м: 49.94 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К34', 'Круг ф 100', 'м', 58, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-121', NULL, 'Масса 1 м: 61.65 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К35', 'Круг ф 105', 'м', 18, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-122', NULL, 'Масса 1 м: 67.97 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К36', 'Круг ф 110', 'м', 68, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-123', NULL, 'Масса 1 м: 74.6 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К37', 'Круг ф 120', 'м', 39, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-124', NULL, 'Масса 1 м: 88.78 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К38', 'Круг ф 125', 'м', 3, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-125', NULL, 'Масса 1 м: 96.33 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К39', 'Круг ф 130', 'м', 20, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-126', NULL, 'Масса 1 м: 104.2 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К40', 'Круг ф 140', 'м', 61, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-127', NULL, 'Масса 1 м: 120.84 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К41', 'Круг ф 150', 'м', 35, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-128', NULL, 'Масса 1 м: 138.72 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К42', 'Круг ф 160', 'м', 36, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-129', NULL, 'Масса 1 м: 157.83 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К43', 'Круг ф 170', 'м', 16, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-130', NULL, 'Масса 1 м: 178.18 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К44', 'Круг ф 180', 'м', 56, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-131', NULL, 'Масса 1 м: 199.758 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К45', 'Круг ф 190', 'м', 52, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-132', NULL, 'Масса 1 м: 222.57 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К46', 'Круг ф 200', 'м', 55, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-133', NULL, 'Масса 1 м: 246.62 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К47', 'Круг ф 210', 'м', 6, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-134', NULL, 'Масса 1 м: 271.89 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К48', 'Круг ф 220', 'м', 7, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-135', NULL, 'Масса 1 м: 298.4 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К49', 'Круг ф 230', 'м', 39, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-136', NULL, 'Масса 1 м: 326.15 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К50', 'Круг ф 240', 'м', 34, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-137', NULL, 'Масса 1 м: 355.13 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К51', 'Круг ф 250', 'м', 63, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-138', NULL, 'Масса 1 м: 385.34 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К52', 'Круг ф 260', 'м', 75, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-139', NULL, 'Масса 1 м: 416.05 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К53', 'Круг ф 270', 'м', 51, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-140', NULL, 'Масса 1 м: 449.23 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К54', 'Круг ф 330', 'м', 26, NULL, NULL, 'Круг', 55, 'ГОСТ 2590-141', NULL, 'Масса 1 м: 671.07 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т55', 'Труба 20*20*1,5', 'м', 79, NULL, NULL, 'Труба', 90, NULL, NULL, 'Масса 1 м: 0.94 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т56', 'Труба 40*20*1,5', 'м', 96, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 1.26 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т57', 'Труба 25*25*2', 'м', 65, NULL, NULL, 'Труба', 90, NULL, NULL, 'Масса 1 м: 1.57 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т58', 'Труба 30*30*2', 'м', 67, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 1.723 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т59', 'Труба 40*40*2', 'м', 50, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 2.351 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т60', 'Труба 40*60*2', 'м', 2, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 3 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т61', 'Труба 40*60*3', 'м', 5, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 4.42 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т62', 'Труба 40*80*3', 'м', 26, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 5.362 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т63', 'Труба 50*25*2', 'м', 3, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 2.355 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т64', 'Труба 50*50*2', 'м', 94, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 3.03 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т65', 'Труба 60*60*3', 'м', 51, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 5.37 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т66', 'Труба 80*80*3', 'м', 33, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 7.3 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т67', 'Труба 80*80*4', 'м', 90, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 9.61 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т68', 'Труба ВГП 15х2,8', 'м', 82, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 1.3 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т69', 'Труба ВГП 20х2,8', 'м', 87, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 1.656 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т70', 'Труба ВГП 40х3,5', 'м', 57, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 3.9 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т71', 'Труба ВГП 50х3,5', 'м', 42, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 4.9 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т72', 'Труба 48х5', 'м', 29, NULL, NULL, 'Труба', 75, NULL, NULL, 'Масса 1 м: 5.29 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т73', 'Труба 60х5', 'м', 70, NULL, NULL, 'Труба', 75, NULL, NULL, 'Масса 1 м: 6.78 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т74', 'Труба 76х3,5', 'м', 67, NULL, NULL, 'Труба', 50, NULL, NULL, 'Масса 1 м: 6.26 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т75', 'Труба 76х8', 'м', 18, NULL, NULL, 'Труба', 75, NULL, NULL, 'Масса 1 м: 13.4 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т76', 'Труба 89х4', 'м', 46, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 8.38 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т77', 'Труба 89х4,5', 'м', 72, NULL, NULL, 'Труба', 75, NULL, NULL, 'Масса 1 м: 9.37 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т78', 'Труба 89х5', 'м', 28, NULL, NULL, 'Труба', 75, NULL, NULL, 'Масса 1 м: 10.35 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т79', 'Труба 102х4', 'м', 21, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 9.66 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т80', 'Труба 102х4,5', 'м', 8, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 10.82 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т81', 'Труба 102х5', 'м', 37, NULL, NULL, 'Труба', 75, NULL, NULL, 'Масса 1 м: 11.96 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т82', 'Труба 102х11', 'м', 64, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 24.67 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т83', 'Труба 108х4', 'м', 26, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 10.25 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т84', 'Труба 108х4,5', 'м', 15, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 11.48 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т85', 'Труба 108х5', 'м', 62, NULL, NULL, 'Труба', 75, NULL, NULL, 'Масса 1 м: 12.7 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т86', 'Труба 127х4,5', 'м', 59, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 13.6 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т87', 'Труба 159х5', 'м', 7, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 18.98 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т88', 'Труба 159х4,5', 'м', 73, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 17.14 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т89', 'Труба 159х6', 'м', 60, NULL, NULL, 'Труба', 75, NULL, NULL, 'Масса 1 м: 22.63 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т90', 'Труба 194х6', 'м', 96, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 27.8 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т91', 'Труба 194х7', 'м', 6, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 32.27 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т92', 'Труба 205х7', 'м', 67, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 34.16 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т93', 'Труба 205х8', 'м', 80, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 38.85 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т94', 'Труба 205х10', 'м', 53, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 48.07 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т95', 'Труба 219х4', 'м', 82, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 21.2 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т96', 'Труба 219х10', 'м', 8, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 51.52 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т97', 'Труба 219х11', 'м', 77, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 53.96 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т98', 'Труба 245х8', 'м', 55, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 46.7345 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т99', 'Труба 245х10', 'м', 67, NULL, NULL, 'Труба', 70, NULL, NULL, 'Масса 1 м: 59.16 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т1', 'Труба 273х9', 'м', 35, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 58.57 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т2', 'Труба 273х10', 'м', 42, NULL, NULL, 'Труба', 75, NULL, NULL, 'Масса 1 м: 64.83 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т3', 'Труба 325х8', 'м', 97, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 62.5 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т4', 'Труба 325х10', 'м', 73, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 77.65 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т5', 'Труба 325х12', 'м', 67, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 92.6 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т6', 'Труба 377х10', 'м', 39, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 90.46 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т7', 'Труба 426х7', 'м', 87, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 72.3 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т8', 'Труба 426х8', 'м', 74, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 82.43 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т9', 'Труба 426х9', 'м', 53, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 92.51 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т10', 'Труба 426х10', 'м', 32, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 102.54 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т11', 'Труба 426х12', 'м', 6, NULL, NULL, 'Труба', 60, NULL, NULL, 'Масса 1 м: 122.46 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т12', 'Труба 530х10', 'м', 61, NULL, NULL, 'Труба', 75, NULL, NULL, 'Масса 1 м: 128.18 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т13', 'Труба 630х10', 'м', 81, NULL, NULL, 'Труба', 65, NULL, NULL, 'Масса 1 м: 152.82 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Т14', 'Труба 630х12', 'м', 3, NULL, NULL, 'Труба', 80, NULL, NULL, 'Масса 1 м: 182.8 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш15', 'Шестигранник 12', 'м', 51, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 1.1 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш16', 'Шестигранник 13', 'м', 66, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 1.3 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш17', 'Шестигранник 14', 'м', 6, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 1.5 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш18', 'Шестигранник 17', 'м', 14, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 2.2 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш19', 'Шестигранник 19', 'м', 86, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 2.5 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш20', 'Шестигранник 22', 'м', 84, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 3.6 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш21', 'Шестигранник 24', 'м', 78, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 4.2 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш22', 'Шестигранник 27', 'м', 45, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 5.5 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш23', 'Шестигранник 30', 'м', 25, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 7 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш24', 'Шестигранник 32', 'м', 55, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 7.5 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш25', 'Шестигранник 36', 'м', 36, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 8.9 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш26', 'Шестигранник 41', 'м', 11, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 11.4 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш27', 'Шестигранник 46', 'м', 94, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 14.4 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш28', 'Шестигранник 50', 'м', 14, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 17 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш29', 'Шестигранник 55', 'м', 54, NULL, NULL, 'Шестиграннмк', 75, NULL, NULL, 'Масса 1 м: 20.6 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('П30', 'Полоса 20х4', 'м', 38, NULL, NULL, 'Полоса', 45, NULL, NULL, 'Масса 1 м: 0.628 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('П31', 'Полоса 25х4', 'м', 77, NULL, NULL, 'Полоса', 45, NULL, NULL, 'Масса 1 м: 0.785 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('П32', 'Полоса 30х4', 'м', 83, NULL, NULL, 'Полоса', 45, NULL, NULL, 'Масса 1 м: 0.942 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('П33', 'Полоса 40х4', 'м', 88, NULL, NULL, 'Полоса', 45, NULL, NULL, 'Масса 1 м: 1.256 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('П34', 'Полоса 50х5', 'м', 27, NULL, NULL, 'Полоса', 45, NULL, NULL, 'Масса 1 м: 1.9625 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('П35', 'Полоса 60х5', 'м', 68, NULL, NULL, 'Полоса', 45, NULL, NULL, 'Масса 1 м: 2.355 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('П36', 'Полоса 60х6', 'м', 50, NULL, NULL, 'Полоса', 45, NULL, NULL, 'Масса 1 м: 2.826 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('П37', 'Полоса 80х6', 'м', 85, NULL, NULL, 'Полоса', 45, NULL, NULL, 'Масса 1 м: 3.768 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('П38', 'Полоса 80х8', 'м', 6, NULL, NULL, 'Полоса', 45, NULL, NULL, 'Масса 1 м: 5.024 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш39', 'Шпонка 4х4', 'м', 74, NULL, NULL, 'Шпонка', 2300, NULL, NULL, 'Масса 1 м: 0.13 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш40', 'Шпонка 5х5', 'м', 47, NULL, NULL, 'Шпонка', 1750, NULL, NULL, 'Масса 1 м: 0.2 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш41', 'Шпонка 6х6', 'м', 54, NULL, NULL, 'Шпонка', 1400, NULL, NULL, 'Масса 1 м: 0.2826 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш42', 'Шпонка 7х8', 'м', 6, NULL, NULL, 'Шпонка', 1025, NULL, NULL, 'Масса 1 м: 0.4396 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш43', 'Шпонка 10х8', 'м', 43, NULL, NULL, 'Шпонка', 800, NULL, NULL, 'Масса 1 м: 0.628 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш44', 'Шпонка 12х8', 'м', 88, NULL, NULL, 'Шпонка', 800, NULL, NULL, 'Масса 1 м: 0.7536 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш45', 'Шпонка 14х9', 'м', 42, NULL, NULL, 'Шпонка', 700, NULL, NULL, 'Масса 1 м: 0.9891 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш46', 'Шпонка 16х10', 'м', 54, NULL, NULL, 'Шпонка', 640, NULL, NULL, 'Масса 1 м: 1.256 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш47', 'Шпонка 18х11', 'м', 15, NULL, NULL, 'Шпонка', 580, NULL, NULL, 'Масса 1 м: 1.5543 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш48', 'Шпонка 20х12', 'м', 26, NULL, NULL, 'Шпонка', 530, NULL, NULL, 'Масса 1 м: 1.884 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш49', 'Шпонка 22х14', 'м', 77, NULL, NULL, 'Шпонка', 455, NULL, NULL, 'Масса 1 м: 2.4178 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш50', 'Шпонка 25х14', 'м', 90, NULL, NULL, 'Шпонка', 440, NULL, NULL, 'Масса 1 м: 2.7475 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш51', 'Шпонка 28х16', 'м', 65, NULL, NULL, 'Шпонка', 370, NULL, NULL, 'Масса 1 м: 3.5168 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ш52', 'Шпонка 32х18', 'м', 9, NULL, NULL, 'Шпонка', 310, NULL, NULL, 'Масса 1 м: 4.5216 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К53', 'Квадрат 20', 'м', 66, NULL, NULL, 'Квадрат', 45, NULL, NULL, 'Масса 1 м: 3.14 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К54', 'Квадрат 25', 'м', 27, NULL, NULL, 'Квадрат', 45, NULL, NULL, 'Масса 1 м: 4.90625 кг') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('К55', 'Капролон', 'кг', 68, NULL, NULL, 'Капролон', 336, NULL, NULL, NULL) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Ф56', 'Фторопласт', 'кг', 14, NULL, NULL, 'Фторопласт', 385, NULL, NULL, NULL) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б1', 'Балка 10 ст3сп/пс5', 'метр', 8, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б2', 'Балка 10 ст3сп/пс5', 'метр', 14, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 9,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б3', 'Балка 12 Б1 ст3сп/пс5', 'метр', 75, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б4', 'Балка 12 ст3сп/пс5', 'метр', 9, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б5', 'Балка 12 ст3сп/пс5', 'метр', 30, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 9,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б6', 'Балка 14 Б1 ст3сп/пс5', 'метр', 93, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б7', 'Балка 14 ст3сп/пс5', 'метр', 72, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б8', 'Балка 16 Б1 ст3сп/пс5', 'метр', 90, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б9', 'Балка 16 Б1 ст3сп/пс5', 'метр', 78, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 6,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б10', 'Балка 16 ст3сп/пс5', 'метр', 82, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б11', 'Балка 18 ст09Г2С-12', 'метр', 3, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б12', 'Балка 18 ст3сп/пс5', 'метр', 2, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б13', 'Балка 20 Б1 ст09Г2С-12', 'метр', 71, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б14', 'Балка 20 Б1 ст3сп/пс5', 'метр', 26, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б15', 'Балка 20 К1 ст3сп/пс5', 'метр', 39, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б16', 'Балка 20 К2 ст3сп/пс5', 'метр', 67, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б17', 'Балка 20 ст3сп/пс5', 'метр', 17, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б18', 'Балка 20 Ш1 ст3сп/пс5', 'метр', 75, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б19', 'Балка 24 М ст3сп/пс5', 'метр', 78, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б20', 'Балка 25 Б1 ст09Г2С-12', 'метр', 88, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б21', 'Балка 25 Б1 ст3сп/пс5', 'метр', 22, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б22', 'Балка 25 Б2 ст09Г2С-12', 'метр', 62, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б23', 'Балка 25 Б2 ст3сп/пс5', 'метр', 53, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б24', 'Балка 25 К1 ст3сп/пс5', 'метр', 1, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б25', 'Балка 25 К2 ст3сп/пс5', 'метр', 28, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б26', 'Балка 25 Ш1 ст3сп/пс5', 'метр', 43, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б27', 'Балка 30 Б1 ст09Г2С-12', 'метр', 58, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б28', 'Балка 30 Б1 ст3сп/пс5', 'метр', 76, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б29', 'Балка 30 Б1 ст3сп/пс5', 'метр', 44, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 5,87м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б30', 'Балка 30 Б2 ст09Г2С-12', 'метр', 22, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б31', 'Балка 30 Б2 ст3сп/пс5', 'метр', 19, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б32', 'Балка 30 К1 ст09Г2С-12', 'метр', 25, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б33', 'Балка 30 К1 ст3сп/пс5', 'метр', 33, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б34', 'Балка 30 К2 ст3сп/пс5', 'метр', 42, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б35', 'Балка 30 М ст09Г2С-12', 'метр', 75, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б36', 'Балка 30 М ст3сп/пс5', 'метр', 55, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б37', 'Балка 30 ст3сп/пс5', 'метр', 7, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б38', 'Балка 30 Ш1 ст09Г2С-12', 'метр', 47, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина:  12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б39', 'Балка 30 Ш1 ст3сп/пс5', 'метр', 35, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б40', 'Балка 30 Ш2 ст09Г2С-12', 'метр', 93, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б41', 'Балка 35 Б1 ст09Г2С-12', 'метр', 97, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б42', 'Балка 35 Б1 ст3сп/пс5', 'метр', 54, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б43', 'Балка 35 Б2 ст09Г2С-12', 'метр', 33, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б44', 'Балка 35 Б2 ст3сп/пс5', 'метр', 24, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б45', 'Балка 35 К1 ст09Г2С-12', 'метр', 15, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б46', 'Балка 35 К1 ст3сп/пс5', 'метр', 58, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б47', 'Балка 35 К3 ст3сп/пс5', 'метр', 40, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 2,06-3,91м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б48', 'Балка 35 Ш1 ст3сп/пс5', 'метр', 18, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б49', 'Балка 35 Ш2 ст09Г2С-12', 'метр', 76, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б50', 'Балка 35 Ш2 ст3сп/пс5', 'метр', 57, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б51', 'Балка 36 М ст3сп/пс5', 'метр', 91, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б52', 'Балка 36 ст3сп/пс5', 'метр', 98, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б53', 'Балка 40 Б1 ст09Г2С-12', 'метр', 64, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б54', 'Балка 40 Б1 ст3сп/пс5', 'метр', 92, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б55', 'Балка 40 Б2 ст09Г2С-12', 'метр', 73, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б56', 'Балка 40 Б2 ст3сп/пс5', 'метр', 65, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б57', 'Балка 40 К1 ст3сп/пс5', 'метр', 81, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б58', 'Балка 40 К2 ст3сп/пс5', 'метр', 28, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б59', 'Балка 40 Ш1 ст09Г2С-12', 'метр', 58, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б60', 'Балка 40 Ш1 ст3сп/пс5', 'метр', 34, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б61', 'Балка 40 Ш2 ст09Г2С-12', 'метр', 59, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б62', 'Балка 40 Ш2 ст3сп/пс5', 'метр', 5, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б63', 'Балка 45 ст3сп/пс5', 'метр', 38, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б64', 'Балка 45 Б1 ст09Г2С-12', 'метр', 69, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б65', 'Балка 45 Б1 ст3сп/пс5', 'метр', 63, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б66', 'Балка 45 Б2 ст3сп/пс5', 'метр', 18, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б67', 'Балка 45 М ст09Г2С-12', 'метр', 17, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б68', 'Балка 45 М ст3сп/пс5', 'метр', 82, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б69', 'Балка 45 Ш1 ст3сп/пс5', 'метр', 87, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б70', 'Балка 50 Б1 ст09Г2С-12', 'метр', 56, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б71', 'Балка 50 Б1 ст3сп/пс5', 'метр', 8, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б72', 'Балка 50 Б2 ст3сп/пс5', 'метр', 83, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б73', 'Балка 50 Ш1 ст3сп/пс5', 'метр', 2, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б74', 'Балка 60 Б1 ст3сп/пс5', 'метр', 26, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б75', 'Балка 60 Б2 ст3сп/пс5', 'метр', 41, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б76', 'Балка 60 Ш1 ст09Г2С-12', 'метр', 61, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б77', 'Балка 60 Ш1 ст3сп/пс5', 'метр', 77, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Material" ("Article","MaterialName","UnitName","QuantityInStock","IdSupplier","Image","MaterialType","PurchasePrice","Gost","LengthValue","Characteristic") VALUES ('Б78', 'Балка 70 Ш1 ст3сп/пс5', 'метр', 93, NULL, NULL, 'Балка', 0, 'ГОСТ 535-88', NULL, 'Длина: 12,0м') ON CONFLICT ("Article") DO NOTHING;

-- Components from Excel
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М1', 'Манжета 14*6', 'шт.', 44, NULL, NULL, 'Манжета', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М2', 'Манжета 45*65', 'шт.', 14, NULL, NULL, 'Манжета', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М3', 'Манжета 50*30', 'шт.', 88, NULL, NULL, 'Манжета', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М4', 'Манжета 50*70', 'шт.', 60, NULL, NULL, 'Манжета', 15, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М5', 'Манжета 60*40', 'шт.', 228, NULL, NULL, 'Манжета', 15, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М6', 'Манжета 60*50', 'шт.', 58, NULL, NULL, 'Манжета', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М7', 'Манжета 60*80', 'шт.', 115, NULL, NULL, 'Манжета', 11, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М8', 'Манжета 63*48', 'шт.', 80, NULL, NULL, 'Манжета', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М9', 'Манжета 70*90', 'шт.', 107, NULL, NULL, 'Манжета', 30, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М10', 'Манжета 75*50', 'шт.', 102, NULL, NULL, 'Манжета', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М11', 'Манжета 75*55', 'шт.', 26, NULL, NULL, 'Манжета', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М12', 'Манжета 75*95', 'шт.', 106, NULL, NULL, 'Манжета', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М13', 'Манжета 80*55', 'шт.', 195, NULL, NULL, 'Манжета', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М14', 'Манжета 80*65', 'шт.', 38, NULL, NULL, 'Манжета', 14, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М15', 'Манжета 85*70', 'шт.', 96, NULL, NULL, 'Манжета', 14, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М16', 'Манжета 90*120', 'шт.', 24, NULL, NULL, 'Манжета', 28, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М17', 'Манжета 100*75*4 /Т-150 Т-170/', 'шт.', 125, NULL, NULL, 'Манжета', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М18', 'Манжета 100*80', 'шт.', 85, NULL, NULL, 'Манжета', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М19', 'Манжета 105*80', 'шт.', 26, NULL, NULL, 'Манжета', 16, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М20', 'Манжета 125*105', 'шт.', 2, NULL, NULL, 'Манжета', 22, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М21', 'Манжета 140*110', 'шт.', 144, NULL, NULL, 'Манжета', 35, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М22', 'Манжета 140*120', 'шт.', 131, NULL, NULL, 'Манжета', 30, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М23', 'Манжета 160*140', 'шт.', 148, NULL, NULL, 'Манжета', 22, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М24', 'Манжета 180*150', 'шт.', 11, NULL, NULL, 'Манжета', 36, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М25', 'Манжета 200*167(409020-11)', 'шт.', 4, NULL, NULL, 'Манжета', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('М26', 'Манжета 200*170', 'шт.', 16, NULL, NULL, 'Манжета', 44, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К27', 'Кольцо 004*006*14', 'шт.', 325, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К28', 'Кольцо 005*008*19', 'шт.', 280, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К29', 'Кольцо 006*010*25', 'шт.', 281, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К30', 'Кольцо 007*011*25', 'шт.', 310, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К31', 'Кольцо 008*012*25', 'шт.', 255, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К32', 'Кольцо 009*013*25', 'шт.', 283, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К33', 'Кольцо 010*014*25', 'шт.', 298, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К34', 'Кольцо 011*015*25', 'шт.', 184, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К35', 'Кольцо 012*016*25', 'шт.', 380, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К36', 'Кольцо 013*016*19', 'шт.', 1, NULL, NULL, 'Кольцо', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К37', 'Кольцо 014*017*19', 'шт.', 2, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К38', 'Кольцо 014*018*25', 'шт.', 347, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К39', 'Кольцо 014*019*30', 'шт.', 243, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К40', 'Кольцо 015*019*25', 'шт.', 2, NULL, NULL, 'Кольцо', 5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К41', 'Кольцо 016*020*25', 'шт.', 255, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К42', 'Кольцо 016*021*30', 'шт.', 170, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К43', 'Кольцо 017*021*25', 'шт.', 300, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К44', 'Кольцо 018*022*25', 'шт.', 353, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К45', 'Кольцо 019*023*25', 'шт.', 364, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К46', 'Кольцо 020-025-30', 'шт.', 213, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К47', 'Кольцо 021-024-19', 'шт.', 325, NULL, NULL, 'Кольцо', 3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К48', 'Кольцо 021-025-25', 'шт.', 310, NULL, NULL, 'Кольцо', 3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К49', 'Кольцо 022*025*19', 'шт.', 311, NULL, NULL, 'Кольцо', 3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К50', 'Кольцо 022*026*25', 'шт.', 175, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К51', 'Кольцо 022*027*30', 'шт.', 266, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К52', 'Кольцо 022*028*36', 'шт.', 206, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К53', 'Кольцо 023*027*25', 'шт.', 2, NULL, NULL, 'Кольцо', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К54', 'Кольцо 023*028*30', 'шт.', 183, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К55', 'Кольцо 023*029*36', 'шт.', 271, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К56', 'Кольцо 024-028-25', 'шт.', 205, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К57', 'Кольцо 024-029-30', 'шт.', 287, NULL, NULL, 'Кольцо', 3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К58', 'Кольцо 024-030-36', 'шт.', 367, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К59', 'Кольцо 025-030-30', 'шт.', 288, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К60', 'Кольцо 027-031-25', 'шт.', 301, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К61', 'Кольцо 027-032-30', 'шт.', 288, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К62', 'Кольцо 028-032-25', 'шт.', 192, NULL, NULL, 'Кольцо', 3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К63', 'Кольцо 028-033-30', 'шт.', 254, NULL, NULL, 'Кольцо', 3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К64', 'Кольцо 028-034-36', 'шт.', 203, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К65', 'Кольцо 029*035*36', 'шт.', 179, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К66', 'Кольцо 030*034*25', 'шт.', 250, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К67', 'Кольцо 030*036*36', 'шт.', 180, NULL, NULL, 'Кольцо', 3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К68', 'Кольцо 030*038*46', 'шт.', 422, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К69', 'Кольцо 032*036*25', 'шт.', 228, NULL, NULL, 'Кольцо', 3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К70', 'Кольцо 032*038*36', 'шт.', 191, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К71', 'Кольцо 032*040*46', 'шт.', 209, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К72', 'Кольцо 034*038*25', 'шт.', 214, NULL, NULL, 'Кольцо', 3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К73', 'Кольцо 034*040*36', 'шт.', 82, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К74', 'Кольцо 035*040*30', 'шт.', 209, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К75', 'Кольцо 035*041*36', 'шт.', 5, NULL, NULL, 'Кольцо', 5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К76', 'Кольцо 035*043*46', 'шт.', 174, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К77', 'Кольцо 036*040*25', 'шт.', 185, NULL, NULL, 'Кольцо', 3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К78', 'Кольцо 036*042*36', 'шт.', 182, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К79', 'Кольцо 038*042*25', 'шт.', 254, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К80', 'Кольцо 039*045*36', 'шт.', 115, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К81', 'Кольцо 040*044*25', 'шт.', 256, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К82', 'Кольцо 040*045*30', 'шт.', 1, NULL, NULL, 'Кольцо', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К83', 'Кольцо 040*046*36', 'шт.', 194, NULL, NULL, 'Кольцо', 5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К84', 'Кольцо 042*050*46', 'шт.', 114, NULL, NULL, 'Кольцо', 5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К85', 'Кольцо 044*050*36', 'шт.', 184, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К86', 'Кольцо 045*051*36', 'шт.', 135, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К87', 'Кольцо 045*053*46', 'шт.', 114, NULL, NULL, 'Кольцо', 5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К88', 'Кольцо 046*052*36', 'шт.', 114, NULL, NULL, 'Кольцо', 5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К27', 'Кольцо 004*006*14', 'шт.', 325, NULL, NULL, 'Кольцо', 2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К89', 'Кольцо 048*052*25', 'шт.', 213, NULL, NULL, 'Кольцо', 5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К90', 'Кольцо 049*055*36', 'шт.', 176, NULL, NULL, 'Кольцо', 5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К91', 'Кольцо 050*054*25', 'шт.', 84, NULL, NULL, 'Кольцо', 5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К92', 'Кольцо 050*055*30', 'шт.', 55, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К93', 'Кольцо 050*056*36', 'шт.', 178, NULL, NULL, 'Кольцо', 5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К103', 'Кольцо 058*066*46', 'шт.', 111, NULL, NULL, 'Кольцо', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К104', 'Кольцо 060*068*46', 'шт.', 87, NULL, NULL, 'Кольцо', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К105', 'Кольцо 060*070*58', 'шт.', 225, NULL, NULL, 'Кольцо', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К106', 'Кольцо 061*065*25', 'шт.', 158, NULL, NULL, 'Кольцо', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К107', 'Кольцо 063*068*30', 'шт.', 148, NULL, NULL, 'Кольцо', 5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К108', 'Кольцо 063*073*58', 'шт.', 100, NULL, NULL, 'Кольцо', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К109', 'Кольцо 064*070*36', 'шт.', 180, NULL, NULL, 'Кольцо', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К110', 'Кольцо 065*075*58', 'шт.', 173, NULL, NULL, 'Кольцо', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К111', 'Кольцо 067*075*46', 'шт.', 113, NULL, NULL, 'Кольцо', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К112', 'Кольцо 068*072*25', 'шт.', 92, NULL, NULL, 'Кольцо', 5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К113', 'Кольцо 069*075*36', 'шт.', 5, NULL, NULL, 'Кольцо', 11, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К114', 'Кольцо 070*075*30', 'шт.', 163, NULL, NULL, 'Кольцо', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К115', 'Кольцо 070*076*36', 'шт.', 182, NULL, NULL, 'Кольцо', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К116', 'Кольцо 070*078*46', 'шт.', 143, NULL, NULL, 'Кольцо', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К117', 'Кольцо 070*080*58', 'шт.', 243, NULL, NULL, 'Кольцо', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К118', 'Кольцо 072*078*36', 'шт.', 91, NULL, NULL, 'Кольцо', 5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К119', 'Кольцо 072*080*46', 'шт.', 98, NULL, NULL, 'Кольцо', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К120', 'Кольцо 072*080*58 нет', 'шт.', 90, NULL, NULL, 'Кольцо', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К121', 'Кольцо 074*080*36', 'шт.', 178, NULL, NULL, 'Кольцо', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К122', 'Кольцо 075*085*58', 'шт.', 112, NULL, NULL, 'Кольцо', 9, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К123', 'Кольцо 076*082*36', 'шт.', 245, NULL, NULL, 'Кольцо', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К124', 'Кольцо 079*085*36', 'шт.', 123, NULL, NULL, 'Кольцо', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К125', 'Кольцо 080*086*36', 'шт.', 181, NULL, NULL, 'Кольцо', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К126', 'Кольцо 080*090*58', 'шт.', 100, NULL, NULL, 'Кольцо', 9, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К127', 'Кольцо 082*088*36', 'шт.', 179, NULL, NULL, 'Кольцо', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К128', 'Кольцо 085*090*30', 'шт.', 85, NULL, NULL, 'Кольцо', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К129', 'Кольцо 085*091*36', 'шт.', 88, NULL, NULL, 'Кольцо', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К130', 'Кольцо 089*095*36', 'шт.', 217, NULL, NULL, 'Кольцо', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К136', 'Кольцо 100*106*36', 'шт.', 35, NULL, NULL, 'Кольцо', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К137', 'Кольцо 100*110*58', 'шт.', 203, NULL, NULL, 'Кольцо', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К138', 'Кольцо 102*108*36', 'шт.', 137, NULL, NULL, 'Кольцо', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К139', 'Кольцо 104*110*36', 'шт.', 32, NULL, NULL, 'Кольцо', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К140', 'Кольцо 105*110*30', 'шт.', 107, NULL, NULL, 'Кольцо', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К141', 'Кольцо 106*112*36', 'шт.', 125, NULL, NULL, 'Кольцо', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К142', 'Кольцо 108*112*25', 'шт.', 115, NULL, NULL, 'Кольцо', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К143', 'Кольцо 110*116*36', 'шт.', 83, NULL, NULL, 'Кольцо', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К144', 'Кольцо 110*120*58', 'шт.', 119, NULL, NULL, 'Кольцо', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К145', 'Кольцо 112*118*36', 'шт.', 94, NULL, NULL, 'Кольцо', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К146', 'Кольцо 114*120*36', 'шт.', 119, NULL, NULL, 'Кольцо', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К147', 'Кольцо 115*121*36', 'шт.', 110, NULL, NULL, 'Кольцо', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К148', 'Кольцо 115*125*58', 'шт.', 101, NULL, NULL, 'Кольцо', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К149', 'Кольцо 118*125*46', 'шт.', 64, NULL, NULL, 'Кольцо', 9, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К150', 'Кольцо 120*126*36', 'шт.', 81, NULL, NULL, 'Кольцо', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К151', 'Кольцо 120*130*58', 'шт.', 96, NULL, NULL, 'Кольцо', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К152', 'Кольцо 125*130*36', 'шт.', 92, NULL, NULL, 'Кольцо', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К153', 'Кольцо 130*135*25', 'шт.', 102, NULL, NULL, 'Кольцо', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К154', 'Кольцо 130*140*58', 'шт.', 34, NULL, NULL, 'Кольцо', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К155', 'Кольцо 135*140*36', 'шт.', 76, NULL, NULL, 'Кольцо', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К156', 'Кольцо 135*145*46', 'шт.', 92, NULL, NULL, 'Кольцо', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К157', 'Кольцо 140*150*46', 'шт.', 138, NULL, NULL, 'Кольцо', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К158', 'Кольцо 145*150*36', 'шт.', 90, NULL, NULL, 'Кольцо', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К159', 'Кольцо 150*155*36', 'шт.', 72, NULL, NULL, 'Кольцо', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К160', 'Кольцо 150*160*58', 'шт.', 57, NULL, NULL, 'Кольцо', 14, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К161', 'Кольцо 155*160*36', 'шт.', 74, NULL, NULL, 'Кольцо', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К162', 'Кольцо 160*165*36', 'шт.', 39, NULL, NULL, 'Кольцо', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К163', 'Кольцо 165*170*36', 'шт.', 36, NULL, NULL, 'Кольцо', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К164', 'Кольцо 170*180*58', 'шт.', 138, NULL, NULL, 'Кольцо', 21, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К165', 'Кольцо 175*185*58', 'шт.', 1, NULL, NULL, 'Кольцо', 21, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К166', 'Кольцо 180*185*36', 'шт.', 3, NULL, NULL, 'Кольцо', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К167', 'Кольцо 185*200*85', 'шт.', 33, NULL, NULL, 'Кольцо', 24, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К168', 'Кольцо 190*200*58', 'шт.', 17, NULL, NULL, 'Кольцо', 22, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К169', 'Кольцо 265*275*58', 'шт.', 33, NULL, NULL, 'Кольцо', 30, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('К170', 'Кольцо 305*320*85-2-2', 'шт.', 11, NULL, NULL, 'Кольцо', 50, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р171', 'Рукав высокого давления ДУ 8 М16*1,5(ключ 19) -  600', 'шт.', 5, NULL, NULL, 'РВД', 150, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р172', 'Рукав высокого давления ДУ 8 М16*1,5(ключ 19) -  900', 'шт.', 45, NULL, NULL, 'РВД', 165, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р173', 'Рукав высокого давления ДУ 8 М16*1,5(ключ 19) - 1010', 'шт.', 18, NULL, NULL, 'РВД', 160, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р174', 'Рукав высокого давления ДУ 8 М16*1,5(ключ 19) - 1050', 'шт.', 10, NULL, NULL, 'РВД', 175, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р175', 'Рукав высокого давления ДУ12 М 20*1,5(ключ 24) -  650', 'шт.', 47, NULL, NULL, 'РВД', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р176', 'Рукав высокого давления ДУ12 М 20*1,5(ключ 24) -  850', 'шт.', 69, NULL, NULL, 'РВД', 165, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р177', 'Рукав высокого давления ДУ12 М 20*1,5(ключ 24) - 1050', 'шт.', 97, NULL, NULL, 'РВД', 175, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р178', 'Рукав высокого давления ДУ12 М 20*1,5(ключ 24) - 1450', 'шт.', 27, NULL, NULL, 'РВД', 190, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р179', 'Рукав высокого давления ДУ12 М 20*1,5(ключ 24) - 1650', 'шт.', 19, NULL, NULL, 'РВД', 240, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р180', 'Рукав высокого давления ДУ12 М 20*1,5(ключ 24) - 2050', 'шт.', 41, NULL, NULL, 'РВД', 330, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р181', 'Рукав высокого давления ДУ12 М22*1,5(ключ 27) - 1050', 'шт.', 2, NULL, NULL, 'РВД', 160, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р182', 'Рукав высокого давления ДУ12 М22*1,5(ключ 27) - 1050', 'шт.', 26, NULL, NULL, 'РВД', 170, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р183', 'Рукав высокого давления ДУ12 М22*1,5(ключ 27) - 1800', 'шт.', 8, NULL, NULL, 'РВД', 270, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р185', 'Рукав высокого давления ДУ16 М27*1,5(ключ 32)-1050', 'шт.', 54, NULL, NULL, 'РВД', 200, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р186', 'Рукав высокого давления ДУ16 М27*1,5(ключ 32)-1450', 'шт.', 33, NULL, NULL, 'РВД', 260, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р187', 'Рукав высокого давления ДУ20  М30*1,5(ключ 36)- 850', 'шт.', 18, NULL, NULL, 'РВД', 270, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р188', 'Рукав высокого давления ДУ20  М33*2(ключ 41)-1050', 'шт.', 13, NULL, NULL, 'РВД', 320, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р189', 'Рукав высокого давления ДУ20  М33*2(ключ 41)-1250', 'шт.', 7, NULL, NULL, 'РВД', 330, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р190', 'Рукав высокого давления ДУ20  М33*2(ключ 41)-1450', 'шт.', 15, NULL, NULL, 'РВД', 360, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р191', 'Рукав Б 16*0,63', 'м', 23, NULL, NULL, 'Рукав В', 66, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р192', 'Рукав Б 18*063', 'м', 35, NULL, NULL, 'Рукав В', 80, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р193', 'Рукав Б 20*1,0', 'м', 8, NULL, NULL, 'Рукав В', 80, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р194', 'Рукав Б 20*1,0', 'м', 5, NULL, NULL, 'Рукав В', 90, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р195', 'Ремень  8,5*8-  600 Яр.', 'шт.', 90, NULL, NULL, 'Ремень', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р196', 'Ремень  8,5*8-  665 Яр.', 'шт.', 19, NULL, NULL, 'Ремень', 22, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р197', 'Ремень  8,5*8-  850 Ч', 'шт.', 52, NULL, NULL, 'Ремень', 24, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р198', 'Ремень  8,5*8-  850 Яр.', 'шт.', 294, NULL, NULL, 'Ремень', 26, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р199', 'Ремень  8,5*8-  875 Яр', 'шт.', 62, NULL, NULL, 'Ремень', 26, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р200', 'Ремень  8.5*8-  833 К.Ч', 'шт.', 42, NULL, NULL, 'Ремень', 21, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р201', 'Ремень  8.5*8-  833 Яр', 'шт.', 183, NULL, NULL, 'Ремень', 26, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р202', 'Ремень  8.5*8-  933 К', 'шт.', 52, NULL, NULL, 'Ремень', 21, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р203', 'Ремень  8.5*8-  933 Яр', 'шт.', 51, NULL, NULL, 'Ремень', 27, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р204', 'Ремень  8.5*8- 1018 Ч', 'шт.', 5, NULL, NULL, 'Ремень', 28, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р205', 'Ремень  8.5*8- 1018 Яр', 'шт.', 64, NULL, NULL, 'Ремень', 34, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р206', 'Ремень  8.5*8- 1060', 'шт.', 39, NULL, NULL, 'Ремень', 25, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р207', 'Ремень  8.5*8- 1090', 'шт.', 20, NULL, NULL, 'Ремень', 25, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р208', 'Ремень  8.5*8- 1150', 'шт.', 56, NULL, NULL, 'Ремень', 28, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р209', 'Ремень  8.5*8- 1250', 'шт.', 2, NULL, NULL, 'Ремень', 30, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р210', 'Ремень  8.5*8- 1250 Яр', 'шт.', 90, NULL, NULL, 'Ремень', 35, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р211', 'Ремень  8.5*8- 1250 Яр', 'шт', 2, NULL, NULL, 'Ремень', 36, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р212', 'Ремень  8.5*8- 1280 Яр', 'шт.', 92, NULL, NULL, 'Ремень', 36, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р213', 'Ремень  8.5*8- 1320 Яр', 'шт.', 88, NULL, NULL, 'Ремень', 38, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р214', 'Ремень 10*8-  715 Яр', 'шт.', 96, NULL, NULL, 'Ремень', 25, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р215', 'Ремень 11*10- 750 Ч', 'шт.', 79, NULL, NULL, 'Ремень', 25, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р216', 'Ремень 11*10- 950 Яр', 'шт.', 69, NULL, NULL, 'Ремень', 32, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р221', 'Ремень 11*10-1120', 'шт.', 25, NULL, NULL, 'Ремень', 38, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р222', 'Ремень 11*10-1120', 'шт.', 35, NULL, NULL, 'Ремень', 35, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р223', 'Ремень 11*10-1150', 'шт.', 40, NULL, NULL, 'Ремень', 35, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р224', 'Ремень 11*10-1180 Яр', 'шт.', 40, NULL, NULL, 'Ремень', 42, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р225', 'Ремень 11*10-1180', 'шт.', 81, NULL, NULL, 'Ремень', 42, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р226', 'Ремень 11*10-1220', 'шт.', 76, NULL, NULL, 'Ремень', 38, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р227', 'Ремень 11*10-1280', 'шт.', 25, NULL, NULL, 'Ремень', 36, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р228', 'Ремень 11*10-1400', 'шт.', 37, NULL, NULL, 'Ремень', 40, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р229', 'Ремень 11*10-1400 Яр', 'шт.', 63, NULL, NULL, 'Ремень', 48, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р230', 'Ремень 11*10-1400 Яр', 'шт.', 50, NULL, NULL, 'Ремень', 0, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р231', 'Ремень 11*10-1450 Яр', 'шт.', 47, NULL, NULL, 'Ремень', 47, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р232', 'Ремень 11*10-1500 Яр', 'шт.', 79, NULL, NULL, 'Ремень', 48, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р233', 'Ремень 11*10-1500 Яр нет', 'Шт', 50, NULL, NULL, 'Ремень', 48, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р234', 'Ремень 11*10-1650', 'шт.', 16, NULL, NULL, 'Ремень', 45, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р235', 'Ремень 11*10-1775 К', 'шт.', 91, NULL, NULL, 'Ремень', 35, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р236', 'Ремень 11*10-1775 Яр', 'шт.', 103, NULL, NULL, 'Ремень', 55, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р237', 'Ремень  12,5*9- 1090', 'шт.', 42, NULL, NULL, 'Ремень', 38, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р238', 'Ремень 12.5*9 -1120', 'шт.', 49, NULL, NULL, 'Ремень', 34, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р239', 'Ремень 14*10- 887 Ч', 'шт.', 5, NULL, NULL, 'Ремень', 33, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р240', 'Ремень 14*10- 887 Яр', 'шт.', 232, NULL, NULL, 'Ремень', 42, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р241', 'Ремень 14*10- 937 Ч', 'шт.', 2, NULL, NULL, 'Ремень', 36, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р242', 'Ремень 14*10- 937 Яр', 'шт.', 142, NULL, NULL, 'Ремень', 46, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р243', 'Ремень 14*10- 937 Яр зуб.', 'шт.', 90, NULL, NULL, 'Ремень', 46, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р244', 'Ремень 14*10- 987  К.Ч', 'шт.', 85, NULL, NULL, 'Ремень', 35, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р245', 'Ремень 14*10- 987 Яр', 'шт.', 278, NULL, NULL, 'Ремень', 48, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р246', 'Ремень 14*10-1037 Яр', 'шт.', 57, NULL, NULL, 'Ремень', 48, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р247', 'Ремень 14*13-1180 Яр зубч', 'шт.', 29, NULL, NULL, 'Ремень', 60, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р248', 'Ремень 14*13-1280 Яр зубч', 'шт.', 35, NULL, NULL, 'Ремень', 65, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р249', 'Ремень 14*13-1320 Яр зубч', 'шт.', 45, NULL, NULL, 'Ремень', 66, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р250', 'Ремень 16*11-1103', 'шт.', 107, NULL, NULL, 'Ремень', 46, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р251', 'Ремень 16*11-1120', 'шт.', 1, NULL, NULL, 'Ремень', 46, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р252', 'Ремень 16*11-1220', 'шт.', 16, NULL, NULL, 'Ремень', 45, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р253', 'Ремень 16*11-1220 Яр зубч', 'шт.', 1, NULL, NULL, 'Ремень', 65, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р254', 'Ремень 16*11-1220 Яр. зуб.', 'шт.', 50, NULL, NULL, 'Ремень', 0, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р255', 'Ремень 16*11-1403 Яр зубч', 'шт.', 28, NULL, NULL, 'Ремень', 70, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р256', 'Ремень 16*11-1450', 'шт.', 40, NULL, NULL, 'Ремень', 69, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р257', 'Ремень 16*11-1450 Яр', 'шт.', 36, NULL, NULL, 'Ремень', 75, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р258', 'Ремень 16*11-1650', 'шт.', 55, NULL, NULL, 'Ремень', 69, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р259', 'Ремень 19*12,5-1220 Яр зубч', 'шт.', 45, NULL, NULL, 'Ремень', 78, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р260', 'Ремень 19*12,5-1450 Яр зубч', 'шт.', 14, NULL, NULL, 'Ремень', 90, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р261', 'Ремень 19*12,5-1550 Яр зубч', 'шт.', 28, NULL, NULL, 'Ремень', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р262', 'Ремень 21*14-1303 Яр зубч', 'шт.', 44, NULL, NULL, 'Ремень', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р263', 'Ремень 21*14-1450 Ч', 'шт.', 8, NULL, NULL, 'Ремень', 120, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р264', 'Ремень 21*14-1450 Яр зуб', 'шт.', 46, NULL, NULL, 'Ремень', 130, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('р265', 'Ремень 21*14-1450 Яр зубч нет', 'шт', 10, NULL, NULL, 'ремень', 158, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р266', 'Ремень 21*14-1650 Яр зубч', 'шт.', 51, NULL, NULL, 'Ремень', 128, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р267', 'Ремень 21*14-1735', 'шт.', 1, NULL, NULL, 'Ремень', 102, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р268', 'Ремень 21*14-1735 зуб. Яр.', 'шт.', 12, NULL, NULL, 'Ремень', 120, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р269', 'Ремень 250*11000 Яр', 'шт.', 5, NULL, NULL, 'Ремень', 4000, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р270', 'Ремень 28*16*1450', 'шт.', 1, NULL, NULL, 'Ремень', 150, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р271', 'Ремень 28*16*1450 Яр зуб.', 'шт.', 35, NULL, NULL, 'Ремень', 180, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р272', 'Ремень 3/НВ-3750 Яр', 'шт.', 11, NULL, NULL, 'Ремень', 720, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р273', 'Ремень 30*13,5 - 1080', 'шт.', 11, NULL, NULL, 'Ремень', 150, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р274', 'Ремень 32*14-1100 Яр', 'шт.', 1, NULL, NULL, 'Ремень', 180, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р275', 'Ремень 32*14-1100 Яр. зубч.', 'шт.', 32, NULL, NULL, 'Ремень', 200, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р276', 'Ремень 3620 5SPC', 'шт.', 11, NULL, NULL, 'Ремень', 360, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р277', 'Ремень 38*18-1500', 'шт.', 29, NULL, NULL, 'Ремень', 180, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р278', 'Ремень 45*22-2385 Яр', 'шт.', 12, NULL, NULL, 'Ремень', 400, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р279', 'Ремень 45*22-2600', 'шт.', 15, NULL, NULL, 'Ремень', 400, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р280', 'Ремень 45*22-2600 Яр', 'шт.', 157, NULL, NULL, 'Ремень', 480, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р281', 'Ремень 45*22-4000', 'шт.', 85, NULL, NULL, 'Ремень', 430, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р282', 'Ремень 45*22-4000 Яр', 'шт.', 171, NULL, NULL, 'Ремень', 630, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р283', 'Ремень 6 НВ 3600 Яр', 'шт.', 8, NULL, NULL, 'Ремень', 1350, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р284', 'Ремень 68*24-2600', 'шт.', 4, NULL, NULL, 'Ремень', 960, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р285', 'Ремень OAVX 10- 875 Яр', 'шт.', 67, NULL, NULL, 'Ремень', 40, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р286', 'Ремень OAVX 10- 944 Яр', 'шт.', 78, NULL, NULL, 'Ремень', 36, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р287', 'Ремень OAVX 10-1030Яр', 'шт.', 43, NULL, NULL, 'Ремень', 50, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р288', 'Ремень OAVX 13-900 Яр', 'шт.', 58, NULL, NULL, 'Ремень', 42, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р289', 'Ремень Z(O)-  500 Яр', 'шт.', 99, NULL, NULL, 'Ремень', 15, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р290', 'Ремень Z(O)-  530 Яр', 'шт.', 64, NULL, NULL, 'Ремень', 16, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р291', 'Ремень Z(O)-  560 Яр.', 'шт.', 123, NULL, NULL, 'Ремень', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р292', 'Ремень Z(O)-  600 К', 'шт.', 24, NULL, NULL, 'Ремень', 17, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р293', 'Ремень Z(O)-  600 Яр', 'шт.', 136, NULL, NULL, 'Ремень', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р294', 'Ремень Z(O)-  630', 'шт.', 1, NULL, NULL, 'Ремень', 21, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р295', 'Ремень Z(O)-  630 Яр', 'шт.', 62, NULL, NULL, 'Ремень', 21, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р296', 'Ремень Z(O)-  710 Яр', 'шт.', 111, NULL, NULL, 'Ремень', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р297', 'Ремень Z(O)-  750 Яр', 'шт.', 56, NULL, NULL, 'Ремень', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р298', 'Ремень Z(O)-  800', 'шт.', 2, NULL, NULL, 'Ремень', 21, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р299', 'Ремень Z(O)-  800 Яр', 'шт.', 87, NULL, NULL, 'Ремень', 21, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р300', 'Ремень Z(O)-  850', 'шт.', 1, NULL, NULL, 'Ремень', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р301', 'Ремень Z(O)-  900 Яр', 'шт.', 76, NULL, NULL, 'Ремень', 21, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р302', 'Ремень Z(O)-  950', 'шт.', 4, NULL, NULL, 'Ремень', 18, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р303', 'Ремень Z(O)-  950 Яр', 'шт.', 95, NULL, NULL, 'Ремень', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р304', 'Ремень Z(O)- 1000 Яр', 'шт.', 52, NULL, NULL, 'Ремень', 21, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р305', 'Ремень Z(О)-1120', 'шт.', 37, NULL, NULL, 'Ремень', 22, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р306', 'Ремень Z(O)- 1180', 'шт.', 52, NULL, NULL, 'Ремень', 27, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р307', 'Ремень Z(O)- 1400', 'шт.', 387, NULL, NULL, 'Ремень', 27, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р308', 'Ремень Z(O)- 1600', 'шт.', 56, NULL, NULL, 'Ремень', 28, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р309', 'Ремень Z(O)- 1800', 'шт.', 1, NULL, NULL, 'Ремень', 30, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р310', 'Ремень Z(O)- 1800 Яр', 'шт.', 46, NULL, NULL, 'Ремень', 36, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р311', 'Ремень Z(O)- 1900', 'шт.', 51, NULL, NULL, 'Ремень', 40, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р312', 'Ремень ZR 270 H OPTIBELT', 'шт.', 5, NULL, NULL, 'Ремень', 600, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р313', 'Ремень А  500 Яр', 'шт.', 95, NULL, NULL, 'Ремень', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р314', 'Ремень А  560 Яр', 'шт.', 78, NULL, NULL, 'Ремень', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р315', 'Ремень А  630 Яр', 'шт.', 80, NULL, NULL, 'Ремень', 22, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р316', 'Ремень А  670 Яр', 'шт.', 17, NULL, NULL, 'Ремень', 22, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р317', 'Ремень А  710 Яр', 'шт.', 66, NULL, NULL, 'Ремень', 24, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р318', 'Ремень А  750', 'шт.', 107, NULL, NULL, 'Ремень', 28, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р319', 'Ремень А  800', 'шт.', 94, NULL, NULL, 'Ремень', 30, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р320', 'Ремень А  850', 'шт.', 21, NULL, NULL, 'Ремень', 30, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р321', 'Ремень А  850 Яр', 'шт.', 92, NULL, NULL, 'Ремень', 30, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р322', 'Ремень А  900', 'шт.', 8, NULL, NULL, 'Ремень', 30, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р323', 'Ремень А  950', 'шт.', 159, NULL, NULL, 'Ремень', 35, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р324', 'Ремень А 1000 К', 'шт.', 1, NULL, NULL, 'Ремень', 36, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р325', 'Ремень А 1000 Яр', 'шт.', 5, NULL, NULL, 'Ремень', 35, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р326', 'Ремень А 1060', 'шт.', 71, NULL, NULL, 'Ремень', 32, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р327', 'Ремень А 1060 К', 'шт.', 2, NULL, NULL, 'Ремень', 26, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р328', 'Ремень А 1120 К/Ч', 'шт.', 15, NULL, NULL, 'Ремень', 28, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р329', 'Ремень А 1120 Яр', 'шт.', 4, NULL, NULL, 'Ремень', 35, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р330', 'Ремень А 1180', 'шт.', 1, NULL, NULL, 'Ремень', 36, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р331', 'Ремень А 1180 Яр.', 'шт.', 194, NULL, NULL, 'Ремень', 38, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р332', 'Ремень А 1213', 'шт.', 180, NULL, NULL, 'Ремень', 44, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р333', 'Ремень А 1250 Яр', 'шт.', 188, NULL, NULL, 'Ремень', 40, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р334', 'Ремень А 1280 К', 'шт.', 211, NULL, NULL, 'Ремень', 32, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р335', 'Ремень А 1320 Ч', 'шт.', 3, NULL, NULL, 'Ремень', 45, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р336', 'Ремень А 1320 Яр', 'шт.', 104, NULL, NULL, 'Ремень', 42, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р337', 'Ремень А 1350 К', 'шт.', 24, NULL, NULL, 'Ремень', 36, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р338', 'Ремень А 1400  К/Ч', 'шт.', 28, NULL, NULL, 'Ремень', 36, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р339', 'Ремень А 1400 Яр', 'шт.', 23, NULL, NULL, 'Ремень', 42, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р340', 'Ремень А 1500 Яр', 'шт.', 2, NULL, NULL, 'Ремень', 45, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р341', 'Ремень А 1600 К', 'шт.', 153, NULL, NULL, 'Ремень', 36, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р342', 'Ремень А 1700', 'шт.', 3, NULL, NULL, 'Ремень', 42, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р346', 'Ремень А 1800 в/к', 'шт.', 1, NULL, NULL, 'Ремень', 48, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р347', 'Ремень А 1800 К', 'шт.', 266, NULL, NULL, 'Ремень', 42, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р348', 'Ремень А 1900 в/к', 'шт.', 2, NULL, NULL, 'Ремень', 48, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р349', 'Ремень А 1900 Яр.', 'шт.', 125, NULL, NULL, 'Ремень', 55, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р350', 'Ремень А 1950 К', 'шт.', 76, NULL, NULL, 'Ремень', 56, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р351', 'Ремень А 2000 Яр', 'шт.', 111, NULL, NULL, 'Ремень', 55, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р352', 'Ремень А 2120 Яр', 'шт.', 77, NULL, NULL, 'Ремень', 55, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р353', 'Ремень А 2240', 'шт.', 1, NULL, NULL, 'Ремень', 48, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р354', 'Ремень А 2240 Яр', 'шт.', 84, NULL, NULL, 'Ремень', 60, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р355', 'Ремень А 2360', 'шт.', 3, NULL, NULL, 'Ремень', 48, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р356', 'Ремень А 2360 Яр', 'шт.', 16, NULL, NULL, 'Ремень', 58, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р357', 'Ремень А 2500 Яр', 'шт.', 68, NULL, NULL, 'Ремень', 60, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р358', 'Ремень А 2650', 'шт.', 41, NULL, NULL, 'Ремень', 60, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р359', 'Ремень А 2800', 'шт.', 20, NULL, NULL, 'Ремень', 68, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р360', 'Ремень А 3000', 'шт.', 20, NULL, NULL, 'Ремень', 68, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р361', 'Ремень А 3000 Ч', 'шт.', 4, NULL, NULL, 'Ремень', 68, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р362', 'Ремень А 3150', 'шт.', 53, NULL, NULL, 'Ремень', 72, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р363', 'Ремень В(Б)  630 Яр', 'шт.', 53, NULL, NULL, 'Ремень', 35, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р364', 'Ремень В(Б)  710 Яр', 'шт.', 43, NULL, NULL, 'Ремень', 35, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р365', 'Ремень В(Б)  750', 'шт.', 86, NULL, NULL, 'Ремень', 44, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р366', 'Ремень В(Б)  800', 'шт.', 116, NULL, NULL, 'Ремень', 43, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р367', 'Ремень В(Б)  850', 'шт.', 73, NULL, NULL, 'Ремень', 47, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р368', 'Ремень В(Б)  900', 'шт.', 58, NULL, NULL, 'Ремень', 47, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р369', 'Ремень В(Б)  900 нет', 'шт.', 10, NULL, NULL, 'Ремень', 47, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р370', 'Ремень В(Б)  950', 'шт.', 38, NULL, NULL, 'Ремень', 47, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р371', 'Ремень В(Б) 1000', 'шт.', 1, NULL, NULL, 'Ремень', 52, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р372', 'Ремень В(Б) 1000 К', 'шт.', 94, NULL, NULL, 'Ремень', 45, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р373', 'Ремень В(Б) 1060', 'шт.', 33, NULL, NULL, 'Ремень', 49, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р374', 'Ремень В(Б) 1120 К', 'шт.', 19, NULL, NULL, 'Ремень', 44, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р375', 'Ремень В(Б) 1120 Яр', 'шт.', 62, NULL, NULL, 'Ремень', 65, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р376', 'Ремень В(Б) 1180 К', 'шт.', 94, NULL, NULL, 'Ремень', 45, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р377', 'Ремень В(Б) 1250 К', 'шт.', 4, NULL, NULL, 'Ремень', 55, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р378', 'Ремень В(Б) 1250 Яр', 'шт.', 142, NULL, NULL, 'Ремень', 72, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р379', 'Ремень В(Б) 1320', 'шт.', 1, NULL, NULL, 'Ремень', 62, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р380', 'Ремень В(Б) 1320 нет', 'шт.', 30, NULL, NULL, 'Ремень', 62, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р381', 'Ремень В(Б) 1400 Ч', 'шт.', 1, NULL, NULL, 'Ремень', 68, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р382', 'Ремень В(Б) 1400 Яр', 'шт.', 72, NULL, NULL, 'Ремень', 80, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р383', 'Ремень В(Б) 1450 К', 'шт.', 35, NULL, NULL, 'Ремень', 44, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р384', 'Ремень В(Б) 1500 К', 'шт.', 149, NULL, NULL, 'Ремень', 50, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р385', 'Ремень В(Б) 1550 в/к', 'шт.', 1, NULL, NULL, 'Ремень', 75, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р386', 'Ремень В(Б) 1550 К', 'шт.', 38, NULL, NULL, 'Ремень', 60, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р387', 'Ремень В(Б) 1600', 'шт.', 2, NULL, NULL, 'Ремень', 68, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р388', 'Ремень В(Б) 1600 К', 'шт.', 50, NULL, NULL, 'Ремень', 50, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р389', 'Ремень В(Б) 1600 Яр', 'шт.', 139, NULL, NULL, 'Ремень', 80, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р390', 'Ремень В(Б) 1650 в/к', 'шт.', 2, NULL, NULL, 'Ремень', 80, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р391', 'Ремень В(Б) 1650 К', 'шт.', 143, NULL, NULL, 'Ремень', 48, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р392', 'Ремень В(Б) 1700', 'шт.', 28, NULL, NULL, 'Ремень', 65, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р393', 'Ремень В(Б) 1700 К', 'шт.', 38, NULL, NULL, 'Ремень', 60, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р394', 'Ремень В(Б) 1750 К', 'шт.', 17, NULL, NULL, 'Ремень', 60, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р395', 'Ремень В(Б) 1800', 'шт.', 1, NULL, NULL, 'Ремень', 66, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р396', 'Ремень В(Б) 1800 К', 'шт.', 248, NULL, NULL, 'Ремень', 65, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р397', 'Ремень В(Б) 1850 К', 'шт.', 41, NULL, NULL, 'Ремень', 55, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р398', 'Ремень В(Б) 1900 Яр', 'шт.', 53, NULL, NULL, 'Ремень', 80, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р399', 'Ремень В(Б) 1950 К', 'шт.', 101, NULL, NULL, 'Ремень', 66, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р400', 'Ремень В(Б) 2000 Оренб.', 'шт.', 81, NULL, NULL, 'Ремень', 70, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р401', 'Ремень В(Б) 2000-Яр.', 'шт.', 311, NULL, NULL, 'Ремень', 75, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р402', 'Ремень В(Б) 2120 Яр', 'шт.', 83, NULL, NULL, 'Ремень', 80, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р403', 'Ремень В(Б) 2240 Яр', 'шт.', 118, NULL, NULL, 'Ремень', 95, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р404', 'Ремень В(Б) 2360 Ч', 'шт.', 5, NULL, NULL, 'Ремень', 86, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р405', 'Ремень В(Б) 2360 Яр', 'шт.', 65, NULL, NULL, 'Ремень', 90, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р406', 'Ремень В(Б) 2500 Яр', 'шт.', 34, NULL, NULL, 'Ремень', 95, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р407', 'Ремень В(Б) 2650 Яр', 'шт.', 415, NULL, NULL, 'Ремень', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р408', 'Ремень В(Б) 2800 Ч', 'шт.', 68, NULL, NULL, 'Ремень', 92, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р409', 'Ремень В(Б) 2800 Яр', 'шт.', 325, NULL, NULL, 'Ремень', 96, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р410', 'Ремень В(Б) 2900 Яр', 'шт.', 54, NULL, NULL, 'Ремень', 105, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р411', 'Ремень В(Б) 3000 Яр', 'шт.', 35, NULL, NULL, 'Ремень', 110, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р412', 'Ремень В(Б) 3150 Яр', 'шт.', 25, NULL, NULL, 'Ремень', 115, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р413', 'Ремень В(Б) 3350 Яр', 'шт.', 51, NULL, NULL, 'Ремень', 130, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р414', 'Ремень В(Б) 3500 Яр', 'шт.', 52, NULL, NULL, 'Ремень', 130, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р415', 'Ремень В(Б) 3750 Яр', 'шт.', 17, NULL, NULL, 'Ремень', 135, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р416', 'Ремень Д(Г) 1900 Яр.', 'шт.', 32, NULL, NULL, 'Ремень', 240, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р417', 'Ремень Д(Г) 2120 Яр', 'шт.', 36, NULL, NULL, 'Ремень', 260, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р418', 'Ремень Д(Г) 2500 Яр', 'шт.', 10, NULL, NULL, 'Ремень', 310, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р419', 'Ремень Д(Г) 3475 Ч', 'шт.', 5, NULL, NULL, 'Ремень', 300, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р420', 'Ремень Д(Г) 3475 Яр', 'шт.', 25, NULL, NULL, 'Ремень', 300, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р421', 'Ремень Д(Г) 3550 Яр.', 'шт.', 10, NULL, NULL, 'Ремень', 330, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р422', 'Ремень Д(Г) 4500 в/к', 'шт.', 1, NULL, NULL, 'Ремень', 380, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р423', 'Ремень Д(Г) 4500 Яр', 'шт.', 4, NULL, NULL, 'Ремень', 380, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р424', 'Ремень Д(Г) 4750 Ч', 'шт.', 10, NULL, NULL, 'Ремень', 370, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р425', 'Ремень Д(Г) 5300 Яр', 'шт.', 26, NULL, NULL, 'Ремень', 490, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р426', 'Ремень Д(Г) 5600 Яр нет', 'шт.', 3, NULL, NULL, 'Ремень', 550, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р427', 'Ремень Д(Г) 6300 Яр', 'шт.', 28, NULL, NULL, 'Ремень', 600, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р428', 'Ремень Д(Г) 7100 Яр.', 'шт.', 10, NULL, NULL, 'Ремень', 630, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р429', 'Ремень НВ/4-2650 Яр', 'шт.', 14, NULL, NULL, 'Ремень', 640, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р430', 'Ремень поликлиновой 7К 730', 'шт.', 17, NULL, NULL, 'Ремень', 380, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р431', 'Ремень С(В) 1180 в/к', 'шт.', 38, NULL, NULL, 'Ремень', 75, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р432', 'Ремень С(В) 1250 К', 'шт.', 38, NULL, NULL, 'Ремень', 60, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р433', 'Ремень С(В) 1400 К', 'шт.', 8, NULL, NULL, 'Ремень', 60, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р434', 'Ремень С(В) 1600 К', 'шт.', 1, NULL, NULL, 'Ремень', 70, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р435', 'Ремень С(В) 1800', 'шт.', 30, NULL, NULL, 'Ремень', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р436', 'Ремень С(В) 1900 Яр', 'шт.', 39, NULL, NULL, 'Ремень', 105, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р437', 'Ремень С(В) 2000 Яр.', 'шт.', 51, NULL, NULL, 'Ремень', 115, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р438', 'Ремень С(В) 2120', 'шт.', 1, NULL, NULL, 'Ремень', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р439', 'Ремень С(В) 2120 Яр', 'шт.', 50, NULL, NULL, 'Ремень', 120, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р440', 'Ремень С(В) 2240', 'шт.', 1, NULL, NULL, 'Ремень', 108, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р441', 'Ремень С(В) 2240 Яр', 'шт.', 76, NULL, NULL, 'Ремень', 118, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р442', 'Ремень С(В) 2360 Яр', 'шт.', 101, NULL, NULL, 'Ремень', 130, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р443', 'Ремень С(В) 2500 Яр', 'шт.', 53, NULL, NULL, 'Ремень', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р444', 'Ремень С(В) 2650  Яр.', 'шт.', 90, NULL, NULL, 'Ремень', 150, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р445', 'Ремень С(В) 2650 Ек', 'шт.', 22, NULL, NULL, 'Ремень', 120, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р446', 'Ремень С(В) 2650 Т4 Яр', 'шт.', 71, NULL, NULL, 'Ремень', 150, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р447', 'Ремень С(В) 2650 Ч', 'шт.', 17, NULL, NULL, 'Ремень', 130, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р448', 'Ремень С(В) 2800 Ч', 'шт.', 10, NULL, NULL, 'Ремень', 150, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р449', 'Ремень С(В) 2800- Яр', 'шт.', 2, NULL, NULL, 'Ремень', 150, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р450', 'Ремень С(В) 2800- Яр', 'шт.', 376, NULL, NULL, 'Ремень', 180, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р451', 'Ремень С(В) 3000 Яр', 'шт.', 39, NULL, NULL, 'Ремень', 165, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р452', 'Ремень С(В) 3150 Яр', 'шт.', 38, NULL, NULL, 'Ремень', 170, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р453', 'Ремень С(В) 3350', 'шт.', 2, NULL, NULL, 'Ремень', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р454', 'Ремень С(В) 3350 Яр', 'шт.', 21, NULL, NULL, 'Ремень', 190, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р455', 'Ремень С(В) 3550 Ч', 'шт.', 1, NULL, NULL, 'Ремень', 175, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р456', 'Ремень С(В) 3550 Яр', 'шт.', 2, NULL, NULL, 'Ремень', 190, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р457', 'Ремень С(В) 3585', 'шт.', 1, NULL, NULL, 'Ремень', 160, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р458', 'Ремень С(В) 3585 Яр', 'шт.', 77, NULL, NULL, 'Ремень', 192, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р459', 'Ремень С(В) 3750 Ч', 'шт.', 1, NULL, NULL, 'Ремень', 160, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р460', 'Ремень С(В) 3750 Яр', 'шт.', 1, NULL, NULL, 'Ремень', 210, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р461', 'Ремень С(В) 3750 Яр', 'шт.', 20, NULL, NULL, 'Ремень', 210, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р462', 'Ремень С(В) 4000 Яр', 'шт.', 20, NULL, NULL, 'Ремень', 230, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р463', 'Ремень С(В) 4350', 'шт.', 187, NULL, NULL, 'Ремень', 180, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р464', 'Ремень С(В) 4500', 'шт.', 1, NULL, NULL, 'Ремень', 180, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р465', 'Ремень С(В) 4500 Яр.', 'шт.', 38, NULL, NULL, 'Ремень', 250, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р466', 'Ремень С(В) 4750 Яр', 'шт.', 180, NULL, NULL, 'Ремень', 260, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р467', 'Ремень С(В) 5000', 'шт.', 22, NULL, NULL, 'Ремень', 260, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р468', 'Ремень С(В) 6300', 'шт.', 6, NULL, NULL, 'Ремень', 240, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р469', 'Ремень С(В) 6700 Яр', 'шт.', 13, NULL, NULL, 'Ремень', 308, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р470', 'Ремень С(В) 7100 Яр.', 'шт.', 60, NULL, NULL, 'Ремень', 322, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р471', 'Ремень УБ 1800', 'шт.', 1, NULL, NULL, 'Ремень', 90, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р472', 'Ремень УБ 2650 Яр', 'шт.', 20, NULL, NULL, 'Ремень', 130, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р473', 'Ремень УБ-3150', 'шт.', 17, NULL, NULL, 'Ремень', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р474', 'Ремень УВ 2800 Яр', 'шт.', 16, NULL, NULL, 'Ремень', 220, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р475', 'Ремень УВ 3550', 'шт.', 15, NULL, NULL, 'Ремень', 260, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р476', 'Ремень УВ-2240', 'шт.', 10, NULL, NULL, 'Ремень', 160, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р477', 'Ремень УВ-3150', 'шт.', 19, NULL, NULL, 'Ремень', 200, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р478', 'Ремень УВ-4250', 'шт.', 17, NULL, NULL, 'Ремень', 280, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р479', 'Ремень УВ/2-2240', 'шт.', 4, NULL, NULL, 'Ремень', 400, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р480', 'Ремень УВ/4-2240', 'шт.', 11, NULL, NULL, 'Ремень', 480, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р481', 'Ремень450*3000 Яр', 'шт.', 5, NULL, NULL, 'Ремень', 1850, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Р482', 'РеменьXPA  1120', 'шт.', 3, NULL, NULL, 'Ремень', 42, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С483', 'Сальник 6*22-1,2', 'шт.', 270, NULL, NULL, 'Сальник', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С484', 'Сальник 8*22-1,2', 'шт.', 266, NULL, NULL, 'Сальник', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С485', 'Сальник 9*22-1,2', 'шт.', 33, NULL, NULL, 'Сальник', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С486', 'Сальник 10*22-1,2', 'шт.', 195, NULL, NULL, 'Сальник', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С487', 'Сальник 10*25-1,2', 'шт.', 96, NULL, NULL, 'Сальник', 24, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С488', 'Сальник 10*26-1,2', 'шт.', 1, NULL, NULL, 'Сальник', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С489', 'Сальник 12*28- 1,2', 'шт.', 1414, NULL, NULL, 'Сальник', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С490', 'Сальник 15*30-1,2', 'шт.', 89, NULL, NULL, 'Сальник', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С491', 'Сальник 16*30-1,2', 'шт.', 49, NULL, NULL, 'Сальник', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С492', 'Сальник 17*32-1.2', 'шт.', 121, NULL, NULL, 'Сальник', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С493', 'Сальник 18*35-1,2', 'шт.', 41, NULL, NULL, 'Сальник', 6, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С494', 'Сальник 19*32-1,2', 'шт.', 886, NULL, NULL, 'Сальник', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С495', 'Сальник 20*28*6 имп.', 'шт.', 1, NULL, NULL, 'Сальник', 50, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С496', 'Сальник 20*35-1,2', 'шт.', 100, NULL, NULL, 'Сальник', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С497', 'Сальник 20*35-1,2', 'шт.', 31, NULL, NULL, 'Сальник', 9, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С498', 'Сальник 20*40-1,2', 'шт.', 1, NULL, NULL, 'Сальник', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С499', 'Сальник 20*40-1,2', 'шт.', 687, NULL, NULL, 'Сальник', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С500', 'Сальник 20*40-2,2', 'шт.', 465, NULL, NULL, 'Сальник', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С501', 'Сальник 20*42-2,2', 'шт.', 39, NULL, NULL, 'Сальник', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С502', 'Сальник 22*34,5*6-1,1', 'шт.', 87, NULL, NULL, 'Сальник', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С503', 'Сальник 22*34,5*6-1,1 кр.', 'шт.', 64, NULL, NULL, 'Сальник', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С504', 'Сальник 22*40-1,2', 'шт.', 808, NULL, NULL, 'Сальник', 9, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С505', 'Сальник 24*46-2,2', 'шт.', 138, NULL, NULL, 'Сальник', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С506', 'Сальник 25*42-1,2', 'шт.', 242, NULL, NULL, 'Сальник', 9, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С507', 'Сальник 25*42-2,2', 'шт.', 428, NULL, NULL, 'Сальник', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С508', 'Сальник 28*47-1.2', 'шт.', 6, NULL, NULL, 'Сальник', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С509', 'Сальник 28*47-2.2', 'шт', 140, NULL, NULL, 'Сальник', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С510', 'Сальник 30*42', 'шт.', 19, NULL, NULL, 'Сальник', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С511', 'Сальник 30*45*8 (2101-2401034)', 'шт.', 10, NULL, NULL, 'Сальник', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С512', 'Сальник 30*47*8', 'шт.', 46, NULL, NULL, 'Сальник', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С513', 'Сальник 30*50-1,2 прав.', 'шт.', 14, NULL, NULL, 'Сальник', 9, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С514', 'Сальник 30*52-1,2', 'шт.', 389, NULL, NULL, 'Сальник', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С515', 'Сальник 30*52-2,2', 'шт.', 356, NULL, NULL, 'Сальник', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С516', 'Сальник 30*52*7', 'шт.', 3, NULL, NULL, 'Сальник', 60, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С517', 'Сальник 32*52 -1,2', 'шт.', 88, NULL, NULL, 'Сальник', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С518', 'Сальник 32*52 пр', 'шт.', 398, NULL, NULL, 'Сальник', 11, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С519', 'Сальник 35*48*7 лев', 'шт.', 60, NULL, NULL, 'Сальник', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С520', 'Сальник 35*48*7 пр', 'шт.', 32, NULL, NULL, 'Сальник', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С521', 'Сальник 35*48*7 пр.', 'шт.', 99, NULL, NULL, 'Сальник', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С522', 'Сальник 35*57*9 лев(2110-2301035)', 'шт.', 29, NULL, NULL, 'Сальник', 26, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С523', 'Сальник 35*57*9 пр(2108-2301034)', 'шт.', 50, NULL, NULL, 'Сальник', 13, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С524', 'Сальник 35*57*9 пр(2110-2301034)', 'шт.', 28, NULL, NULL, 'Сальник', 26, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С525', 'Сальник 35*58-1,2', 'шт.', 307, NULL, NULL, 'Сальник', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С526', 'Сальник 38*52-1,2', 'шт.', 42, NULL, NULL, 'Сальник', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С527', 'Сальник 38*56-1,2 лев.', 'шт.', 60, NULL, NULL, 'Сальник', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С528', 'Сальник 38*58-1,2', 'шт.', 50, NULL, NULL, 'Сальник', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С529', 'Сальник 38*58-2,2', 'шт.', 156, NULL, NULL, 'Сальник', 13, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С530', 'Сальник 38*60-1,3 пр', 'шт.', 42, NULL, NULL, 'Сальник', 9, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С531', 'Сальник 38*62*7 имп.', 'шт.', 6, NULL, NULL, 'Сальник', 65, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С532', 'Сальник 40*57,15*10 (2101-3103038)', 'шт.', 48, NULL, NULL, 'Сальник', 8, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С533', 'Сальник 40*60-1.2', 'шт.', 661, NULL, NULL, 'Сальник', 13, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С534', 'Сальник 40*62-1.2', 'шт.', 207, NULL, NULL, 'Сальник', 11, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С535', 'Сальник 42*58', 'шт.', 60, NULL, NULL, 'Сальник', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С536', 'Сальник 42*58*10 кр.', 'шт.', 60, NULL, NULL, 'Сальник', 16, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С537', 'Сальник 42*59 /864141/', 'шт.', 11, NULL, NULL, 'Сальник', 15, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С538', 'Сальник 42*62 - 1,2', 'шт.', 108, NULL, NULL, 'Сальник', 14, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С539', 'Сальник 42*62 - 2,2', 'шт.', 12, NULL, NULL, 'Сальник', 14, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С540', 'Сальник 42*64 - 1,3 пр', 'шт.', 19, NULL, NULL, 'Сальник', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С541', 'Сальник 42*64 - 1,3 пр.', 'шт.', 140, NULL, NULL, 'Сальник', 9, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С542', 'Сальник 42*68 (20-1701210)', 'шт.', 154, NULL, NULL, 'Сальник', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С543', 'Сальник 45*60 пр.', 'шт.', 50, NULL, NULL, 'Сальник', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С606', 'Сальник 110*135-2,2', 'шт.', 47, NULL, NULL, 'Сальник', 47, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С544', 'Сальник 45*60пр.Кр', 'шт.', 1, NULL, NULL, 'Сальник', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С545', 'Сальник 45*64 пр.', 'шт.', 55, NULL, NULL, 'Сальник', 12, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С546', 'Сальник 45*65-1,2', 'шт.', 183, NULL, NULL, 'Сальник', 15, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С547', 'Сальник 45*65-2,2', 'шт.', 35, NULL, NULL, 'Сальник', 14, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С548', 'Сальник 45*65-2,2', 'шт.', 350, NULL, NULL, 'Сальник', 15, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С549', 'Сальник 45*70-2,2 /375-3401150/', 'шт.', 38, NULL, NULL, 'Сальник', 16, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С550', 'Сальник 48*72  (20-310*3038 )', 'шт.', 18, NULL, NULL, 'Сальник', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С551', 'Сальник 50*65*8', 'шт.', 9, NULL, NULL, 'Сальник', 80, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С552', 'Сальник 50*70-1.2', 'шт.', 412, NULL, NULL, 'Сальник', 16, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С553', 'Сальник 50*70-2.2', 'шт.', 58, NULL, NULL, 'Сальник', 17, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С554', 'Сальник 50*80-2.2', 'шт.', 31, NULL, NULL, 'Сальник', 9, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С555', 'Сальник 51*76-2,2', 'шт.', 63, NULL, NULL, 'Сальник', 13, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С556', 'Сальник 52*72-1.2', 'шт.', 96, NULL, NULL, 'Сальник', 13, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С557', 'Сальник 52*72-1.2 кр.', 'шт.', 60, NULL, NULL, 'Сальник', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С558', 'Сальник 52*75- 2.2', 'шт.', 41, NULL, NULL, 'Сальник', 18, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С559', 'Сальник 55*80-1,2', 'шт.', 374, NULL, NULL, 'Сальник', 18, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С560', 'Сальник 55*80-2,2', 'шт.', 241, NULL, NULL, 'Сальник', 18, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С561', 'Сальник 55*82-2,2', 'шт.', 210, NULL, NULL, 'Сальник', 15, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С562', 'Сальник 56*73,15*10(2121-3103038)', 'шт.', 1, NULL, NULL, 'Сальник', 15, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С563', 'Сальник 57,2*76', 'шт.', 24, NULL, NULL, 'Сальник', 10, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С564', 'Сальник 58*84 лев.', 'шт.', 128, NULL, NULL, 'Сальник', 18, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С565', 'Сальник 58*84 пр.', 'шт.', 5, NULL, NULL, 'Сальник', 18, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С566', 'Сальник 58*84- 2,2 пр.', 'шт.', 80, NULL, NULL, 'Сальник', 16, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С567', 'Сальник 60*82-1,2 (375-4224017-03)', 'шт.', 377, NULL, NULL, 'Сальник', 15, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С568', 'Сальник 60*85-1,2', 'шт.', 251, NULL, NULL, 'Сальник', 21, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С569', 'Сальник 60*85-2,2', 'шт.', 397, NULL, NULL, 'Сальник', 21, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С570', 'Сальник 62*90-2.2', 'шт.', 136, NULL, NULL, 'Сальник', 18, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С571', 'Сальник 62*93 /120-240-2054/', 'шт.', 1, NULL, NULL, 'Сальник', 23, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С572', 'Сальник 62*93 пр.', 'шт.', 75, NULL, NULL, 'Сальник', 23, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С573', 'Сальник 64*95 -2,2 пр. кр.', 'шт.', 63, NULL, NULL, 'Сальник', 25, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С574', 'Сальник 65*90-1.2', 'шт.', 387, NULL, NULL, 'Сальник', 21, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С575', 'Сальник 65*90-2.2', 'шт.', 346, NULL, NULL, 'Сальник', 22, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С576', 'Сальник 68*95', 'шт.', 42, NULL, NULL, 'Сальник', 22, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С577', 'Сальник 70* 92 лев. кр.2,2', 'шт.', 17, NULL, NULL, 'Сальник', 24, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С578', 'Сальник 70* 92 пр. кр.2,2', 'шт.', 2, NULL, NULL, 'Сальник', 24, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С579', 'Сальник 70* 92-2,2', 'шт.', 170, NULL, NULL, 'Сальник', 24, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С580', 'Сальник 70* 92-2,2 лев', 'шт.', 130, NULL, NULL, 'Сальник', 24, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С581', 'Сальник 70* 92-2,2 пр.', 'шт.', 60, NULL, NULL, 'Сальник', 24, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С582', 'Сальник 70* 92прав2,2', 'шт.', 2, NULL, NULL, 'Сальник', 24, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С583', 'Сальник 70* 95-1,2', 'шт.', 119, NULL, NULL, 'Сальник', 23, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С584', 'Сальник 70* 95-2,2', 'шт.', 135, NULL, NULL, 'Сальник', 24, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С585', 'Сальник 75* 94-2.2', 'шт.', 168, NULL, NULL, 'Сальник', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С586', 'Сальник 75*100-1.2', 'шт.', 330, NULL, NULL, 'Сальник', 26, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С587', 'Сальник 75*100-2.2', 'шт.', 177, NULL, NULL, 'Сальник', 28, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С588', 'Сальник 75*102-2.2- 10/12', 'шт.', 189, NULL, NULL, 'Сальник', 30, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С589', 'Сальник 75*102-2.2- 12/14', 'шт.', 88, NULL, NULL, 'Сальник', 30, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С590', 'Сальник 80*100 лев.', 'шт.', 36, NULL, NULL, 'Сальник', 20, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С591', 'Сальник 80*105-1,2', 'шт.', 107, NULL, NULL, 'Сальник', 28, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С592', 'Сальник 80*105-2,2', 'шт.', 175, NULL, NULL, 'Сальник', 32, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С593', 'Сальник 80*105-2.2лев.', 'шт.', 105, NULL, NULL, 'Сальник', 32, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С594', 'Сальник 85*110-1,2', 'шт.', 160, NULL, NULL, 'Сальник', 30, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С595', 'Сальник 85*110-2,2', 'шт.', 100, NULL, NULL, 'Сальни', 32, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С596', 'Сальник 90*120-1,2', 'шт.', 133, NULL, NULL, 'Сальник', 33, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С597', 'Сальник 92*120-1,2', 'шт.', 2, NULL, NULL, 'Сальник', 24, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С598', 'Сальник 92*120-2,2', 'шт.', 78, NULL, NULL, 'Сальник', 24, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С599', 'Сальник 95*120-1.2', 'шт.', 136, NULL, NULL, 'Сальник', 36, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С600', 'Сальник 95*130-2,2', 'шт.', 269, NULL, NULL, 'Сальник', 55, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С601', 'Сальник 98*127-2,2', 'шт.', 71, NULL, NULL, 'Сальник', 27, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С602', 'Сальник 100*125-1,2', 'шт.', 128, NULL, NULL, 'Сальник', 41, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С603', 'Сальник 100*125-2,2', 'шт.', 117, NULL, NULL, 'Сальник', 45, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С604', 'Сальник 105*130-1.2', 'шт.', 128, NULL, NULL, 'Сальник', 47, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С605', 'Сальник 110*135-1,2', 'шт.', 42, NULL, NULL, 'Сальник', 45, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С606', 'Сальник 110*135-2,2', 'шт.', 47, NULL, NULL, 'Сальник', 47, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С607', 'Сальник 114*145*16 /864117-П/', 'шт.', 70, NULL, NULL, 'Сальник', 42, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С608', 'Сальник 115*145-1,2', 'шт.', 72, NULL, NULL, 'Сальник', 48, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С609', 'Сальник 119*146-1,2', 'шт.', 21, NULL, NULL, 'Сальник', 44, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С610', 'Сальник 120*146-1,2', 'шт.', 63, NULL, NULL, 'Сальник', 44, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С611', 'Сальник 120*150-1.2', 'шт.', 68, NULL, NULL, 'Сальник', 51, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С612', 'Сальник 120*150-2.2', 'шт.', 1, NULL, NULL, 'Сальник', 50, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С613', 'Сальник 128*154*15 (9864135-020)', 'шт.', 142, NULL, NULL, 'Сальник', 50, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С614', 'Сальник 130*155 /500А-3104038/', 'шт.', 41, NULL, NULL, 'Сальник', 52, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С615', 'Сальник 130*160-1,2', 'шт.', 87, NULL, NULL, 'Сальник', 60, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С616', 'Сальник 130*162*15-1,2', 'шт.', 39, NULL, NULL, 'Сальник', 50, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С617', 'Сальник 137*160-1.2', 'шт.', 134, NULL, NULL, 'Сальник', 40, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С618', 'Сальник 140*170 лев.', 'шт.', 111, NULL, NULL, 'Сальник', 68, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С619', 'Сальник 140*170-1,2', 'шт.', 64, NULL, NULL, 'Сальник', 70, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С620', 'Сальник 140*170-2,2', 'шт.', 62, NULL, NULL, 'Сальник', 70, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С621', 'Сальник 142*168-14/16,5-2,2 /307287П/', 'шт.', 2, NULL, NULL, 'Сальник', 50, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С622', 'Сальник 142*168-14/16,5-2,2 /307290П/', 'шт.', 42, NULL, NULL, 'Сальник', 50, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С623', 'Сальник 142*168*16-2,2 /864.129-02/', 'шт.', 157, NULL, NULL, 'Сальник', 50, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С624', 'Сальник 144*175-1,2', 'шт.', 9, NULL, NULL, 'Сальник', 46, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С625', 'Сальник 145*175-2,2', 'шт.', 60, NULL, NULL, 'Сальник', 60, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С626', 'Сальник 150*180-1,2', 'шт.', 62, NULL, NULL, 'Сальник', 75, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('С627', 'Сальник 160*190-1,2', 'шт.', 69, NULL, NULL, 'Сальник', 90, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Арт. С628', 'Сальник 170*200-1.2', 'шт.', 18, NULL, NULL, 'Сальник', 116, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Арт. С629', 'Сальник 180*208-1.2', 'шт.', 1, NULL, NULL, 'Сальник', 120, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Арт. С630', 'Сальник 180*208-2.2', 'шт.', 5, NULL, NULL, 'Сальник', 120, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Арт. С631', 'Сальник 180*220-1.2', 'шт.', 14, NULL, NULL, 'Сальник', 104, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Арт. С632', 'Сальник 190*230-1,2', 'шт.', 66, NULL, NULL, 'Сальник', 145, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П633', 'Подшипник 6000  2RSH/SKF/', 'шт.', 10, NULL, NULL, 'Подшипники', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П634', 'Подшипник 6000  2Z/SKF/', 'шт.', 20, NULL, NULL, 'Подшипники', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П635', 'Подшипник 6001 2RS /SKF/', 'шт.', 2, NULL, NULL, 'Подшипники', 135, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П636', 'Подшипник 6001 2RS /SKF/', 'шт.', 20, NULL, NULL, 'Подшипники', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П637', 'Подшипник 6001 2Z /SKF/', 'шт.', 20, NULL, NULL, 'Подшипники', 110, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П638', 'Подшипник 6002 2RS /SKF/', 'шт.', 9, NULL, NULL, 'Подшипники', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П639', 'Подшипник 6002 2Z /SKF/', 'шт.', 27, NULL, NULL, 'Подшипники', 120, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П640', 'Подшипник 6003 2RSH /SKF/', 'шт.', 1, NULL, NULL, 'Подшипники', 150, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П641', 'Подшипник 6003 2Z /SKF/', 'шт.', 6, NULL, NULL, 'Подшипники', 130, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П642', 'Подшипник 6004 2RS/FAG/', 'шт.', 6, NULL, NULL, 'Подшипники', 180, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П643', 'Подшипник 6004 2RZ TN9/C3 VT162 /FAG/', 'шт.', 4, NULL, NULL, 'Подшипники', 400, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П644', 'Подшипник 6004 2Z', 'шт.', 11, NULL, NULL, 'Подшипники', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П645', 'Подшипник 6005 2RSH /SKF/', 'шт.', 2, NULL, NULL, 'Подшипники', 200, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П646', 'Подшипник 6005 ZZ /SKF/', 'шт.', 10, NULL, NULL, 'Подшипники', 170, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П647', 'Подшипник 6006 2RS /FAG/', 'шт.', 1, NULL, NULL, 'Подшипники', 240, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П648', 'Подшипник 6006 2Z /SKF/', 'шт.', 5, NULL, NULL, 'Подшипники', 200, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П649', 'Подшипник 6007 2RS1 /SKF/', 'шт.', 6, NULL, NULL, 'Подшипники', 260, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П650', 'Подшипник 6007 2Z /SKF/', 'шт.', 7, NULL, NULL, 'Подшипники', 260, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П651', 'Подшипник 6008 2Z /SKF/', 'шт.', 1, NULL, NULL, 'Подшипники', 280, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П652', 'Подшипник 6009 2RS1 /SKF/', 'шт.', 13, NULL, NULL, 'Подшипники', 400, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П653', 'Подшипник 6009 2Z /FAG/', 'шт.', 3, NULL, NULL, 'Подшипники', 380, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П654', 'Подшипник 6010 2RS /SKF/', 'шт.', 5, NULL, NULL, 'Подшипники', 460, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П655', 'Подшипник 6010 ZZ /FAG/', 'шт.', 4, NULL, NULL, 'Подшипники', 450, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П656', 'Подшипник 6011 2RS1 /SKF/', 'шт.', 5, NULL, NULL, 'Подшипники', 700, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П657', 'Подшипник 6011 ZZ /SKF/', 'шт.', 3, NULL, NULL, 'Подшипники', 630, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П658', 'Подшипник 6012 2RSR (FAG)', 'шт.', 1, NULL, NULL, 'Подшипники', 820, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П659', 'Подшипник 6012 2RSR (SKF)', 'шт.', 5, NULL, NULL, 'Подшипники', 820, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П660', 'Подшипник 6012  ZZ NR', 'шт.', 2, NULL, NULL, 'Подшипники', 610, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П661', 'Подшипник 6013 2RS1 /SKF/', 'шт.', 5, NULL, NULL, 'Подшипники', 900, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П662', 'Подшипник 606 ZZ /NSK/', 'шт.', 4, NULL, NULL, 'Подшипники', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П663', 'Подшипник 606 ZZ /SMB/', 'шт.', 12, NULL, NULL, 'Подшипники', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П664', 'Подшипник 607 2Z /SKF/', 'шт.', 16, NULL, NULL, 'Подшипники', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П665', 'Подшипник 609 2Z /SKF/', 'шт.', 10, NULL, NULL, 'Подшипники', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П666', 'Подшипник 618/6 /SKF/', 'шт.', 25, NULL, NULL, 'Подшипники', 130, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П667', 'Подшипник 61818 2RS /ISB/', 'шт.', 2, NULL, NULL, 'Подшипники', 910, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П668', 'Подшипник 619/7 2Z /SKF/', 'шт.', 4, NULL, NULL, 'Подшипники', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П669', 'Подшипник 61902 -2RS', 'шт.', 7, NULL, NULL, 'Подшипники', 310, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П670', 'Подшипник 61907 2RS /KOYO/', 'шт.', 3, NULL, NULL, 'Подшипники', 750, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П671', 'Подшипник 61908 2RS ISB', 'шт.', 2, NULL, NULL, 'Подшипники', 160, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П672', 'Подшипник 61912 2RS /ISB/', 'шт.', 9, NULL, NULL, 'Подшипники', 450, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П673', 'Подшипник 62/22 2RS (22*50*14) /SKF/', 'шт.', 1, NULL, NULL, 'Подшипники', 340, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П674', 'Подшипник 62/22 2RS (22*50*14) /SKF/', 'шт.', 4, NULL, NULL, 'Подшипники', 400, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П675', 'Подшипник 62/28 2RS (28*58*16) /KOYO/', 'шт.', 4, NULL, NULL, 'Подшипники', 430, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П676', 'Подшипник 62/28 2RS (28*58*16) /KOYO/', 'шт.', 20, NULL, NULL, 'Подшипники', 460, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П677', 'Подшипник 6200 2RSH (SKF)', 'шт.', 14, NULL, NULL, 'Подшипники', 110, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П678', 'Подшипник 6200 2Z /SKF/', 'шт.', 20, NULL, NULL, 'Подшипники', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П679', 'Подшипник 6201 2RSH /SKF/', 'шт.', 36, NULL, NULL, 'Подшипники', 130, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П680', 'Подшипник 6201 2Z (SKF)', 'шт.', 4, NULL, NULL, 'Подшипники', 115, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П681', 'Подшипник 6202 2RSН', 'шт.', 2, NULL, NULL, 'Подшипники', 50, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П682', 'Подшипник 6202 2RSН /C3 /SKF/', 'шт.', 3, NULL, NULL, 'Подшипники', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П683', 'Подшипник 6202 2RSН/SKF/', 'шт.', 16, NULL, NULL, 'Подшипники', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П684', 'Подшипник 6202 2Z (SKF)', 'шт.', 13, NULL, NULL, 'Подшипники', 130, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П685', 'Подшипник 6203 TN9/C3 (SKF)', 'шт.', 20, NULL, NULL, 'Подшипники', 150, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П686', 'Подшипник 6203 2RS /SKF/', 'шт.', 1, NULL, NULL, 'Подшипники', 160, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П687', 'Подшипник 6203 2Z /KOYO/', 'шт.', 6, NULL, NULL, 'Подшипники', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П688', 'Подшипник 6203 2ZR /FAG/', 'шт.', 19, NULL, NULL, 'Подшипники', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П689', 'Подшипник 6204 2RSH (FAG)', 'шт.', 1, NULL, NULL, 'Подшипники', 150, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П690', 'Подшипник 6204 2RSH /SKF/', 'шт.', 12, NULL, NULL, 'Подшипники', 180, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П691', 'Подшипник 6204 2ZR /FAG/', 'шт.', 6, NULL, NULL, 'Подшипники', 150, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П692', 'Подшипник 6205 2RS /FAG/', 'шт.', 1, NULL, NULL, 'Подшипники', 220, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П693', 'Подшипник 6205 2RSH /SKF/', 'шт.', 4, NULL, NULL, 'Подшипники', 220, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П694', 'Подшипник 6205 2Z  (FAG)', 'шт.', 1, NULL, NULL, 'Подшипники', 160, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П695', 'Подшипник 6205 2Z /c3 (FAG)', 'шт.', 2, NULL, NULL, 'Подшипники', 170, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П696', 'Подшипник 6205 TN9/c3 /SKF/', 'шт.', 2, NULL, NULL, 'Подшипники', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П697', 'Подшипник 6206  (SKF)', 'шт.', 9, NULL, NULL, 'Подшипники', 180, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П698', 'Подшипник 6206 2RS1 (FAG)', 'шт.', 2, NULL, NULL, 'Подшипники', 300, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П699', 'Подшипник 6206 2RS1 (KOYO)', 'шт.', 16, NULL, NULL, 'Подшипники', 280, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П700', 'Подшипник 6206 2RS1 (SKF)', 'шт.', 10, NULL, NULL, 'Подшипники', 300, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П701', 'Подшипник 6206 2Z (SKF)', 'шт.', 6, NULL, NULL, 'Подшипники', 300, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П702', 'Подшипник 6206 2Z /KOYO/', 'шт.', 2, NULL, NULL, 'Подшипники', 300, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П703', 'Подшипник 6207 2RS1 /SKF/', 'шт.', 11, NULL, NULL, 'Подшипники', 350, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П704', 'Подшипник 6207 TB', 'шт.', 1, NULL, NULL, 'Подшипники', 350, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П705', 'Подшипник 6208 2RS /FAG/', 'шт.', 2, NULL, NULL, 'Подшипники', 500, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П706', 'Подшипник 6208 2RS /SKF/', 'шт.', 7, NULL, NULL, 'Подшипники', 480, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П707', 'Подшипник 6208 2Z /SKF/', 'шт.', 1, NULL, NULL, 'Подшипники', 420, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П708', 'Подшипник 6209 2RS1 (SKF)', 'шт.', 7, NULL, NULL, 'Подшипники', 600, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П709', 'Подшипник 6209 2Z (FAG)', 'шт.', 5, NULL, NULL, 'Подшипники', 500, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П710', 'Подшипник 6209 2Z (SKF)', 'шт.', 1, NULL, NULL, 'Подшипники', 500, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П711', 'Подшипник 6210 2RS (SKF)', 'шт.', 5, NULL, NULL, 'Подшипники', 640, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П712', 'Подшипник 6210 2Z /SKF/', 'шт.', 9, NULL, NULL, 'Подшипники', 590, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П713', 'Подшипник 6211 2RS1 /SKF/', 'шт.', 8, NULL, NULL, 'Подшипники', 780, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П714', 'Подшипник 6211 2Z /SKF/', 'шт.', 7, NULL, NULL, 'Подшипники', 720, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П715', 'Подшипник 6212  ZZ /FAG/', 'шт.', 2, NULL, NULL, 'Подшипники', 850, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П716', 'Подшипник 6212 2RS1 /SKF/', 'шт.', 1, NULL, NULL, 'Подшипники', 890, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П717', 'Подшипник 6212 2RS1NR /SKF/', 'шт.', 2, NULL, NULL, 'Подшипники', 940, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П718', 'Подшипник 6218  /KOYO/', 'шт.', 1, NULL, NULL, 'Подшипники', 1200, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П719', 'Подшипник 62200 2RS /SKF/', 'шт.', 2, NULL, NULL, 'Подшипники', 230, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П720', 'Подшипник 62201 2RS1 (SKF)', 'шт.', 1, NULL, NULL, 'Подшипники', 250, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П721', 'Подшипник 62201 2RS1 /SKF/', 'шт.', 9, NULL, NULL, 'Подшипники', 280, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П722', 'Подшипник 62202 2RS1 (SKF)', 'шт.', 7, NULL, NULL, 'Подшипники', 350, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П723', 'Подшипник 62203 2RS1 /SKF/', 'шт.', 5, NULL, NULL, 'Подшипники', 300, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П724', 'Подшипник 62204 2RS1 (SKF)', 'шт.', 2, NULL, NULL, 'Подшипники', 360, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П725', 'Подшипник 62205 2RS1 (SKF)', 'шт.', 6, NULL, NULL, 'Подшипники', 440, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П726', 'Подшипник 62206- 2RS', 'шт.', 2, NULL, NULL, 'Подшипники', 500, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П727', 'Подшипник 62208 2RS', 'шт.', 7, NULL, NULL, 'Подшипники', 820, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П728', 'Подшипник 62209 2RS1 (SKF)', 'шт.', 2, NULL, NULL, 'Подшипники', 1100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П729', 'Подшипник 623 2Z /SKF/', 'шт.', 8, NULL, NULL, 'Подшипники', 130, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П730', 'Подшипник 62302 RSR /FAG/', 'шт.', 11, NULL, NULL, 'Подшипники', 380, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П731', 'Подшипник 62303 RSR /FAG/', 'шт.', 2, NULL, NULL, 'Подшипники', 460, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П732', 'Подшипник 62303 RSR /SKF/', 'шт.', 10, NULL, NULL, 'Подшипники', 460, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П733', 'Подшипник 62304 2RS1 (SKF)', 'шт.', 2, NULL, NULL, 'Подшипники', 570, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П734', 'Подшипник 62304 2RS1 (SKF)', 'шт.', 1, NULL, NULL, 'Подшипники', 430, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П735', 'Подшипник 62305 2RS1 (SKF)', 'шт.', 4, NULL, NULL, 'Подшипники', 620, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П736', 'Подшипник 625-2Z  /SKF/', 'шт.', 10, NULL, NULL, 'Подшипники', 80, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П737', 'Подшипник 627 2Z /SKF/', 'шт.', 17, NULL, NULL, 'Подшипники', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П738', 'Подшипник 629 2RSH (SKF)', 'шт.', 15, NULL, NULL, 'Подшипники', 120, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П739', 'Подшипник 629 2Z /SKF/', 'шт.', 1, NULL, NULL, 'Подшипники', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П740', 'Подшипник 63/22 (22*56*16) /KOYO/', 'шт.', 4, NULL, NULL, 'Подшипники', 400, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П741', 'Подшипник 63/28 2RS  /KOYO/', 'шт.', 20, NULL, NULL, 'Подшипники', 720, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П742', 'Подшипник 63/28 NR (28*68*18) /KOYO/', 'шт.', 8, NULL, NULL, 'Подшипники', 600, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П743', 'Подшипник 63/28 NR (28*68*18) /*KOYO/', 'шт.', 4, NULL, NULL, 'Подшипники', 620, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П744', 'Подшипник 63/32 -2S (32*75*20)/KOYO/', 'шт.', 2, NULL, NULL, 'Подшипники', 740, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П745', 'Подшипник 6300 2 Z(SKF)', 'шт.', 10, NULL, NULL, 'Подшипники', 130, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П746', 'Подшипник 6300 2RSH (SKF)', 'шт.', 15, NULL, NULL, 'Подшипники', 160, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П747', 'Подшипник 63001 2RS /FAG/', 'шт.', 5, NULL, NULL, 'Подшипники', 320, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П748', 'Подшипник 63001 2RS /SKF/', 'шт.', 1, NULL, NULL, 'Подшипники', 320, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П749', 'Подшипник 63002 2RSR /FAG/', 'шт.', 2, NULL, NULL, 'Подшипники', 350, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П750', 'Подшипник 63003 2RS (FAG)', 'шт.', 2, NULL, NULL, 'Подшипники', 330, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П751', 'Подшипник 63004 2RS /SKF/', 'шт.', 3, NULL, NULL, 'Подшипники', 460, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П752', 'Подшипник 63005 2RS /SKF/', 'шт.', 2, NULL, NULL, 'Подшипники', 420, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П753', 'Подшипник 63006 2RS CX', 'шт.', 4, NULL, NULL, 'Подшипники', 150, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П754', 'Подшипник 63006 2RS /SKF/', 'шт.', 1, NULL, NULL, 'Подшипники', 650, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П755', 'Подшипник 63007 2RS /SKF/', 'шт.', 3, NULL, NULL, 'Подшипники', 650, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П756', 'Подшипник 63008 2RS /SKF/', 'шт.', 1, NULL, NULL, 'Подшипники', 700, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П757', 'Подшипник 63009 2RS /SKF/', 'шт.', 2, NULL, NULL, 'Подшипники', 1200, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П758', 'Подшипник 6301 2RSH /SKF/', 'шт.', 10, NULL, NULL, 'Подшипники', 16, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П759', 'Подшипник 6301 2Z (SKF)', 'шт.', 11, NULL, NULL, 'Подшипники', 150, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П760', 'Подшипник 6302 2RS /FAG/', 'шт.', 1, NULL, NULL, 'Подшипники', 200, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П761', 'Подшипник 6302 2RSH /SKF/', 'шт.', 22, NULL, NULL, 'Подшипники', 200, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П762', 'Подшипник 6302 2Z', 'шт.', 11, NULL, NULL, 'Подшипники', 180, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П763', 'Подшипник 6303 2RSH (FAG)', 'шт.', 1, NULL, NULL, 'Подшипники', 200, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П764', 'Подшипник 6303 2RSH (SKF)', 'шт.', 15, NULL, NULL, 'Подшипники', 210, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П765', 'Подшипник 6303 2Z(SKF)', 'шт.', 20, NULL, NULL, 'Подшипники', 190, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П766', 'Подшипник 6304 2RS1 (SKF)', 'шт.', 5, NULL, NULL, 'Подшипники', 240, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П767', 'Подшипник 6304 2Z /SKF/', 'шт.', 11, NULL, NULL, 'Подшипники', 210, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П768', 'Подшипник 6304 TN9 /SKF/', 'шт.', 4, NULL, NULL, 'Подшипники', 430, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П769', 'Подшипник 6304 ZZ /SKF/', 'шт.', 1, NULL, NULL, 'Подшипники', 210, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П770', 'Подшипник 6305 2RS1 /FAG/', 'шт.', 1, NULL, NULL, 'Подшипники', 300, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П771', 'Подшипник 6305 2RS1 /SKF/', 'шт.', 9, NULL, NULL, 'Подшипники', 300, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П772', 'Подшипник 6305 2Z /SKF/', 'шт.', 4, NULL, NULL, 'Подшипники', 260, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('п773', 'Подшипник 6305 2Z /C3 /SKF/', 'шт.', 10, NULL, NULL, 'подшипники', 260, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П774', 'Подшипник 6305 NR/C3 NSK', 'шт.', 9, NULL, NULL, 'Подшипники', 370, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П775', 'Подшипник 6306 2ZR (SKF)', 'шт.', 9, NULL, NULL, 'Подшипники', 280, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П776', 'Подшипник 6307 2RS1 /FAG/', 'шт.', 1, NULL, NULL, 'Подшипники', 550, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П777', 'Подшипник 6307 2RS1 /IBC/', 'шт.', 10, NULL, NULL, 'Подшипники', 500, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П778', 'Подшипник 6307 2Z /FAG/', 'шт.', 4, NULL, NULL, 'Подшипники', 440, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П779', 'Подшипник 6307 2Z /SKF/', 'шт.', 3, NULL, NULL, 'Подшипники', 440, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П780', 'Подшипник 6308 2Z (SKF)', 'шт.', 10, NULL, NULL, 'Подшипники', 650, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П781', 'Подшипник 6309 2RS /SKF/', 'шт.', 6, NULL, NULL, 'Подшипники', 930, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П782', 'Подшипник 6309 2RS /SKF/', 'шт.', 2, NULL, NULL, 'Подшипники', 960, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П783', 'Подшипник 6311 2RS1/SKF/', 'шт.', 1, NULL, NULL, 'Подшипники', 1500, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П784', 'Подшипник 6312 2Z /IBC /', 'шт.', 5, NULL, NULL, 'Подшипники', 1500, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П785', 'Подшипник 6314 2RS /SKF/', 'шт.', 2, NULL, NULL, 'Подшипники', 2700, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П786', 'Подшипник 6314 2Z', 'шт.', 1, NULL, NULL, 'Пдшипники', 2500, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П787', 'Подшипник 6580/6535 TIMKEN', 'шт.', 1, NULL, NULL, 'Подшипники', 5000, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П788', 'Подшипник 663 TIMKEN', 'шт.', 2, NULL, NULL, 'Подшипники', 2000, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П789', 'Подшипник 663/653 TIMKEN', 'шт.', 2, NULL, NULL, 'Подшипники', 3000, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П790', 'Подшипник 683 ZZ', 'шт.', 19, NULL, NULL, 'Подшипники', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П791', 'Подшипник 686 ZZ', 'шт.', 1, NULL, NULL, 'Подшипники', 100, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П792', 'Подшипник 686 ZZ', 'шт.', 16, NULL, NULL, 'Подшипники', 105, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П793', 'Подшипник 687 ZZ', 'шт.', 21, NULL, NULL, 'Подшипники', 50, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П794', 'Подшипник 694 ZZ', 'шт.', 7, NULL, NULL, 'Подшипники', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П795', 'Подшипник 7007', 'шт.', 1, NULL, NULL, 'Подшипники', 5400, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П796', 'Подшипник 7009 RHP', 'шт.', 1, NULL, NULL, 'Подшипники', 11200, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П797', 'Подшипник 7204 BEP', 'шт.', 2, NULL, NULL, 'Подшипники', 1800, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П798', 'Подшипник 7305 ВЕР /SKF/', 'шт.', 2, NULL, NULL, 'Подшипники', 710, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П799', 'Подшипник 7307 BEGAP /SKF/', 'шт.', 4, NULL, NULL, 'Подшипники', 1000, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П800', 'Подшипник 7309 ВЕСВР /SKF/', 'шт.', 4, NULL, NULL, 'Подшипники', 1780, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П801', 'Подшипник 7312', 'шт.', 3, NULL, NULL, 'Подшипники', 3000, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П802', 'Подшипник 7312 Е', 'шт.', 1, NULL, NULL, 'Подшипники', 2400, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П803', 'Подшипник 7315 BMP /FAG/', 'шт.', 1, NULL, NULL, 'Подшипники', 4500, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П804', 'Подшипник 780204 SA', 'шт.', 2, NULL, NULL, 'Подшипники', 110, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П805', 'Подшипник 780205 SA', 'шт.', 2, NULL, NULL, 'Подшипники', 120, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П806', 'Подшипник 780207 SA', 'шт.', 2, NULL, NULL, 'Подшипники', 140, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П807', 'Подшипник 81103 /SKF/', 'шт.', 2, NULL, NULL, 'Подшипники', 580, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П808', 'Подшипник 81105 TN/SKF/', 'шт.', 4, NULL, NULL, 'Подшипники', 760, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('П809', 'Подшипник 81106 /SKF/', 'шт.', 2, NULL, NULL, 'Подшипники', 720, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш810', 'Шайба стопорная V  4.3', 'шт.', 3952, NULL, NULL, 'Шайба стопорная', 0.3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш811', 'Шайба стопорная V  5,3', 'шт.', 2470, NULL, NULL, 'Шайба стопорная', 0.3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш812', 'Шайба стопорная V  6,4', 'шт.', 913, NULL, NULL, 'Шайба стопорная', 0.5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш813', 'Шайба стопорная V  8,2', 'шт.', 444, NULL, NULL, 'Шайба стопорная', 1, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш814', 'Шайба стопорная А  4,3', 'шт.', 3830, NULL, NULL, 'Шайба стопорная', 0.2, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш815', 'Шайба стопорная А  6,4', 'шт.', 1555, NULL, NULL, 'Шайба стопорная', 0.3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш816', 'Шайба стопорная А  8,2', 'шт.', 814, NULL, NULL, 'Шайба стопорная', 0.5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш817', 'Шайба стопорная НД  4', 'шт.', 1942, NULL, NULL, 'Шайба стопорная', 0.3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш818', 'Шайба стопорная НД  6', 'шт.', 2092, NULL, NULL, 'Шайба стопорная', 0.3, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш819', 'Шайба стопорная НД  8', 'шт.', 1335, NULL, NULL, 'Шайба стопорная', 0.5, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш820', 'Шайба стопорная НД 10', 'шт.', 533, NULL, NULL, 'Шайба стопорная', 1, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш821', 'Шайба стопорная НД 15', 'шт.', 500, NULL, NULL, 'Шайба стопорная', 4, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш822', 'Шайба стопорная НД 19', 'шт.', 23, NULL, NULL, 'Шайба стопорная', 7, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш823', 'Шайба стопорная НД 24 DIN 6799', 'шт.', 587, NULL, NULL, 'Шайба стопорная', 30, 0) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б824', 'Болт М10х20ц', 'кг', 1, NULL, NULL, 'Болт', 60, 0.018000000000000002) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б825', 'Болт М10х30ц', 'кг', 2, NULL, NULL, 'Болт', 60, 0.0125) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б826', 'Болт М10х35ц', 'кг', 1, NULL, NULL, 'Болт', 60, 0.24650000000000002) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б827', 'Болт М10х40ц', 'кг', 2, NULL, NULL, 'Болт', 60, 0.3243) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б828', 'Болт М10х45ц', 'кг', 1, NULL, NULL, 'Болт', 60, 0.052199999999999996) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б829', 'Болт М10х50ц', 'кг', 9, NULL, NULL, 'Болт', 60, 0.3578) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б830', 'Болт М10х55ч', 'кг', 7, NULL, NULL, 'Болт', 60, 0.25) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б831', 'Болт М10х55ц', 'Кг', 5, NULL, NULL, 'болт', 60, 0.028999999999999998) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б832', 'Болт М10х60ц', 'кг', 2, NULL, NULL, 'Болт', 60, 0.3107) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б833', 'Болт М10х65ц', 'кг', 6, NULL, NULL, 'Болт', 60, 0.2445) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б834', 'Болт М10х70ц', 'кг', 2, NULL, NULL, 'Болт', 60, 0.0416) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б835', 'Болт М10х80ц', 'кг', 7, NULL, NULL, 'Болт', 60, 0.0493) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б836', 'Болт М10х90ц', 'кг', 2, NULL, NULL, 'Болт', 60, 0.16) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б837', 'Болт М12х25ч', 'кг', 8, NULL, NULL, 'Болт', 60, 0.2122) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б838', 'Болт М12х30ц', 'кг', 11, NULL, NULL, 'Болт', 60, 0.612) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б839', 'Болт М12х40ц', 'кг', 2, NULL, NULL, 'Болт', 60, 0.09759999999999999) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б840', 'Болт М12х45ц', 'кг', 10, NULL, NULL, 'Болт', 60, 0.1489) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б841', 'Болт М12х50ч', 'кг', 2, NULL, NULL, 'Болт', 60, 0.491) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б842', 'Болт М12х50ц', 'кг', 1, NULL, NULL, 'Болт', 60, 1.6475999999999997) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б843', 'Болт М12х55ц', 'кг', 4, NULL, NULL, 'Болт', 60, 0.9985) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б844', 'Болт М12х60ц', 'кг', 10, NULL, NULL, 'Болт', 60, 0.6487999999999999) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б845', 'Болт М12х65ц', 'кг', 17, NULL, NULL, 'Болт', 60, 0.57) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б846', 'Болт М12х70ц', 'кг', 15, NULL, NULL, 'Болт', 60, 0.287) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б847', 'Болт М12х80ц', 'кг', 1, NULL, NULL, 'Болт', 60, 0.215) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б848', 'Болт М12х90ц', 'кг', 4, NULL, NULL, 'Болт', 60, 0.8445) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б849', 'Болт М12х110ц', 'кг', 20, NULL, NULL, 'Болт', 60, 0.1305) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б850', 'Болт М12х120ц', 'кг', 8, NULL, NULL, 'Болт', 60, 0.0556) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б851', 'Болт М16х30ц', 'кг', 4, NULL, NULL, 'Болт', 60, 0.24) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б852', 'Болт М16х30ц', 'кг', 2, NULL, NULL, 'Болт', 60, 0.0225) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б853', 'Болт М16х35ч', 'кг', 10, NULL, NULL, 'Болт', 60, 0.243) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б854', 'Болт М16х45ц', 'кг', 15, NULL, NULL, 'Болт', 60, 0.0567) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б855', 'Болт М16х50ц', 'кг', 5, NULL, NULL, 'Болт', 60, 0.54) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б856', 'Болт М16х55ц', 'кг', 1, NULL, NULL, 'Болт', 60, 0.185) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б857', 'Болт М16х65ц', 'кг', 2, NULL, NULL, 'Болт', 60, 0.8661) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б858', 'Болт М16х70ц', 'кг', 2, NULL, NULL, 'Болт', 60, 0.33599999999999997) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б859', 'Болт М16х80ц', 'кг', 3, NULL, NULL, 'Болт', 60, 0.264) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б860', 'Болт М16х90ц', 'кг', 2, NULL, NULL, 'Болт', 60, 0.3105) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б861', 'Болт М16х100ц', 'кг', 4, NULL, NULL, 'Болт', 60, 0.15) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б862', 'Болт М16х110ц', 'кг', 1, NULL, NULL, 'Болт', 60, 0.13) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б863', 'Болт М16х120ц', 'кг', 3, NULL, NULL, 'Болт', 60, 0.188) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б864', 'Болт М16х180ц', 'кг', 1, NULL, NULL, 'Болт', 60, 0.078) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б865', 'Болт М20х65ц', 'кг', 2, NULL, NULL, 'Болт', 60, 0.127) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б866', 'Болт М20х80ц', 'кг', 10, NULL, NULL, 'Болт', 60, 0.08449999999999999) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б867', 'Болт М20х90ч', 'кг', 11, NULL, NULL, 'Болт', 60, 0.166) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б868', 'Болт М20х100ч', 'кг', 1, NULL, NULL, 'Болт', 60, 0.19399999999999998) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б869', 'Болт М20х110ч', 'кг', 22, NULL, NULL, 'Болт', 60, 0.26899999999999996) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б870', 'Болт М20х140ц', 'кг', 11, NULL, NULL, 'Болт', 60, 0.011699999999999999) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б871', 'Болт М20х180ц', 'кг', 1, NULL, NULL, 'Болт', 60, 0.0125) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б872', 'Болт М24х90ч', 'кг', 15, NULL, NULL, 'Болт', 60, 0.25) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Б873', 'Болт М24х100ч', 'кг', 20, NULL, NULL, 'Болт', 60, 0.233) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Г874', 'Гайка М6ц', 'кг', 5, NULL, NULL, 'Гайка', 60, 0.018699999999999998) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Г875', 'Гайка М8ц', 'кг', 11, NULL, NULL, 'Гайка', 60, 0.022) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Г876', 'Гайка М20ц', 'кг', 9, NULL, NULL, 'Гайка', 60, 0.14317) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Г877', 'Гайка М20ч', 'кг', 7, NULL, NULL, 'Гайка', 60, 0.0492) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Г878', 'Гайка М30ч', 'кг', 5, NULL, NULL, 'Гайка', 60, 0.0476) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Г879', 'Гайка М45ч', 'кг', 2, NULL, NULL, 'Гайка', 60, 0.0245) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш880', 'Шайба М8ц', 'кг', 6, NULL, NULL, 'Шайба', 60, 0.018) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш881', 'Шайба М10ц', 'кг', 2, NULL, NULL, 'Шайба', 60, 0.00497) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш882', 'Шайба М12ц', 'кг', 7, NULL, NULL, 'Шайба', 60, 0.027) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш883', 'Шайба М16ц', 'кг', 2, NULL, NULL, 'Шайба', 60, 0.0254) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Ш884', 'Шайба М30ц', 'кг', 8, NULL, NULL, 'Шайба', 60, 0.0040999999999999995) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Г885', 'Гровер М20ц', 'кг', 11, NULL, NULL, 'Гровер', 60, 0.019899999999999998) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('Г886', 'Гровер М28ц', 'кг', 2, NULL, NULL, 'Гровер', 60, 0.00046) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б887', 'Болт М6х20', 'шт', 10, NULL, NULL, 'болт', 1.3484, 0.006742) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б888', 'Болт М6х25', 'шт', 2, NULL, NULL, 'болт', 1.5741999999999998, 0.007871) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б889', 'Болт М6х30', 'шт', 1, NULL, NULL, 'болт', 1.7961999999999998, 0.008981) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б890', 'Болт М6х40', 'шт', 1555, NULL, NULL, 'болт', 2.2399999999999998, 0.0112) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б891', 'Болт М8х20', 'шт', 814, NULL, NULL, 'болт', 2.3436, 0.01302) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б892', 'Болт М8х25', 'шт', 1942, NULL, NULL, 'болт', 2.6712000000000002, 0.01484) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б893', 'Болт М8х30', 'шт', 2092, NULL, NULL, 'болт', 3.0816, 0.01712) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б894', 'Болт М8х40', 'шт', 1335, NULL, NULL, 'болт', 3.7925999999999997, 0.02107) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б895', 'Болт М10х25', 'шт', 533, NULL, NULL, 'болт', 4.5396, 0.02522) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б896', 'Болт М10х35', 'шт', 500, NULL, NULL, 'болт', 5.630400000000001, 0.03128) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б897', 'Болт М10х80', 'шт', 23, NULL, NULL, 'болт', 10.08, 0.056) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б898', 'Болт М12х40', 'шт', 461, NULL, NULL, 'болт', 6.9692, 0.04978) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б899', 'Болт М12х60', 'шт', 61, NULL, NULL, 'болт', 9.457, 0.06755) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б900', 'Болт М12х80', 'шт', 786, NULL, NULL, 'болт', 11.946200000000001, 0.08533) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б901', 'Болт М16х40', 'шт', 452, NULL, NULL, 'болт', 13.718599999999999, 0.09799) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б902', 'Болт М16х60', 'шт', 24, NULL, NULL, 'болт', 18.116, 0.1294) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б903', 'Болт М16х80', 'шт', 4521, NULL, NULL, 'болт', 22.54, 0.161) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б904', 'Болт М20х80', 'шт', 54, NULL, NULL, 'болт', 25.919999999999998, 0.216) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б905', 'Болт М20х80', 'шт', 524, NULL, NULL, 'болт', 31.8, 0.265) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б906', 'Болт М20х100', 'шт', 4, NULL, NULL, 'болт', 37.763999999999996, 0.3147) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б907', 'Болт М24х60', 'шт', 241, NULL, NULL, 'болт', 39.588, 0.3299) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б908', 'Болт М24х80', 'шт', 24, NULL, NULL, 'болт', 48.252, 0.4021) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б909', 'Болт М24х100', 'шт', 4, NULL, NULL, 'болт', 56.784, 0.4732) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б910', 'Болт М30х60', 'шт', 25, NULL, NULL, 'болт', 69.47999999999999, 0.579) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б911', 'Болт М30х80', 'шт', 789, NULL, NULL, 'болт', 82.5, 0.6875) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('б912', 'Болт М30х100', 'шт', 898, NULL, NULL, 'болт', 95.82, 0.7985) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('г913', 'Гайка М6', 'шт', 57, NULL, NULL, 'гайка', 1.0575, 0.00235) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('г914', 'Гайка М8', 'шт', 85, NULL, NULL, 'гайка', 2.1374999999999997, 0.00475) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('г915', 'Гайка М10', 'шт', 587, NULL, NULL, 'гайка', 3.18, 0.0106) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('г916', 'Гайка М12', 'шт', 4894, NULL, NULL, 'гайка', 4.025, 0.0161) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('г917', 'Гайка М16', 'шт', 86, NULL, NULL, 'гайка', 9.4025, 0.03761) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('г918', 'Гайка М20', 'шт', 684, NULL, NULL, 'гайка', 14.288, 0.07144) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('г919', 'Гайка М24', 'шт', 64, NULL, NULL, 'гайка', 18.4305, 0.12287) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('г920', 'Гайка М27', 'шт', 65, NULL, NULL, 'гайка', 29.7976, 0.17528) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('г921', 'Гайка М30', 'шт', 5, NULL, NULL, 'гайка', 36.381, 0.24254) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш922', 'Шайба 6', 'шт', 15, NULL, NULL, 'шайба', 0.4572, 0.001016) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш923', 'Шайба 8', 'шт', 16, NULL, NULL, 'шайба', 0.8226, 0.001828) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш924', 'Шайба 10', 'шт', 369, NULL, NULL, 'шайба', 1.24985, 0.003571) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш925', 'Шайба 12', 'шт', 15, NULL, NULL, 'шайба', 2.1945, 0.00627) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш926', 'Шайба 16', 'шт', 65, NULL, NULL, 'шайба', 2.82375, 0.011295) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш927', 'Шайба 20', 'шт', 8754, NULL, NULL, 'шайба', 4.289000000000001, 0.017156) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш928', 'Шайба 24', 'шт', 5, NULL, NULL, 'шайба', 8.078750000000001, 0.032315) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш929', 'Шайба 30', 'шт', 452, NULL, NULL, 'шайба', 13.403, 0.053612) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш930', 'Шайба 6.65г', 'шт', 52, NULL, NULL, 'шайба', 0.2632, 0.000376) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш931', 'Шайба 8.65г', 'шт', 789, NULL, NULL, 'шайба', 0.7238, 0.001034) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш932', 'Шайба 10.65г', 'шт', 5243, NULL, NULL, 'шайба', 1.407, 0.00201) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш933', 'Шайба 12.65г', 'шт', 996, NULL, NULL, 'шайба', 2.415, 0.00345) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш934', 'Шайба 14.65г', 'шт', 71, NULL, NULL, 'шайба', 2.6879999999999997, 0.00448) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш935', 'Шайба 16.65г', 'шт', 745, NULL, NULL, 'шайба', 3.6504, 0.006084) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш936', 'Шайба 18.65г', 'шт', 687, NULL, NULL, 'шайба', 5.3759999999999994, 0.00896) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш937', 'Шайба 20.65г', 'шт', 117, NULL, NULL, 'шайба', 5.7105, 0.01269) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш938', 'Шайба 22.65г', 'шт', 76, NULL, NULL, 'шайба', 6.8839999999999995, 0.01721) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш939', 'Шайба 24.65г', 'шт', 6969, NULL, NULL, 'шайба', 9.072, 0.02268) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш940', 'Шайба 27.65г', 'шт', 35, NULL, NULL, 'шайба', 12.04, 0.0301) ON CONFLICT ("Article") DO NOTHING;
INSERT INTO "Component" ("Article","ComponentName","UnitName","QuantityInStock","IdSupplier","Image","ComponentType","PurchasePrice","WeightValue") VALUES ('ш941', 'Шайба 30.65г', 'шт', 21, NULL, NULL, 'шайба', 15.620000000000001, 0.03905) ON CONFLICT ("Article") DO NOTHING;

COMMIT;