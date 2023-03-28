CREATE TABLE cars
(
    id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    make VARCHAR(255),
    model VARCHAR(255),
    year INT,
    price DECIMAL(10,2),
    quantity INT
);

CREATE TABLE customers
(
    id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    address VARCHAR(255),
    phone VARCHAR(255)
);

CREATE TABLE sales
(
    id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    customer_id INT,
    car_id INT,
    price DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (car_id) REFERENCES cars(id)
);

create table Users
(
    id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    login VARCHAR(50),
    password VARCHAR(70),
    role VARCHAR(50),
);

insert into cars
    (make, model, year, price, quantity)
values
    ('Oldsmobile', 'Alero', 2000, 68708.99, 38);
insert into cars
    (make, model, year, price, quantity)
values
    ('Dodge', 'Avenger', 2012, 77636.68, 11);
insert into cars
    (make, model, year, price, quantity)
values
    ('Chevrolet', 'Corsica', 1995, 39616.57, 13);
insert into cars
    (make, model, year, price, quantity)
values
    ('Buick', 'Riviera', 1998, 68395.04, 76);
insert into cars
    (make, model, year, price, quantity)
values
    ('Ford', 'Focus', 2006, 99154.98, 84);
insert into cars
    (make, model, year, price, quantity)
values
    ('Mercedes-Benz', 'SL-Class', 1996, 96228.11, 14);
insert into cars
    (make, model, year, price, quantity)
values
    ('Ford', 'Contour', 1997, 95891.77, 39);
insert into cars
    (make, model, year, price, quantity)
values
    ('Toyota', 'Solara', 2008, 87460.51, 51);
insert into cars
    (make, model, year, price, quantity)
values
    ('Chevrolet', 'HHR', 2007, 47454.66, 53);
insert into cars
    (make, model, year, price, quantity)
values
    ('Mercury', 'Grand Marquis', 1999, 63950.39, 35);
insert into cars
    (make, model, year, price, quantity)
values
    ('Ford', 'Aerostar', 1991, 85864.24, 88);
insert into cars
    (make, model, year, price, quantity)
values
    ('Toyota', 'T100 Xtra', 1996, 67264.04, 15);
insert into cars
    (make, model, year, price, quantity)
values
    ('Honda', 'Civic', 2006, 54394.5, 68);
insert into cars
    (make, model, year, price, quantity)
values
    ('Saab', '9000', 1989, 59843.08, 54);
insert into cars
    (make, model, year, price, quantity)
values
    ('Mitsubishi', 'Diamante', 1996, 69973.04, 4);
insert into cars
    (make, model, year, price, quantity)
values
    ('Chrysler', '300', 1999, 31231.22, 7);
insert into cars
    (make, model, year, price, quantity)
values
    ('Ford', 'Econoline E350', 1995, 57386.72, 23);
insert into cars
    (make, model, year, price, quantity)
values
    ('Kia', 'Sedona', 2004, 74263.37, 22);
insert into cars
    (make, model, year, price, quantity)
values
    ('Mitsubishi', 'Outlander', 2010, 44482.03, 53);
insert into cars
    (make, model, year, price, quantity)
values
    ('GMC', 'Sonoma Club Coupe', 1995, 67506.64, 40);
insert into cars
    (make, model, year, price, quantity)
values
    ('Ford', 'Courier', 1986, 61379.24, 79);
insert into cars
    (make, model, year, price, quantity)
values
    ('Suzuki', 'Forenza', 2005, 43158.35, 16);
insert into cars
    (make, model, year, price, quantity)
values
    ('Mazda', 'Mazda5', 2009, 60702.32, 61);
insert into cars
    (make, model, year, price, quantity)
values
    ('Ford', 'E-Series', 2006, 56074.52, 14);
insert into cars
    (make, model, year, price, quantity)
values
    ('Toyota', 'Tundra', 2002, 43733.23, 87);
insert into cars
    (make, model, year, price, quantity)
values
    ('Toyota', '4Runner', 2009, 61524.94, 89);
insert into cars
    (make, model, year, price, quantity)
values
    ('Ford', 'Expedition', 2005, 75377.37, 97);
insert into cars
    (make, model, year, price, quantity)
values
    ('Jeep', 'Commander', 2010, 59186.14, 34);
insert into cars
    (make, model, year, price, quantity)
values
    ('Ford', 'Explorer Sport Trac', 2006, 36119.06, 13);
