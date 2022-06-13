-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-06-13 09:51:37.046

-- tables
-- Table: Caretaker
CREATE TABLE Caretaker (
    CT_id int NOT NULL AUTO_INCREMENT,
    fname varchar(255) NOT NULL,
    lname varchar(255) NOT NULL,
    phone int NOT NULL,
    email text NOT NULL,
    UNIQUE INDEX payment_data_ak_1 (fname),
    CONSTRAINT Caretaker_pk PRIMARY KEY (CT_id)
);

-- Table: Coach
CREATE TABLE Coach (
    coach_id int NOT NULL,
    Commitment_id int NOT NULL,
    Participation_p_id int NOT NULL,
    Fname varchar(50) NOT NULL,
    Lname varchar(50) NOT NULL,
    Phone int NOT NULL,
    Email varchar(50) NOT NULL,
    CONSTRAINT Coach_pk PRIMARY KEY (coach_id)
);

-- Table: Commitment
CREATE TABLE Commitment (
    id int NOT NULL AUTO_INCREMENT,
    rescinded varchar(55) NOT NULL,
    Comment text NOT NULL,
    Caretaker_CT_id int NOT NULL,
    CONSTRAINT Commitment_pk PRIMARY KEY (id)
);

-- Table: Event
CREATE TABLE Event (
    eventID int NOT NULL,
    title text NOT NULL,
    startTime time NOT NULL,
    endTime time NOT NULL,
    Level_level_id int NOT NULL,
    Meeting_id int NOT NULL,
    CONSTRAINT Event_pk PRIMARY KEY (eventID)
);

-- Table: Level
CREATE TABLE Level (
    level_id int NOT NULL,
    level text NOT NULL,
    level_discription text NOT NULL,
    CONSTRAINT Level_pk PRIMARY KEY (level_id)
);

-- Table: LevelHistory
CREATE TABLE LevelHistory (
    lh_id int NOT NULL,
    startDate date NOT NULL,
    comment text NOT NULL,
    Level_level_id int NOT NULL,
    CONSTRAINT LevelHistory_pk PRIMARY KEY (lh_id)
);

-- Table: Meeting
CREATE TABLE Meeting (
    id int NOT NULL AUTO_INCREMENT,
    type_name varchar(64) NOT NULL,
    Venue_id int NOT NULL,
    Coach_coach_id int NOT NULL,
    CONSTRAINT Meeting_pk PRIMARY KEY (id)
) COMMENT 'e.g. send after payment, charge after delivery, ...';

-- Table: Participation
CREATE TABLE Participation (
    p_id int NOT NULL,
    type_name varchar(64) NOT NULL,
    participation_id int NOT NULL,
    Event_eventID int NOT NULL,
    CONSTRAINT Participation_pk PRIMARY KEY (p_id)
);

-- Table: Swimmer
CREATE TABLE Swimmer (
    Swimmer_id int NOT NULL AUTO_INCREMENT,
    FName varchar(64) NOT NULL,
    LName varchar(255) NOT NULL,
    Phone varchar(16) NOT NULL,
    Email decimal(8,2) NOT NULL,
    Join_time date NOT NULL,
    Level_level_id int NOT NULL,
    CONSTRAINT Swimmer_pk PRIMARY KEY (Swimmer_id)
);

-- Table: V_task
CREATE TABLE V_task (
    id int NOT NULL AUTO_INCREMENT,
    type_name varchar(64) NOT NULL,
    comment text NOT NULL,
    V_taskList_id int NOT NULL,
    Commitment_id int NOT NULL,
    CONSTRAINT V_task_pk PRIMARY KEY (id)
) COMMENT 'e.g. card, cash, paypal, wire transfer';

-- Table: V_taskList
CREATE TABLE V_taskList (
    list_id int NOT NULL AUTO_INCREMENT,
    required varchar(50) NOT NULL,
    panalty text NOT NULL,
    panaltyAmt int NOT NULL,
    Meeting_id int NOT NULL,
    CONSTRAINT V_taskList_pk PRIMARY KEY (list_id)
);

-- Table: Venue
CREATE TABLE Venue (
    venue_id int NOT NULL AUTO_INCREMENT,
    Address varchar(50) NOT NULL,
    City varchar(50) NULL,
    State varchar(50) NOT NULL,
    ZipCode int NOT NULL,
    phone int NOT NULL,
    Name varchar(50) NOT NULL,
    CONSTRAINT Venue_pk PRIMARY KEY (venue_id)
);

-- foreign keys
-- Reference: Coach_Commitment (table: Coach)
ALTER TABLE Coach ADD CONSTRAINT Coach_Commitment FOREIGN KEY Coach_Commitment (Commitment_id)
    REFERENCES Commitment (id);

-- Reference: Coach_Participation (table: Coach)
ALTER TABLE Coach ADD CONSTRAINT Coach_Participation FOREIGN KEY Coach_Participation (Participation_p_id)
    REFERENCES Participation (p_id);

-- Reference: Commitment_Caretaker (table: Commitment)
ALTER TABLE Commitment ADD CONSTRAINT Commitment_Caretaker FOREIGN KEY Commitment_Caretaker (Caretaker_CT_id)
    REFERENCES Caretaker (CT_id);

-- Reference: Event_Level (table: Event)
ALTER TABLE Event ADD CONSTRAINT Event_Level FOREIGN KEY Event_Level (Level_level_id)
    REFERENCES Level (level_id);

-- Reference: Event_Meeting (table: Event)
ALTER TABLE Event ADD CONSTRAINT Event_Meeting FOREIGN KEY Event_Meeting (Meeting_id)
    REFERENCES Meeting (id);

-- Reference: LevelHistory_Level (table: LevelHistory)
ALTER TABLE LevelHistory ADD CONSTRAINT LevelHistory_Level FOREIGN KEY LevelHistory_Level (Level_level_id)
    REFERENCES Level (level_id);

-- Reference: Meeting_Coach (table: Meeting)
ALTER TABLE Meeting ADD CONSTRAINT Meeting_Coach FOREIGN KEY Meeting_Coach (Coach_coach_id)
    REFERENCES Coach (coach_id);

-- Reference: Meeting_Venue (table: Meeting)
ALTER TABLE Meeting ADD CONSTRAINT Meeting_Venue FOREIGN KEY Meeting_Venue (Venue_id)
    REFERENCES Venue (venue_id);

-- Reference: Swimmer_Level (table: Swimmer)
ALTER TABLE Swimmer ADD CONSTRAINT Swimmer_Level FOREIGN KEY Swimmer_Level (Level_level_id)
    REFERENCES Level (level_id);

-- Reference: V_taskList_Meeting (table: V_taskList)
ALTER TABLE V_taskList ADD CONSTRAINT V_taskList_Meeting FOREIGN KEY V_taskList_Meeting (Meeting_id)
    REFERENCES Meeting (id);

-- Reference: V_task_Commitment (table: V_task)
ALTER TABLE V_task ADD CONSTRAINT V_task_Commitment FOREIGN KEY V_task_Commitment (Commitment_id)
    REFERENCES Commitment (id);

-- Reference: V_task_V_taskList (table: V_task)
ALTER TABLE V_task ADD CONSTRAINT V_task_V_taskList FOREIGN KEY V_task_V_taskList (V_taskList_id)
    REFERENCES V_taskList (list_id);

-- Reference: participation_Event (table: Participation)
ALTER TABLE Participation ADD CONSTRAINT participation_Event FOREIGN KEY participation_Event (Event_eventID)
    REFERENCES Event (eventID);

-- End of file.

