

/*
Initialize the database.
Drop any existing data and create empty tables.

player --> stat
       --< talent
       --< skill
       --< heritage
       --< equipment
       --< cycle      --< network  --< resource
                                   --< troop
                                   --< infrastructure
                                   --< barrack
                                   --< construction
                                   --< contact
                      --< command
                      --< result
       --> notes
*/


DROP TABLE IF EXISTS player;
DROP TABLE IF EXISTS stat;
DROP TABLE IF EXISTS talent;
DROP TABLE IF EXISTS skill;
DROP TABLE IF EXISTS heritage;
DROP TABLE IF EXISTS equipment;
DROP TABLE IF EXISTS cycle;
DROP TABLE IF EXISTS network;
DROP TABLE IF EXISTS resource;
DROP TABLE IF EXISTS troop;
DROP TABLE IF EXISTS infrastructure;
DROP TABLE IF EXISTS barrack;
DROP TABLE IF EXISTS construction;
DROP TABLE IF EXISTS contact;
DROP TABLE IF EXISTS command;
DROP TABLE IF EXISTS result;
DROP TABLE IF EXISTS notes;


CREATE TABLE player (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  password TEXT NOT NULL,
  picture TEXT NULL,
  PA TEXT NULL,
  PM TEXT NULL,
  special TEXT NULL,
  bonus TEXT NULL,
  malus TEXT NULL
);

CREATE TABLE stat (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (player_id) REFERENCES player (id),
  CC TEXT NOT NULL,
  CT TEXT NOT NULL,
  F TEXT NOT NULL,
  E TEXT NOT NULL,
  Ag TEXT NOT NULL,
  Inte TEXT NOT NULL,
  Per TEXT NOT NULL,
  FM TEXT NOT NULL,
  Soc TEXT NOT NULL,
  Cor TEXT NOT NULL,
  Fol TEXT NOT NULL,
  Des TEXT NOT NULL,
  PV TEXT NOT NULL
);

CREATE TABLE talent (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (player_id) REFERENCES player (id),
  talent TEXT NOT NULL
);

CREATE TABLE skill (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (player_id) REFERENCES player (id),
  skill TEXT NOT NULL
);
CREATE TABLE heritage (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (player_id) REFERENCES player (id),
  heritage TEXT NOT NULL
);

CREATE TABLE equipment (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (player_id) REFERENCES player (id),
  equipment TEXT NOT NULL
);

CREATE TABLE cycle (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (player_id) REFERENCES player (id),
  cycle TEXT NOT NULL
);

CREATE TABLE network (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (cycle_id) REFERENCES cycle (id),
  network TEXT NOT NULL
);

CREATE TABLE resource (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (network_id) REFERENCES network (id),
  resource TEXT NOT NULL
);

CREATE TABLE troop (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (network_id) REFERENCES network (id),
  unit TEXT NOT NULL,
  troop TEXT NOT NULL,
  total TEXT NOT NULL,
  experience TEXT NULL,
  description TEXT NULL
);

CREATE TABLE infrastructure (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (network_id) REFERENCES network (id),
  total TEXT NOT NULL,
  infrastructure TEXT NOT NULL,
  location TEXT NOT NULL,
  resource TEXT NOT NULL
);

CREATE TABLE barrack (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (network_id) REFERENCES network (id),
  total TEXT NOT NULL,
  barrack TEXT NOT NULL,
  location TEXT NOT NULL,
  size TEXT NOT NULL,
  troop TEXT NOT NULL
);

CREATE TABLE construction (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (network_id) REFERENCES network (id),
  construction TEXT NOT NULL,
  location TEXT NOT NULL,
  size TEXT NOT NULL,
  construction_time TEXT NULL
);

CREATE TABLE contact (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (network_id) REFERENCES network (id),
  picture TEXT NULL,
  contact TEXT NOT NULL,
  title TEXT NULL,
  description TEXT NULL
);

CREATE TABLE command (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (cycle_id) REFERENCES cycle (id),
  PA TEXT NULL,
  PM TEXT NULL,
  PR TEXT NULL,
  command TEXT NOT NULL
);

CREATE TABLE result (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (cycle_id) REFERENCES cycle (id),
  picture TEXT NULL,
  result TEXT NOT NULL
);

CREATE TABLE notes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  FOREIGN KEY (player_id) REFERENCES player (id),
  notes TEXT NOT NULL
);