insert into cars
    (make, model, year, price, quantity)
values
    ('Dodge', 'Ram 3500', 2009, 82421.27, 18);
insert into cars
    (make, model, year, price, quantity)
values
    ('Toyota', 'Sequoia', 2011, 60931.51, 100);
insert into cars
    (make, model, year, price, quantity)
values
    ('GMC', 'Sierra 3500', 2004, 75173.0, 92);
insert into cars
    (make, model, year, price, quantity)
values
    ('Dodge', 'Dakota Club', 2005, 56817.18, 34);
insert into cars
    (make, model, year, price, quantity)
values
    ('Toyota', 'Highlander', 2012, 84750.36, 96);
insert into cars
    (make, model, year, price, quantity)
values
    ('Chevrolet', 'Express 3500', 2007, 65282.21, 99);
insert into cars
    (make, model, year, price, quantity)
values
    ('Aston Martin', 'Vantage', 2009, 58670.08, 44);
insert into cars
    (make, model, year, price, quantity)
values
    ('Ford', 'Tempo', 1994, 36889.74, 73);
insert into cars
    (make, model, year, price, quantity)
values
    ('Chevrolet', 'Malibu', 2013, 80240.39, 2);
insert into cars
    (make, model, year, price, quantity)
values
    ('BMW', 'X6 M', 2012, 74537.21, 25);
insert into cars
    (make, model, year, price, quantity)
values
    ('Infiniti', 'J', 1994, 94827.95, 9);
insert into cars
    (make, model, year, price, quantity)
values
    ('BMW', '3 Series', 2001, 93827.3, 29);
insert into cars
    (make, model, year, price, quantity)
values
    ('Mercedes-Benz', 'E-Class', 2001, 40683.78, 74);
insert into cars
    (make, model, year, price, quantity)
values
    ('Chevrolet', 'Astro', 1994, 84813.76, 81);
insert into cars
    (make, model, year, price, quantity)
values
    ('Acura', 'Integra', 1988, 99025.04, 39);
insert into cars
    (make, model, year, price, quantity)
values
    ('Chevrolet', 'HHR', 2007, 60821.64, 38);
insert into cars
    (make, model, year, price, quantity)
values
    ('GMC', '2500 Club Coupe', 1992, 31908.46, 26);
insert into cars
    (make, model, year, price, quantity)
values
    ('GMC', 'Yukon XL 2500', 2013, 57312.37, 11);
insert into cars
    (make, model, year, price, quantity)
values
    ('GMC', '2500 Club Coupe', 1992, 34197.09, 41);
insert into cars
    (make, model, year, price, quantity)
values
    ('Ford', 'Fairlane', 1965, 66073.38, 26);
insert into cars
    (make, model, year, price, quantity)
values
    ('Chevrolet', 'Malibu', 1997, 75765.07, 98);
insert into cars
    (make, model, year, price, quantity)
values
    ('Mercury', 'Cougar', 2001, 51744.21, 14);
insert into cars
    (make, model, year, price, quantity)
values
    ('Toyota', 'Corolla', 2005, 65556.4, 44);
insert into cars
    (make, model, year, price, quantity)
values
    ('Buick', 'LeSabre', 1998, 74380.84, 79);
insert into cars
    (make, model, year, price, quantity)
values
    ('GMC', 'Suburban 2500', 1996, 83997.85, 84);
insert into cars
    (make, model, year, price, quantity)
values
    ('Chevrolet', 'Suburban 1500', 1996, 80664.3, 3);
insert into cars
    (make, model, year, price, quantity)
values
    ('Chevrolet', 'Avalanche 2500', 2006, 99332.9, 44);
insert into cars
    (make, model, year, price, quantity)
values
    ('Cadillac', 'DeVille', 1993, 71854.05, 6);
insert into cars
    (make, model, year, price, quantity)
values
    ('Toyota', 'Prius', 2004, 80816.88, 55);
insert into cars
    (make, model, year, price, quantity)
values
    ('Mercury', 'Monterey', 2005, 43208.92, 98);
insert into cars
    (make, model, year, price, quantity)
values
    ('Toyota', 'TundraMax', 2009, 56105.86, 6);
insert into cars
    (make, model, year, price, quantity)
values
    ('Honda', 'CR-X', 1984, 44173.67, 66);
insert into cars
    (make, model, year, price, quantity)
