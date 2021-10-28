Entità: Mitigazione  
===================  
[Licenza aperta](https://github.com/smart-data-models//dataModel.RiskManagement/blob/master/Mitigation/LICENSE.md)  
[documento generato automaticamente](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
Descrizione globale: **La mitigazione delle conseguenze riduce il rischio dopo che un evento si è verificato. Pertanto, questa misura di riduzione del rischio non è adatta per la riduzione della probabilità di eventi, ma per la riduzione delle conseguenze negative. Esempi di misure di mitigazione delle conseguenze potrebbero essere, ad esempio, la costruzione di tubi di collegamento con i fornitori d'acqua vicini per ottenere l'acqua da loro in caso di interruzione della propria fornitura d'acqua, la costruzione di pozzi per una fornitura d'emergenza o la firma di contratti con organizzazioni che forniscono piccoli impianti mobili di trattamento dell'acqua d'emergenza.  

## Elenco delle proprietà  

- `address`: L'indirizzo postale  - `affects`: Serie di URI relativi all'area in cui il rischio potrebbe colpire.  - `alternateName`: Un nome alternativo per questa voce  - `apply`: Matrice di URI relativi alle misure associate alla mitigazione.  - `areaServed`: L'area geografica in cui viene fornito un servizio o un articolo offerto  - `consequence`: La conseguenza causata dalla materializzazione di un rischio. Enum:'qualità, quantità, reputazione'.  - `dataProvider`: Una sequenza di caratteri che identifica il fornitore dell'entità di dati armonizzata.  - `dateCreated`: Timestamp di creazione dell'entità. Questo sarà di solito assegnato dalla piattaforma di archiviazione.  - `dateModified`: Timestamp dell'ultima modifica dell'entità. Questo sarà di solito assegnato dalla piattaforma di archiviazione.  - `description`: La descrizione del rischio in un linguaggio naturale  - `event`: Avvenimento o cambiamento di un particolare insieme di circostanze. Enum:'distruzione, interruzione, manipolazione, inquinamento'.  - `id`: Identificatore unico dell'entità  - `likelihood`: Probabilità che qualcosa accada. Nella terminologia della gestione del rischio, la parola "probabilità" è usata per riferirsi alla possibilità che qualcosa accada, sia definita, misurata o determinata oggettivamente o soggettivamente, qualitativamente o quantitativamente, e descritta usando termini generali o matematicamente (include anche i tipi di probabilità offerti come LoAH, LoAS, LoC)  - `location`: Riferimento Geojson all'elemento. Può essere Point, LineString, Polygon, MultiPoint, MultiLineString o MultiPolygon  - `name`: Il nome di questo articolo.  - `owner`: Una lista contenente una sequenza di caratteri codificata in JSON che si riferisce agli ID unici dei proprietari  - `seeAlso`: elenco di uri che puntano a risorse aggiuntive sull'elemento  - `source`: Una sequenza di caratteri che dà la fonte originale dei dati dell'entità come URL. Si raccomanda di essere il nome di dominio completamente qualificato del fornitore di origine, o l'URL dell'oggetto di origine.  - `threat`: La causa potenziale di un incidente che può risultare in una violazione della sicurezza delle informazioni o compromettere le operazioni aziendali. Enum:'cyber, fisico, cyber-fisico'.  - `type`: Tipo di entità NGSI-LD. Deve essere uguale a Risk.  - `validFrom`: Il momento in cui la materializzazione del rischio è finita.  - `validTo`: Il momento in cui inizia la materializzazione del rischio.    
Proprietà richieste  
## Descrizione del modello di dati delle proprietà  
Ordinati in ordine alfabetico (clicca per i dettagli)  
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
```  
</details>    
## Esempio di payloads  
#### Mitigazione dei valori chiave NGSI-v2 Esempio  
Ecco un esempio di una Mitigazione in formato JSON-LD come valori-chiave. Questo è compatibile con NGSI-v2 quando si usa `options=keyValues` e restituisce i dati di contesto di una singola entità.  
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
Non disponibile l'esempio di una Mitigazione in formato JSON-LD come normalizzato. Questo è compatibile con NGSI-v2 quando non usa opzioni e restituisce i dati di contesto di una singola entità.  
#### Mitigazione dei valori chiave NGSI-LD Esempio  
Ecco un esempio di una Mitigazione in formato JSON-LD come key-values. Questo è compatibile con NGSI-LD quando si usa `options=keyValues` e restituisce i dati di contesto di una singola entità.  
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
  ],  
  "@context": [  
    "https://smartdatamodels.org/context.jsonld"  
  ]  
}  
```  
Non disponibile l'esempio di una Mitigazione in formato JSON-LD come normalizzato. Questo è compatibile con NGSI-LD quando non usa opzioni e restituisce i dati di contesto di una singola entità.  
