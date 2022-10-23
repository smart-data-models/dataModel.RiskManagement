<!-- 10-Header -->  
[![Smart Data Models](https://smartdatamodels.org/wp-content/uploads/2022/01/SmartDataModels_logo.png "Logo")](https://smartdatamodels.org)  
Entità: Mitigazione  
===================<!-- /10-Header -->  
<!-- 15-License -->  
[Licenza aperta](https://github.com/smart-data-models//dataModel.RiskManagement/blob/master/Mitigation/LICENSE.md)  
[documento generato automaticamente](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
<!-- /15-License -->  
<!-- 20-Description -->  
Descrizione globale: **La mitigazione delle conseguenze riduce il rischio dopo che un evento si è verificato. Pertanto, questa misura di riduzione del rischio non è adatta a ridurre la probabilità di eventi, ma a ridurre le conseguenze negative. Esempi di misure di mitigazione delle conseguenze possono essere, ad esempio, la costruzione di tubi di collegamento con i fornitori d'acqua vicini per ottenere l'acqua da loro in caso di guasto della propria fornitura d'acqua, la costruzione di pozzi per una fornitura d'emergenza o la stipula di contratti con organizzazioni che forniscono piccoli impianti mobili di trattamento dell'acqua d'emergenza **.  
versione: 0.0.1  
<!-- /20-Description -->  
<!-- 30-PropertiesList -->  

## Elenco delle proprietà  

<sup><sub>[*] Se non c'è un tipo in un attributo è perché potrebbe avere diversi tipi o diversi formati/modelli</sub></sup>.  
- `address[object]`: L'indirizzo postale  . Model: [https://schema.org/address](https://schema.org/address)- `affects[array]`: Serie di URI relativi all'area che potrebbe essere interessata dal rischio.  - `alternateName[string]`: Un nome alternativo per questa voce  - `apply[array]`: Array di URI relativi alle Misure associate all'attenuazione.  - `areaServed[string]`: L'area geografica in cui viene fornito il servizio o l'articolo offerto.  . Model: [https://schema.org/Text](https://schema.org/Text)- `consequence[string]`: La conseguenza causata dalla materializzazione di un rischio. Enum:'qualità, quantità, reputazione'.  - `dataProvider[string]`: Una sequenza di caratteri che identifica il fornitore dell'entità di dati armonizzata.  - `dateCreated[string]`: Timestamp di creazione dell'entità. Di solito viene assegnato dalla piattaforma di archiviazione.  - `dateModified[string]`: Timestamp dell'ultima modifica dell'entità. Di solito viene assegnato dalla piattaforma di archiviazione.  - `description[string]`: La descrizione del rischio in linguaggio naturale  - `event[string]`: Avvenimento o cambiamento di un particolare insieme di circostanze. Enum:'distruzione, interruzione, manipolazione, inquinamento'.  - `id[*]`: Identificatore univoco dell'entità  - `likelihood[number]`: Probabilità che qualcosa accada. Nella terminologia della gestione del rischio, il termine "probabilità" è utilizzato per riferirsi alla possibilità che qualcosa accada, sia essa definita, misurata o determinata in modo oggettivo o soggettivo, qualitativo o quantitativo, e descritta con termini generali o matematici (include anche i tipi di probabilità offerte come LoAH, LoAS, LoC).  - `location[*]`: Riferimento Geojson all'elemento. Può essere un punto, una stringa di linea, un poligono, un multi-punto, una stringa di linea o un poligono multiplo.  - `name[string]`: Il nome di questo elemento.  - `owner[array]`: Un elenco contenente una sequenza di caratteri codificata JSON che fa riferimento agli ID univoci dei proprietari.  - `seeAlso[*]`: elenco di uri che puntano a risorse aggiuntive sull'elemento  - `source[string]`: Una sequenza di caratteri che indica la fonte originale dei dati dell'entità come URL. Si consiglia di utilizzare il nome di dominio completamente qualificato del provider di origine o l'URL dell'oggetto di origine.  - `threat[string]`: La causa potenziale di un incidente che può provocare una violazione della sicurezza delle informazioni o compromettere le operazioni aziendali. Enum:'cyber, fisico, cyber-fisico'.  - `type[string]`: Tipo di entità NGSI-LD. Deve essere uguale a Rischio.  - `validFrom[string]`: Il momento in cui la materializzazione del rischio è terminata.  . Model: [https://schema.org/Time](https://schema.org/Time)- `validTo[string]`: Il momento in cui inizia la materializzazione del rischio.  . Model: [https://schema.org/Time](https://schema.org/Time)<!-- /30-PropertiesList -->  
<!-- 35-RequiredProperties -->  
Proprietà richieste  
<!-- /35-RequiredProperties -->  
<!-- 40-RequiredProperties -->  
<!-- /40-RequiredProperties -->  
<!-- 50-DataModelHeader -->  
## Modello di dati descrizione delle proprietà  
Ordinati in ordine alfabetico (clicca per i dettagli)  
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
## Esempi di payload  
#### Mitigazione Valori chiave NGSI-v2 Esempio  
Ecco un esempio di mitigazione in formato JSON-LD come valori-chiave. Questo è compatibile con NGSI-v2 quando si usa `options=keyValues` e restituisce i dati di contesto di una singola entità.  
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
#### Mitigazione NGSI-v2 normalizzato Esempio  
Ecco un esempio di Mitigazione in formato JSON-LD normalizzato. Questo è compatibile con NGSI-v2 quando non si utilizzano opzioni e restituisce i dati di contesto di una singola entità.  
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
#### Mitigazione Valori chiave NGSI-LD Esempio  
Ecco un esempio di mitigazione in formato JSON-LD come valori-chiave. Questo è compatibile con NGSI-LD quando si usa `options=keyValues` e restituisce i dati di contesto di una singola entità.  
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
#### Mitigazione NGSI-LD normalizzata Esempio  
Ecco un esempio di Mitigazione in formato JSON-LD normalizzato. Questo è compatibile con NGSI-LD quando non si utilizzano opzioni e restituisce i dati di contesto di una singola entità.  
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
Vedere [FAQ 10](https://smartdatamodels.org/index.php/faqs/) per ottenere una risposta su come gestire le unità di grandezza.  
<!-- /95-Units -->  
<!-- 97-LastFooter -->  
---  
[Smart Data Models](https://smartdatamodels.org) +++ [Contribution Manual](https://bit.ly/contribution_manual) +++ [About](https://bit.ly/Introduction_SDM)<!-- /97-LastFooter -->  