values
    ('Nissan', 'Frontier', 2005, 30076.04, 95);
insert into cars
    (make, model, year, price, quantity)
values
    ('Volvo', 'S40', 2001, 57690.71, 90);
insert into cars
    (make, model, year, price, quantity)
values
    ('Buick', 'Skylark', 1990, 79892.07, 2);
insert into cars
    (make, model, year, price, quantity)
values
    ('GMC', 'EV1', 1999, 38478.42, 26);
insert into cars
    (make, model, year, price, quantity)
values
    ('BMW', '7 Series', 2007, 70308.9, 13);
insert into cars
    (make, model, year, price, quantity)
values
    ('GMC', 'Sierra 1500', 2004, 81427.93, 2);
insert into cars
    (make, model, year, price, quantity)
values
    ('Ford', 'Explorer', 2001, 38479.29, 57);
insert into cars
    (make, model, year, price, quantity)
values
    ('Ford', 'Thunderbird', 1992, 66483.5, 88);
insert into cars
    (make, model, year, price, quantity)
values
    ('Acura', 'NSX', 2001, 89210.02, 19);
insert into cars
    (make, model, year, price, quantity)
values
    ('Jeep', 'Grand Cherokee', 2004, 91566.84, 45);
insert into cars
    (make, model, year, price, quantity)
values
    ('Mitsubishi', 'Endeavor', 2010, 47007.28, 53);
insert into cars
    (make, model, year, price, quantity)
values
    ('Chevrolet', 'Silverado', 2011, 54059.19, 58);
insert into cars
    (make, model, year, price, quantity)
values
    ('Dodge', 'Ram 2500', 1995, 87399.64, 98);
insert into cars
    (make, model, year, price, quantity)
values
    ('Kia', 'Sephia', 1998, 82159.15, 50);
insert into cars
    (make, model, year, price, quantity)
values
    ('Lexus', 'LX', 2013, 89280.03, 91);
insert into cars
    (make, model, year, price, quantity)
values
    ('Porsche', '928', 1990, 39451.56, 66);
insert into cars
    (make, model, year, price, quantity)
values
    ('Audi', 'A8', 2006, 31299.3, 69);
insert into cars
    (make, model, year, price, quantity)
values
    ('Subaru', 'Outback', 2009, 79947.59, 51);
insert into cars
    (make, model, year, price, quantity)
values
    ('Chevrolet', 'Tahoe', 2006, 89168.58, 28);
insert into cars
    (make, model, year, price, quantity)
values
    ('Acura', 'ZDX', 2010, 94670.49, 15);
insert into cars
    (make, model, year, price, quantity)
values
    ('Cadillac', 'Escalade EXT', 2010, 59497.84, 6);
insert into cars
    (make, model, year, price, quantity)
values
    ('Mercury', 'Villager', 1997, 98281.11, 34);
insert into cars
    (make, model, year, price, quantity)
values
    ('Lincoln', 'Navigator L', 2012, 50457.65, 98);
insert into cars
    (make, model, year, price, quantity)
values
    ('BMW', '3 Series', 2003, 63275.47, 1);
insert into cars
    (make, model, year, price, quantity)
values
    ('GMC', '3500 Club Coupe', 1992, 76373.98, 71);
insert into cars
    (make, model, year, price, quantity)
values
    ('Toyota', 'Camry', 2012, 54751.41, 17);
insert into cars
    (make, model, year, price, quantity)
values
    ('BMW', '5 Series', 1992, 44098.23, 21);
insert into cars
    (make, model, year, price, quantity)
values
    ('Volvo', 'XC90', 2013, 50469.9, 58);
insert into cars
    (make, model, year, price, quantity)
values
    ('Audi', 'S6', 2010, 78124.34, 90);
insert into cars
    (make, model, year, price, quantity)
values
    ('Saturn', 'L-Series', 2004, 58382.22, 42);
insert into cars
    (make, model, year, price, quantity)
values
    ('Ford', 'E350', 2004, 41503.7, 54);
insert into cars
    (make, model, year, price, quantity)
values
    ('Volkswagen', 'Eos', 2010, 74843.91, 40);
insert into cars
    (make, model, year, price, quantity)
values
    ('Mitsubishi', 'Eclipse', 1994, 38848.16, 99);
insert into cars
    (make, model, year, price, quantity)
values
    ('Toyota', 'Avalon', 2000, 49551.62, 62);
