CREATE TABLE Users (
  "id" SERIAL PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "cash" numeric(10,2) NOT NULL
);

CREATE TABLE Companies (
  "id" int PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE Resources (
  "id" int PRIMARY KEY,
  "user_id" int NOT NULL,
  "comp_id" int NOT NULL,
  "amount" int NOT NULL
);

CREATE TABLE Sell_Offers (
  "id" int PRIMARY KEY,
  "resource_id" int NOT NULL,
  "amount" int NOT NULL,
  "price" numeric(10,4) NOT NULL,
  "date" timestamp NOT NULL,
  "is_valid" boolean NOT NULL,
  "start_amount" int NOT NULL
);

CREATE TABLE Buy_Offers (
  "id" int PRIMARY KEY,
  "resource_id" int NOT NULL,
  "amount" int NOT NULL,
  "max_price" numeric(10,4) NOT NULL,
  "date" timestamp NOT NULL,
  "is_valid" boolean NOT NULL,
  "start_amount" int NOT NULL
);

CREATE TABLE Transactions (
  "id" int PRIMARY KEY,
  "sell_offer_id" int NOT NULL,
  "buy_offer_id" int NOT NULL,
  "date" timestamp NOT NULL,
  "amount" int NOT NULL,
  "price" numeric(10,4) NOT NULL
);

CREATE TABLE Configurations (
  "name" varchar PRIMARY KEY,
  "value" int NOT NULL
);

ALTER TABLE Resources ADD FOREIGN KEY ("user_id") REFERENCES Users ("id");

ALTER TABLE Resources ADD FOREIGN KEY ("comp_id") REFERENCES Companies ("id");

ALTER TABLE Sell_Offers ADD FOREIGN KEY ("resource_id") REFERENCES Resources ("id");

ALTER TABLE Buy_Offers ADD FOREIGN KEY ("resource_id") REFERENCES Resources ("id");

ALTER TABLE Transactions ADD FOREIGN KEY ("sell_offer_id") REFERENCES Sell_Offers ("id");

ALTER TABLE Transactions ADD FOREIGN KEY ("buy_offer_id") REFERENCES Buy_Offers ("id");
