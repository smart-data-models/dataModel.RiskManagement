/* (Beta) Export of data model Mitigation of the subject dataModel.RiskManagement for a PostgreSQL database. Pending translation of enumerations and multityped attributes */
CREATE TYPE Mitigation_consequence_type AS ENUM ('quality', 'quantity', 'reputation');
CREATE TYPE Mitigation_event_type AS ENUM ('destruction', 'interruption', 'manipulation', 'pollution');
CREATE TYPE Mitigation_threat_type AS ENUM ('cyber', 'physical', 'cyber-physical');
CREATE TYPE Mitigation_type AS ENUM ('Mitigation');
CREATE TABLE Mitigation (
  "address" JSON,
  "affects" JSON,
  "alternateName" TEXT,
  "apply" JSON,
  "areaServed" TEXT,
  "consequence" Mitigation_consequence_type,
  "dataProvider" TEXT,
  "dateCreated" TIMESTAMP,
  "dateModified" TIMESTAMP,
  "description" TEXT,
  "event" Mitigation_event_type,
  "id" TEXT PRIMARY KEY,
  "likelihood" NUMERIC,
  "location" JSON,
  "name" TEXT,
  "owner" JSON,
  "seeAlso" JSON,
  "source" TEXT,
  "threat" Mitigation_threat_type,
  "type" Mitigation_type,
  "validFrom" TIMESTAMP,
  "validTo" TIMESTAMP
);