insert into cars
    (make, model, year, price, quantity)
values
    ('Buick', 'Century', 1996, 79897.2, 97);
insert into cars
    (make, model, year, price, quantity)
values
    ('Maybach', '62', 2011, 46736.11, 39);
insert into cars
    (make, model, year, price, quantity)
values
    ('Chevrolet', 'Monte Carlo', 2005, 47051.96, 90);
insert into cars
    (make, model, year, price, quantity)
values
    ('Porsche', '911', 2007, 84170.05, 22);
insert into cars
    (make, model, year, price, quantity)
values
    ('Eagle', 'Summit', 1995, 63152.64, 17);


insert into customers
    (first_name, last_name, address, phone)
values
    ('Jannelle', 'Doggett', '46 Buhler Place', '5237059737');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Louisette', 'Halsworth', '885 Division Center', '3357301213');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Roanna', 'Padula', '06 Village Parkway', '4497526641');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Kerby', 'Cranson', '774 Moulton Trail', '4937605713');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Lockwood', 'Schimke', '4 Bartelt Terrace', '8122618343');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Annecorinne', 'McGrotty', '16998 Barby Parkway', '8293749661');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Ilka', 'Kiehnlt', '78 Marcy Circle', '3943073580');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Austin', 'Farbrother', '4 Anthes Lane', '9465401475');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Iorgos', 'Nudde', '38 Mandrake Trail', '8033314985');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Mil', 'Challens', '3338 Gerald Hill', '9544192370');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Amelina', 'Joel', '91194 Grover Parkway', '6489660007');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Gail', 'Davers', '4 Scott Avenue', '9885454562');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Hilliary', 'Van der Son', '1 Burrows Junction', '2182428023');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Liliane', 'Bareford', '0988 Elgar Street', '6175085661');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Amelie', 'McPhilemy', '08882 Laurel Street', '1355238735');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Nathanael', 'Dilliway', '5 Hauk Trail', '1297588601');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Packston', 'Suffield', '4 Service Point', '5496102716');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Jaquelin', 'Biddiss', '62 Forster Hill', '1074957543');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Lark', 'Christensen', '2406 Hoepker Junction', '5048399577');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Wain', 'Tutton', '48 John Wall Road', '7592023212');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Shayla', 'Perrie', '3766 Tennessee Parkway', '2108060245');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Gregory', 'Heintz', '30418 Sherman Lane', '5567402487');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Timmie', 'Scolland', '63 Boyd Pass', '5849830188');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Carney', 'Jarret', '5734 Hazelcrest Place', '6629138721');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Salomi', 'Oldford', '12 Hovde Alley', '4335475945');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Agustin', 'Sprouls', '15181 Scofield Trail', '9906717324');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Maure', 'Whitebrook', '12070 Quincy Avenue', '7256727136');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Mycah', 'Medlar', '5 Leroy Junction', '4136209718');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Shayna', 'Godleman', '11 Carpenter Crossing', '6162170664');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Lenee', 'Fountian', '0 Russell Drive', '8543856702');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Amii', 'Adey', '89 Graceland Crossing', '2233151218');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Perla', 'Griswood', '3616 Calypso Parkway', '3652249566');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Gretna', 'Idell', '7 Lakewood Gardens Junction', '7817037946');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Waite', 'Buckner', '8129 Burrows Terrace', '2574156907');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Coretta', 'Geraldo', '375 Melrose Place', '6483084365');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Lawton', 'Ionesco', '73 Jackson Plaza', '4436770639');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Tore', 'Jandac', '26 Del Sol Plaza', '4941267840');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Lesli', 'Routley', '9 Darwin Trail', '9638086672');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Doris', 'Apfelmann', '63 Granby Trail', '5899119482');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Caresa', 'Streatfeild', '3 Roxbury Crossing', '4916724684');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Ermengarde', 'O'' Driscoll', '807 Novick Alley', '8085747792');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Tresa', 'Miettinen', '07735 Mendota Drive', '9426572140');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Thedric', 'Gee', '124 Marcy Terrace', '6605304237');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Kaja', 'Robertet', '942 Heath Street', '2455397054');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Nolie', 'McIlmurray', '75 Riverside Terrace', '4622497473');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Ingrid', 'Rowesby', '55282 Pleasure Way', '9944382633');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Darnell', 'Chaundy', '42704 Goodland Road', '2536484067');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Laughton', 'Grimmer', '3 Lien Place', '8551149843');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Craig', 'Ellerker', '04 West Hill', '6799445882');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Kermie', 'Slowly', '97 Merry Street', '1197785127');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Blanche', 'Santus', '5 Lukken Court', '1904566083');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Waneta', 'Penny', '8 Messerschmidt Road', '6492798657');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Leesa', 'Rendall', '50086 Rigney Junction', '1251028346');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Joelly', 'Sayward', '0642 Center Terrace', '4056005835');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Vina', 'Losebie', '10 Elka Point', '9942818273');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Carry', 'Pochon', '56 Eagan Street', '9754360347');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Rutherford', 'Westmarland', '449 Redwing Road', '4679466552');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Annetta', 'Dilon', '026 Summer Ridge Way', '3254691301');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Gabbi', 'Crennell', '986 Claremont Avenue', '2706329134');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Cal', 'McVrone', '566 Beilfuss Place', '8426989903');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Kayla', 'Whetnell', '97645 New Castle Circle', '3009116932');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Benson', 'McCafferky', '849 Eastwood Pass', '7538794263');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Sarette', 'McCreath', '461 Judy Place', '6498691877');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Vannie', 'Alton', '486 Ludington Center', '6333912358');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Alli', 'Bartelet', '76952 Sheridan Crossing', '4328327667');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Thane', 'McCome', '9 Washington Drive', '1898548486');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Geri', 'Coverley', '64011 Brown Lane', '4149255362');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Bibbie', 'Pays', '3345 Schmedeman Junction', '6872076881');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Cale', 'Flowith', '5761 Hazelcrest Avenue', '6563596696');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Ursulina', 'Bawden', '56983 Rusk Hill', '7572759898');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Gav', 'Dacke', '1144 Vermont Hill', '6681569193');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Laurie', 'Bortoli', '77499 Fair Oaks Park', '5688674787');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Roy', 'Strothers', '395 Blackbird Court', '3596125705');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Ninnetta', 'Raynham', '8 Twin Pines Street', '1166273679');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Keven', 'Jimeno', '5540 West Street', '3524249991');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Nero', 'Dominick', '618 Kinsman Crossing', '5278753990');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Benedict', 'Greenman', '803 Luster Hill', '3024067272');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Katy', 'Gobert', '51 Lake View Point', '2455556830');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Hortensia', 'Smartman', '9 Hooker Center', '2261259131');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Jeanna', 'Kempton', '1 Dunning Lane', '1454162154');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Howie', 'Barefoot', '3745 Colorado Street', '6522056613');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Henrieta', 'Canfield', '3 Crowley Point', '2706162168');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Crosby', 'Corssen', '985 Algoma Terrace', '1472302487');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Jeannine', 'Palliser', '1514 Bayside Point', '5467850698');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Alanna', 'Kerrigan', '53 Macpherson Drive', '5049584191');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Issiah', 'Hedin', '4264 Holy Cross Crossing', '2216937138');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Nobie', 'Tann', '462 Oakridge Park', '7322499373');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Bernardina', 'Buffey', '7 Cambridge Parkway', '6219845485');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Thurstan', 'Igounet', '6197 Heath Trail', '6632724802');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Waiter', 'Carus', '8478 Hansons Pass', '6354036196');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Lind', 'Keer', '33736 Rigney Center', '1999841216');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Tracie', 'Huntingdon', '59123 Maywood Alley', '3726657776');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Flossy', 'Celli', '488 Thierer Hill', '2121781138');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Woodman', 'Shee', '36037 Green Ridge Junction', '6623148216');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Wallie', 'Logan', '40089 Charing Cross Point', '4966258513');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Cello', 'Shegog', '93 Holy Cross Road', '5549894050');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Menard', 'Garvey', '0756 Petterle Circle', '1069013581');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Bell', 'Pipe', '68697 Macpherson Lane', '7061611699');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Gilberte', 'Sivier', '62 Buhler Trail', '6374202849');
