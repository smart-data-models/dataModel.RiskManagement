/* (Beta) Export of data model Measure of the subject dataModel.RiskManagement for a postgreSQL database. Pending translation of enumerations and multityped attributes */
CREATE TYPE Measure_type AS ENUM ('Measure');
CREATE TABLE Measure (action json, address json, alternateName text, areaServed text, dataProvider text, dateCreated timestamp, dateModified timestamp, description text, id text, location json, name text, owner json, seeAlso json, source text, type Measure_type);