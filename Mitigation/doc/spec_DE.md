<!-- 10-Header -->  
[![Smart Data Models](https://smartdatamodels.org/wp-content/uploads/2022/01/SmartDataModels_logo.png "Logo")](https://smartdatamodels.org)  
Entität: Milderung  
==================<!-- /10-Header -->  
<!-- 15-License -->  
[Offene Lizenz](https://github.com/smart-data-models//dataModel.RiskManagement/blob/master/Mitigation/LICENSE.md)  
[Dokument automatisch generiert](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
<!-- /15-License -->  
<!-- 20-Description -->  
Globale Beschreibung: **Die Minderung der Folgen verringert das Risiko, nachdem ein Ereignis eingetreten ist. Daher ist diese Risikominderungsmaßnahme nicht für die Verringerung der Wahrscheinlichkeit von Ereignissen geeignet, sondern für die Verringerung der negativen Folgen. Beispiele für Maßnahmen zur Folgenminderung könnten z.B. der Bau von Verbindungsleitungen zum/zu den benachbarten Wasserversorger(n) sein, um im Falle eines Ausfalls der eigenen Wasserversorgung Wasser von dort zu beziehen, der Bau von Brunnen für eine Notversorgung oder der Abschluss von Verträgen mit Organisationen, die kleine mobile Notwasseraufbereitungsanlagen bereitstellen.**  
Version: 0.0.1  
<!-- /20-Description -->  
<!-- 30-PropertiesList -->  

## Liste der Eigenschaften  

<sup><sub>[*] Wenn es für ein Attribut keinen Typ gibt, liegt das daran, dass es mehrere Typen oder unterschiedliche Formate/Muster haben kann</sub></sup>.  
- `address[object]`: Die Postanschrift  . Model: [https://schema.org/address](https://schema.org/address)- `affects[array]`: Eine Reihe von URIs, die sich auf das Gebiet beziehen, in dem das Risiko auftreten könnte.  - `alternateName[string]`: Ein alternativer Name für diesen Artikel  - `apply[array]`: Array von URIs, die sich auf die mit der Milderung verbundenen Maßnahmen beziehen.  - `areaServed[string]`: Das geografische Gebiet, in dem eine Dienstleistung oder ein angebotener Artikel erbracht wird  . Model: [https://schema.org/Text](https://schema.org/Text)- `consequence[string]`: Die durch die Verwirklichung eines Risikos verursachte Folge. Enum:'Qualität, Quantität, Ruf'  - `dataProvider[string]`: Eine Folge von Zeichen zur Identifizierung des Anbieters der harmonisierten Dateneinheit.  - `dateCreated[string]`: Zeitstempel der Entitätserstellung. Dieser wird in der Regel von der Speicherplattform zugewiesen.  - `dateModified[string]`: Zeitstempel der letzten Änderung der Entität. Dieser wird in der Regel von der Speicherplattform vergeben.  - `description[string]`: Die Risikobeschreibung in einer natürlichen Sprache  - `event[string]`: Auftreten oder Veränderung eines bestimmten Sachverhalts. Enum:'Zerstörung, Unterbrechung, Manipulation, Verschmutzung'  - `id[*]`: Eindeutiger Bezeichner der Entität  - `likelihood[number]`: Die Wahrscheinlichkeit, dass etwas eintritt. In der Terminologie des Risikomanagements bezieht sich das Wort "Wahrscheinlichkeit" auf die Chance, dass etwas eintritt, unabhängig davon, ob es objektiv oder subjektiv, qualitativ oder quantitativ definiert, gemessen oder bestimmt und mit allgemeinen Begriffen oder mathematisch beschrieben wird (umfasst auch die Arten der angebotenen Wahrscheinlichkeiten wie LoAH, LoAS, LoC)  - `location[*]`: Geojson-Referenz auf das Element. Es kann Punkt, LineString, Polygon, MultiPoint, MultiLineString oder MultiPolygon sein  - `name[string]`: Der Name dieses Artikels.  - `owner[array]`: Eine Liste mit einer JSON-kodierten Zeichenfolge, die auf die eindeutigen Kennungen der Eigentümer verweist  - `seeAlso[*]`: Liste von URLs, die auf zusätzliche Ressourcen zu dem Artikel verweisen  - `source[string]`: Eine Folge von Zeichen, die die ursprüngliche Quelle der Entitätsdaten als URL angibt. Es wird empfohlen, den voll qualifizierten Domänennamen des Quellanbieters oder die URL des Quellobjekts zu verwenden.  - `threat[string]`: Die potenzielle Ursache eines Vorfalls, der zu einer Verletzung der Informationssicherheit führen oder den Geschäftsbetrieb beeinträchtigen kann. Enum:'cyber, physisch, cyber-physisch'  - `type[string]`: NGSI-LD Entitätstyp. Er muss gleich Risiko sein.  - `validFrom[string]`: Der Zeitpunkt, zu dem die Risikomaterialisierung abgeschlossen ist.  . Model: [https://schema.org/Time](https://schema.org/Time)- `validTo[string]`: Der Zeitpunkt, zu dem die Risikomaterialisierung beginnt.  . Model: [https://schema.org/Time](https://schema.org/Time)<!-- /30-PropertiesList -->  
<!-- 35-RequiredProperties -->  
Erforderliche Eigenschaften  
<!-- /35-RequiredProperties -->  
<!-- 40-RequiredProperties -->  
<!-- /40-RequiredProperties -->  
<!-- 50-DataModelHeader -->  
## Datenmodell Beschreibung der Eigenschaften  
Alphabetisch sortiert (für Details anklicken)  
<!-- /50-DataModelHeader -->  
<!-- 60-ModelYaml -->  
<details><summary><strong>full yaml details</strong></summary>    
```yaml  
Mitigation:    
  description: 'The mitigation of consequences reduces the risk after an event has occurred. Therefore, this risk reduction measure is not suitable for the reduction of the likelihood of events but for the reduction of the negative consequences. Examples for consequence mitigation measures could be e.g. the construction of connection pipes to the neighbor water supplier(s) to get water from them in case of a breakdown of the own water supply, the construction of wells for an emergency supply or signing of contracts with organizations providing small mobile emergency water treatment plants.'    
  properties:    
    address:    
      description: 'The mailing address'    
      properties:    
        addressCountry:    
          description: 'Property. The country. For example, Spain. Model:''https://schema.org/addressCountry'''    
          type: string    
        addressLocality:    
          description: 'Property. The locality in which the street address is, and which is in the region. Model:''https://schema.org/addressLocality'''    
          type: string    
        addressRegion:    
          description: 'Property. The region in which the locality is, and which is in the country. Model:''https://schema.org/addressRegion'''    
          type: string    
        postOfficeBoxNumber:    
          description: 'Property. The post office box number for PO box addresses. For example, 03578. Model:''https://schema.org/postOfficeBoxNumber'''    
          type: string    
        postalCode:    
          description: 'Property. The postal code. For example, 24004. Model:''https://schema.org/https://schema.org/postalCode'''    
          type: string    
        streetAddress:    
          description: 'Property. The street address. Model:''https://schema.org/streetAddress'''    
          type: string    
      type: object    
      x-ngsi:    
        model: https://schema.org/address    
        type: Property    
    affects:    
      description: 'Array of URIs related to the area in which the risk could affect.'    
      items:    
        anyOf:    
          - description: 'Property. Identifier format of any NGSI entity'    
            maxLength: 256    
            minLength: 1    
            pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
            type: string    
          - description: 'Property. Identifier format of any NGSI entity'    
            format: uri    
            type: string    
      type: array    
      x-ngsi:    
        type: Relationship    
    alternateName:    
      description: 'An alternative name for this item'    
      type: string    
      x-ngsi:    
        type: Property    
    apply:    
      description: 'Array of URIs related to Measures associated to the mitigation.'    
      items:    
        anyOf:    
          - description: 'Property. Identifier format of any NGSI entity'    
            maxLength: 256    
            minLength: 1    
            pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
            type: string    
          - description: 'Property. Identifier format of any NGSI entity'    
            format: uri    
            type: string    
      type: array    
      x-ngsi:    
        type: Relationship    
    areaServed:    
      description: 'The geographic area where a service or offered item is provided'    
      type: string    
      x-ngsi:    
        model: https://schema.org/Text    
        type: Property    
    consequence:    
      description: 'The consequence caused by a risk materialization. Enum:''quality, quantity, reputation'''    
      enum:    
        - quality    
        - quantity    
        - reputation    
      type: string    
      x-ngsi:    
        type: Property    
    dataProvider:    
      description: 'A sequence of characters identifying the provider of the harmonised data entity.'    
      type: string    
      x-ngsi:    
        type: Property    
    dateCreated:    
      description: 'Entity creation timestamp. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: string    
      x-ngsi:    
        type: Property    
    dateModified:    
      description: 'Timestamp of the last modification of the entity. This will usually be allocated by the storage platform.'    
      format: date-time    
      type: string    
      x-ngsi:    
        type: Property    
    description:    
      description: 'The risk description in a natural language'    
      type: string    
      x-ngsi:    
        type: Property    
    event:    
      description: 'Occurrence or change of a particular set of circumstances. Enum:''destruction, interruption, manipulation, pollution'''    
      enum:    
        - destruction    
        - interruption    
        - manipulation    
        - pollution    
      type: string    
      x-ngsi:    
        type: Property    
    id:    
      anyOf: &mitigation_-_properties_-_owner_-_items_-_anyof    
        - description: 'Property. Identifier format of any NGSI entity'    
          maxLength: 256    
          minLength: 1    
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
          type: string    
        - description: 'Property. Identifier format of any NGSI entity'    
          format: uri    
          type: string    
      description: 'Unique identifier of the entity'    
      x-ngsi:    
        type: Property    
    likelihood:    
      description: 'Chance of something happening. In risk management terminology, the word ''likelihood'' is used to refer to the chance of something happening, whether defined, measured or determined objectively or subjectively, qualitatively or quantitatively, and described using general terms or mathematically (includes also the types of offered likelihood such as LoAH, LoAS, LoC)'    
      type: number    
      x-ngsi:    
        type: Property    
    location:    
      description: 'Geojson reference to the item. It can be Point, LineString, Polygon, MultiPoint, MultiLineString or MultiPolygon'    
      oneOf:    
        - description: 'Geoproperty. Geojson reference to the item. Point'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                type: number    
              minItems: 2    
              type: array    
            type:    
              enum:    
                - Point    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON Point'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. LineString'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  type: number    
                minItems: 2    
                type: array    
              minItems: 2    
              type: array    
            type:    
              enum:    
                - LineString    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON LineString'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. Polygon'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  items:    
                    type: number    
                  minItems: 2    
                  type: array    
                minItems: 4    
                type: array    
              type: array    
            type:    
              enum:    
                - Polygon    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON Polygon'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. MultiPoint'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  type: number    
                minItems: 2    
                type: array    
              type: array    
            type:    
              enum:    
                - MultiPoint    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON MultiPoint'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. MultiLineString'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  items:    
                    type: number    
                  minItems: 2    
                  type: array    
                minItems: 2    
                type: array    
              type: array    
            type:    
              enum:    
                - MultiLineString    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON MultiLineString'    
          type: object    
        - description: 'Geoproperty. Geojson reference to the item. MultiLineString'    
          properties:    
            bbox:    
              items:    
                type: number    
              minItems: 4    
              type: array    
            coordinates:    
              items:    
                items:    
                  items:    
                    items:    
                      type: number    
                    minItems: 2    
                    type: array    
                  minItems: 4    
                  type: array    
                type: array    
              type: array    
            type:    
              enum:    
                - MultiPolygon    
              type: string    
          required:    
            - type    
            - coordinates    
          title: 'GeoJSON MultiPolygon'    
          type: object    
      x-ngsi:    
        type: Geoproperty    
    name:    
      description: 'The name of this item.'    
      type: string    
      x-ngsi:    
        type: Property    
    owner:    
      description: 'A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)'    
      items:    
        anyOf: *mitigation_-_properties_-_owner_-_items_-_anyof    
        description: 'Property. Unique identifier of the entity'    
      type: array    
      x-ngsi:    
        type: Property    
    seeAlso:    
      description: 'list of uri pointing to additional resources about the item'    
      oneOf:    
        - items:    
            format: uri    
            type: string    
          minItems: 1    
          type: array    
        - format: uri    
          type: string    
      x-ngsi:    
        type: Property    
    source:    
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.'    
      type: string    
      x-ngsi:    
        type: Property    
    threat:    
      description: 'The potential cause of an incident that may result in a breach of information security or compromise business operations. Enum:''cyber, physical, cyber-physical'''    
      enum:    
        - cyber    
        - physical    
        - cyber-physical    
      type: string    
      x-ngsi:    
        type: Property    
    type:    
      description: 'NGSI-LD Entity Type. It must be equal to Risk.'    
      enum:    
        - Mitigation    
      type: string    
      x-ngsi:    
        type: Property    
    validFrom:    
      description: 'The time at which the risk materialization is finished.'    
      format: date-time    
      type: string    
      x-ngsi:    
        model: https://schema.org/Time    
        type: Property    
    validTo:    
      description: 'The time at which the risk materialization is started.'    
      format: date-time    
      type: string    
      x-ngsi:    
        model: https://schema.org/Time    
        type: Property    
  required: []    
  type: object    
  x-derived-from: ""    
  x-disclaimer: 'Redistribution and use in source and binary forms, with or without modification, are permitted  provided that the license conditions are met. Copyleft (c) 2021 Contributors to Smart Data Models Program'    
  x-license-url: https://github.com/smart-data-models/dataModel.RiskManagement/blob/master/Mitigation/LICENSE.md    
  x-model-schema: https://raw.githubusercontent.com/smart-data-models/dataModel.RiskAssessment/master/Mitigation/schema.json    
  x-model-tags: ""    
  x-version: 0.0.1    
```  
</details>    
<!-- /60-ModelYaml -->  
<!-- 70-MiddleNotes -->  
<!-- /70-MiddleNotes -->  
<!-- 80-Examples -->  
## Beispiel-Nutzlasten  
#### Entschärfung NGSI-v2 Schlüsselwerte Beispiel  
Hier ist ein Beispiel für eine Mitigation im JSON-LD-Format als Key-Values. Dies ist mit NGSI-v2 kompatibel, wenn `options=keyValues` verwendet wird und liefert die Kontextdaten einer einzelnen Entität.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
  "id": "urn:ngsi-ld:Mitigation:01",  
  "type": "Mitigation",  
  "validFrom": "2021-02-18T12:00:00Z",  
  "validTo": "2021-02-18T12:00:00Z",  
  "location": {  
    "type": "Polygon",  
    "coordinates": [  
      [  
        [  
          23.6627,  
          41.88768  
        ],  
        [  
          25.85598,  
          43.38622  
        ],  
        [  
          23.4899,  
          43.78691  
        ],  
        [  
          22.35609,  
          42.28869  
        ],  
        [  
          23.6627,  
          41.88769  
        ]  
      ]  
    ]  
  },  
  "threat": "physical",  
  "consequence": "reputation",  
  "description": "Mitigation01 Corresponds to reboot the pump",  
  "event": "interruption",  
  "likelihood": 0.5,  
  "affects": [  
    "urn:ngsi-ld:ServiceGISData:01"  
  ],  
  "apply": [  
    "urn:ngsi-ld:Measure:01"  
  ]  
}  
```  
</details>  
#### Entschärfung NGSI-v2 normalisiert Beispiel  
Hier ist ein Beispiel für eine Mitigation im JSON-LD-Format in normalisierter Form. Dies ist kompatibel mit NGSI-v2, wenn keine Optionen verwendet werden, und liefert die Kontextdaten einer einzelnen Entität.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
  "id": "urn:ngsi-ld:Mitigation:01",  
  "type": "Mitigation",  
  "validFrom": {  
    "type": "DateTime",  
    "value": "2021-02-18T12:00:00Z"  
  },  
  "validTo": {  
    "type": "DateTime",  
    "value": "2021-02-18T12:00:00Z"  
  },  
  "location": {  
    "type": "geo:json",  
    "value": {  
      "type": "Polygon",  
      "coordinates": [  
        [  
          [  
            23.6627,  
            41.88768  
          ],  
          [  
            25.85598,  
            43.38622  
          ],  
          [  
            23.4899,  
            43.78691  
          ],  
          [  
            22.35609,  
            42.28869  
          ],  
          [  
            23.6627,  
            41.88769  
          ]  
        ]  
      ]  
    }  
  },  
  "threat": {  
    "type": "Text",  
    "value": "physical"  
  },  
  "consequence": {  
    "type": "Text",  
    "value": "Reputation"  
  },  
  "description": {  
    "type": "Text",  
    "value": "Mitigation01 Corresponds to reboot the pump"  
  },  
  "event": {  
    "type": "Array",  
    "value": "Interruption"  
  },  
  "likelihood": {  
    "type": "Property",  
    "value": 0.5  
  },  
  "affects": {  
    "type": "Relationship",  
    "value": [  
      "urn:ngsi-ld:ServiceGISData:01"  
    ]  
  },  
  "apply": {  
    "type": "Relationship",  
    "value": [  
      "urn:ngsi-ld:Measure:01"  
    ]  
  }  
}  
```  
</details>  
#### Entschärfung NGSI-LD-Schlüsselwerte Beispiel  
Hier ist ein Beispiel für eine Mitigation im JSON-LD-Format als Key-Values. Dies ist mit NGSI-LD kompatibel, wenn `options=keyValues` verwendet wird und liefert die Kontextdaten einer einzelnen Entität.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
    "id": "urn:ngsi-ld:Mitigation:01",  
    "type": "Mitigation",  
    "affects": [  
        "urn:ngsi-ld:ServiceGISData:01"  
    ],  
    "apply": [  
        "urn:ngsi-ld:Measure:01"  
    ],  
    "consequence": "reputation",  
    "description": "Mitigation01 Corresponds to reboot the pump",  
    "event": "interruption",  
    "likelihood": 0.5,  
    "location": {  
        "type": "Polygon",  
        "coordinates": [  
            [  
                [  
                    23.6627,  
                    41.88768  
                ],  
                [  
                    25.85598,  
                    43.38622  
                ],  
                [  
                    23.4899,  
                    43.78691  
                ],  
                [  
                    22.35609,  
                    42.28869  
                ],  
                [  
                    23.6627,  
                    41.88769  
                ]  
            ]  
        ]  
    },  
    "threat": "physical",  
    "validFrom": "2021-02-18T12:00:00Z",  
    "validTo": "2021-02-18T12:00:00Z",  
    "@context": [  
        "https://raw.githubusercontent.com/smart-data-models/dataModel.RiskManagement/master/context.jsonld"  
    ]  
}  
```  
</details>  
#### Minderung NGSI-LD normalisiert Beispiel  
Hier ist ein Beispiel für eine Mitigation im JSON-LD-Format in normalisierter Form. Dies ist mit NGSI-LD kompatibel, wenn keine Optionen verwendet werden, und liefert die Kontextdaten einer einzelnen Entität.  
<details><summary><strong>show/hide example</strong></summary>    
```json  
{  
    "id": "urn:ngsi-ld:Mitigation:01",  
    "type": "Mitigation",  
    "affects": {  
        "type": "Relationship",  
        "value": "urn:ngsi-ld:ServiceGISData:01"  
    },  
    "apply": {  
        "type": "Relationship",  
        "value": "urn:ngsi-ld:Measure:01"  
    },  
    "consequence": {  
        "type": "Property",  
        "value": "reputation"  
    },  
    "description": {  
        "type": "Property",  
        "value": "Mitigation01 Corresponds to reboot the pump"  
    },  
    "event": {  
        "type": "Property",  
        "value": "interruption"  
    },  
    "likelihood": {  
        "type": "Property",  
        "value": 0.5  
    },  
    "location": {  
        "type": "Geoproperty",  
        "value": {  
            "type": "Polygon",  
            "coordinates": [  
                [  
                    [  
                        23.6627,  
                        41.88768  
                    ],  
                    [  
                        25.85598,  
                        43.38622  
                    ],  
                    [  
                        23.4899,  
                        43.78691  
                    ],  
                    [  
                        22.35609,  
                        42.28869  
                    ],  
                    [  
                        23.6627,  
                        41.88769  
                    ]  
                ]  
            ]  
        }  
    },  
    "threat": {  
        "type": "Property",  
        "value": "physical"  
    },  
    "validFrom": {  
        "type": "Property",  
        "value": {  
            "@type": "DateTime",  
            "@value": "2021-02-18T12:00:00Z"  
        }  
    },  
    "validTo": {  
        "type": "Property",  
        "value": {  
            "@type": "DateTime",  
            "@value": "2021-02-18T12:00:00Z"  
        }  
    },  
    "@context": [  
        "https://raw.githubusercontent.com/smart-data-models/dataModel.RiskManagement/master/context.jsonld"  
    ]  
}  
```  
</details><!-- /80-Examples -->  
<!-- 90-FooterNotes -->  
<!-- /90-FooterNotes -->  
<!-- 95-Units -->  
Siehe [FAQ 10] (https://smartdatamodels.org/index.php/faqs/), um eine Antwort auf die Frage zu erhalten, wie man mit Größeneinheiten umgeht  
<!-- /95-Units -->  
<!-- 97-LastFooter -->  
---  
[Smart Data Models](https://smartdatamodels.org) +++ [Contribution Manual](https://bit.ly/contribution_manual) +++ [About](https://bit.ly/Introduction_SDM)<!-- /97-LastFooter -->  