insert into customers
    (first_name, last_name, address, phone)
values
    ('Llywellyn', 'Beaudry', '3 Talisman Street', '4366544426');


insert into sales
    (customer_id, car_id, price)
values
    (45, 43, 79311.33);
insert into sales
    (customer_id, car_id, price)
values
    (50, 78, 95144.98);
insert into sales
    (customer_id, car_id, price)
values
    (57, 80, 76577.96);
insert into sales
    (customer_id, car_id, price)
values
    (3, 82, 55913.35);
insert into sales
    (customer_id, car_id, price)
values
    (17, 86, 38307.18);
insert into sales
    (customer_id, car_id, price)
values
    (87, 89, 99171.11);
insert into sales
    (customer_id, car_id, price)
values
    (31, 55, 88367.17);
insert into sales
    (customer_id, car_id, price)
values
    (6, 67, 38941.02);
insert into sales
    (customer_id, car_id, price)
values
    (25, 90, 54887.75);
insert into sales
    (customer_id, car_id, price)
values
    (98, 76, 55422.16);
insert into sales
    (customer_id, car_id, price)
values
    (51, 48, 70730.05);
insert into sales
    (customer_id, car_id, price)
values
    (54, 76, 63833.78);
insert into sales
    (customer_id, car_id, price)
values
    (30, 86, 67417.79);
