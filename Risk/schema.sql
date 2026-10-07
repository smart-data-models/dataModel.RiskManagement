/* (Beta) Export of data model Risk of the subject dataModel.RiskManagement for a PostgreSQL database. Pending translation of enumerations and multityped attributes */
CREATE TYPE Risk_consequence_type AS ENUM ('quality', 'quantity', 'reputation');
CREATE TYPE Risk_event_type AS ENUM ('destruction', 'interruption', 'manipulation', 'pollution');
CREATE TYPE Risk_severity_type AS ENUM ('LOW', 'MEDIUM', 'HIGH');
CREATE TYPE Risk_threat_type AS ENUM ('cyber', 'cyber-physical', 'physical');
CREATE TYPE Risk_type AS ENUM ('Risk');
CREATE TABLE Risk (
  "address" JSON,
  "affects" JSON,
  "alternateName" TEXT,
  "areaServed" TEXT,
  "consequence" Risk_consequence_type,
  "dataProvider" TEXT,
  "dateCreated" TIMESTAMP,
  "dateModified" TIMESTAMP,
  "description" TEXT,
  "event" Risk_event_type,
  "id" TEXT PRIMARY KEY,
  "isOutputOf" JSON,
  "linkTo" JSON,
  "location" JSON,
  "mitigatedBy" JSON,
  "name" TEXT,
  "owner" JSON,
  "seeAlso" JSON,
  "severity" Risk_severity_type,
  "source" TEXT,
  "sourceRisk" JSON,
  "threat" Risk_threat_type,
  "type" Risk_type,
  "validFrom" TIMESTAMP,
  "validTo" TIMESTAMP
);