insert into sales
    (customer_id, car_id, price)
values
    (18, 88, 51771.22);
insert into sales
    (customer_id, car_id, price)
values
    (100, 23, 99775.12);
insert into sales
    (customer_id, car_id, price)
values
    (18, 21, 34103.44);
insert into sales
    (customer_id, car_id, price)
values
    (47, 73, 32353.49);
insert into sales
    (customer_id, car_id, price)
values
    (90, 22, 81823.82);
insert into sales
    (customer_id, car_id, price)
values
    (29, 72, 44692.01);
insert into sales
    (customer_id, car_id, price)
values
    (33, 40, 98227.29);
insert into sales
    (customer_id, car_id, price)
values
    (19, 73, 47089.61);
insert into sales
    (customer_id, car_id, price)
values
    (29, 79, 87760.65);
insert into sales
    (customer_id, car_id, price)
values
    (95, 40, 53092.18);
insert into sales
    (customer_id, car_id, price)
values
    (94, 61, 96254.74);
insert into sales
    (customer_id, car_id, price)
values
    (97, 93, 37304.51);
insert into sales
    (customer_id, car_id, price)
values
    (13, 71, 52115.51);
insert into sales
    (customer_id, car_id, price)
values
    (1, 18, 51869.14);
insert into sales
    (customer_id, car_id, price)
values
    (7, 1, 90299.41);
insert into sales
    (customer_id, car_id, price)
values
    (17, 88, 38627.07);
insert into sales
    (customer_id, car_id, price)
values
    (87, 18, 89351.03);
insert into sales
    (customer_id, car_id, price)
values
    (24, 70, 88500.0);
insert into sales
    (customer_id, car_id, price)
values
    (89, 9, 38709.73);
insert into sales
    (customer_id, car_id, price)
values
    (83, 79, 89500.72);
insert into sales
    (customer_id, car_id, price)
values
    (27, 18, 65669.13);
insert into sales
    (customer_id, car_id, price)
values
    (84, 77, 52037.53);
insert into sales
    (customer_id, car_id, price)
values
    (75, 79, 31257.9);
insert into sales
    (customer_id, car_id, price)
values
    (6, 74, 99828.28);
insert into sales
    (customer_id, car_id, price)
values
    (43, 36, 41983.67);
insert into sales
    (customer_id, car_id, price)
values
    (54, 65, 78404.41);
insert into sales
    (customer_id, car_id, price)
values
    (82, 16, 82925.13);
insert into sales
    (customer_id, car_id, price)
values
    (45, 37, 77805.02);
insert into sales
    (customer_id, car_id, price)
values
    (67, 96, 85790.26);
insert into sales
    (customer_id, car_id, price)
values
    (28, 23, 83282.57);
insert into sales
    (customer_id, car_id, price)
values
    (33, 34, 90696.13);
insert into sales
    (customer_id, car_id, price)
values
    (65, 61, 87586.98);
insert into sales
    (customer_id, car_id, price)
values
    (39, 35, 99671.72);
insert into sales
    (customer_id, car_id, price)
values
    (29, 60, 58114.3);
insert into sales
    (customer_id, car_id, price)
values
    (74, 9, 48256.91);
insert into sales
    (customer_id, car_id, price)
values
    (16, 3, 36367.57);
insert into sales
    (customer_id, car_id, price)
values
    (24, 2, 31109.47);
insert into sales
    (customer_id, car_id, price)
values
    (88, 95, 73993.18);
insert into sales
    (customer_id, car_id, price)
values
    (59, 40, 55585.17);
insert into sales
    (customer_id, car_id, price)
values
    (19, 19, 79590.24);
insert into sales
    (customer_id, car_id, price)
values
    (17, 97, 66513.53);
insert into sales
    (customer_id, car_id, price)
values
    (77, 93, 66393.09);
insert into sales
    (customer_id, car_id, price)
values
    (82, 13, 98765.15);
insert into sales
    (customer_id, car_id, price)
values
    (38, 34, 70619.25);
insert into sales
    (customer_id, car_id, price)
values
    (97, 16, 58367.73);
insert into sales
    (customer_id, car_id, price)
values
    (81, 88, 76358.05);
insert into sales
    (customer_id, car_id, price)
values
    (74, 31, 49769.36);
insert into sales
    (customer_id, car_id, price)
values
    (89, 84, 44036.33);
insert into sales
    (customer_id, car_id, price)
values
    (55, 24, 71066.48);
insert into sales
    (customer_id, car_id, price)
values
    (91, 25, 45027.41);
insert into sales
    (customer_id, car_id, price)
values
    (80, 40, 95733.92);
insert into sales
    (customer_id, car_id, price)
values
    (13, 29, 42052.21);
insert into sales
    (customer_id, car_id, price)
values
    (10, 85, 39857.3);
insert into sales
    (customer_id, car_id, price)
values
    (77, 66, 63111.41);
insert into sales
    (customer_id, car_id, price)
values
    (63, 82, 53865.15);
insert into sales
    (customer_id, car_id, price)
values
    (31, 21, 81835.23);
insert into sales
    (customer_id, car_id, price)
values
    (93, 23, 68663.57);
insert into sales
    (customer_id, car_id, price)
values
    (99, 60, 77412.23);
insert into sales
    (customer_id, car_id, price)
values
    (4, 58, 48248.86);
insert into sales
    (customer_id, car_id, price)
values
    (22, 40, 36837.73);
insert into sales
    (customer_id, car_id, price)
values
    (97, 6, 83529.48);
insert into sales
    (customer_id, car_id, price)
values
    (81, 74, 34354.28);
insert into sales
    (customer_id, car_id, price)
values
    (18, 34, 30836.62);
insert into sales
    (customer_id, car_id, price)
values
    (78, 67, 37670.56);
insert into sales
    (customer_id, car_id, price)
values
    (97, 67, 62252.34);
insert into sales
    (customer_id, car_id, price)
values
    (28, 72, 45907.67);
insert into sales
    (customer_id, car_id, price)
values
    (41, 83, 45689.11);
insert into sales
    (customer_id, car_id, price)
values
    (41, 31, 42961.92);
insert into sales
    (customer_id, car_id, price)
values
    (73, 13, 94486.47);
insert into sales
    (customer_id, car_id, price)
values
    (64, 28, 73194.82);
insert into sales
    (customer_id, car_id, price)
values
    (37, 23, 94099.11);
insert into sales
    (customer_id, car_id, price)
values
    (68, 10, 69213.39);
insert into sales
    (customer_id, car_id, price)
values
    (55, 30, 77186.81);
insert into sales
    (customer_id, car_id, price)
values
    (65, 32, 44394.67);
insert into sales
    (customer_id, car_id, price)
values
    (56, 34, 32183.82);
insert into sales
    (customer_id, car_id, price)
values
    (77, 25, 67591.32);
insert into sales
    (customer_id, car_id, price)
values
    (60, 10, 86739.78);
insert into sales
    (customer_id, car_id, price)
values
    (45, 29, 45719.07);
insert into sales
    (customer_id, car_id, price)
values
    (12, 65, 92455.92);
insert into sales
    (customer_id, car_id, price)
values
    (9, 59, 92244.74);
insert into sales
    (customer_id, car_id, price)
values
    (32, 45, 81903.72);
insert into sales
    (customer_id, car_id, price)
values
    (41, 95, 30955.69);
insert into sales
    (customer_id, car_id, price)
values
    (66, 47, 32568.93);
insert into sales
    (customer_id, car_id, price)
values
    (46, 21, 75566.89);
insert into sales
    (customer_id, car_id, price)
values
    (69, 56, 54432.12);
insert into sales
    (customer_id, car_id, price)
values
    (88, 3, 85846.74);
insert into sales
    (customer_id, car_id, price)
values
    (28, 20, 62805.2);

