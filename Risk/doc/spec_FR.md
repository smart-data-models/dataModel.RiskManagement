Entité : Risque  
===============  
[Licence ouverte] (https://github.com/smart-data-models//dataModel.RiskManagement/blob/master/Risk/LICENSE.md)  
[document généré automatiquement] (https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
Description globale : **Effet de l'incertitude sur les objectifs. Un effet est une déviation par rapport à ce qui est attendu - positif et/ou négatif. Les objectifs peuvent avoir différents aspects (tels que des objectifs financiers, de santé et de sécurité, et environnementaux) et peuvent s'appliquer à différents niveaux (tels que stratégique, à l'échelle de l'organisation, projet, produit et processus). Le risque est souvent caractérisé par la référence à des événements et des conséquences potentiels, ou une combinaison de ceux-ci. Le risque est souvent exprimé en termes d'une combinaison des conséquences d'un événement (y compris les changements de circonstances) et de la probabilité d'occurrence associée. L'incertitude est l'état, même partiel, d'insuffisance d'informations relatives à la compréhension ou à la connaissance d'un événement, de ses conséquences ou de sa probabilité.  

## Liste des propriétés  

- `address`: L'adresse postale  - `affects`: Tableau d'URIs liés à la zone dans laquelle le risque pourrait affecter.  - `alternateName`: Un nom alternatif pour cet élément  - `areaServed`: La zone géographique où un service ou un article offert est fourni  - `consequence`: La conséquence causée par la matérialisation d'un risque. Enum : 'qualité, quantité, réputation'.  - `dataProvider`: Une séquence de caractères identifiant le fournisseur de l'entité de données harmonisées.  - `dateCreated`: Horodatage de la création de l'entité. Celui-ci sera généralement attribué par la plateforme de stockage.  - `dateModified`: Horodatage de la dernière modification de l'entité. Il sera généralement attribué par la plateforme de stockage.  - `description`: La description du risque dans un langage naturel  - `event`: Occurrence ou changement d'un ensemble particulier de circonstances. Enum : 'destruction, interruption, manipulation, pollution'.  - `id`: Identifiant unique de l'entité  - `isOutputOf`: Tableau des URI des différentes couches de données géospatiales.  - `linkTo`: Tableau des URI liés aux mesures d'atténuation.  - `location`: Référence Geojson à l'élément. Il peut s'agir d'un point, d'une ligne, d'un polygone, d'un point multiple, d'une ligne multiple ou d'un polygone multiple.  - `mitigatedBy`: Tableau des URI liés aux mesures d'atténuation.  - `name`: Le nom de cet élément.  - `owner`: Une liste contenant une séquence de caractères codée en JSON référençant les identifiants uniques du ou des propriétaires.  - `seeAlso`: liste d'uri pointant vers des ressources supplémentaires sur l'élément  - `severity`: L'impact généré par le risque associé. Enum : 'LOW, MEDIUM, HIGH' (faible, moyen, élevé)  - `source`: Une séquence de caractères donnant la source originale des données de l'entité sous forme d'URL. Il est recommandé d'utiliser le nom de domaine entièrement qualifié du fournisseur source ou l'URL de l'objet source.  - `sourceRisk`: Tableau d'URI liés à la source du risque, qui peut être une personne, un système numérique, etc.  - `threat`: La cause potentielle d'un incident qui peut entraîner une violation de la sécurité des informations ou compromettre les opérations commerciales. Enum : 'cyber, cyber-physique, physique'.  - `type`: Type d'entité NGSI-LD. Il doit être égal à Risk.  - `validFrom`: L'heure à laquelle la matérialisation du risque est terminée.  - `validTo`: L'heure à laquelle la matérialisation du risque commence.    
Propriétés requises  
- `id`  - `type`  ## Description des propriétés du modèle de données  
Classés par ordre alphabétique (cliquez pour plus de détails)  
<details><summary><strong>full yaml details</strong></summary>    
```yaml  
Risk:    
  description: 'Effect of uncertainty on objectives. An effect is a deviation from the expected—positive and/or negative. Objectives can have different aspects (such as financial, health and safety, and environmental goals) and can apply at different levels (such as strategic, organization-wide, project, product and process). Risk is often characterized by reference to potential events and consequences, or a combination of these. Risk is often expressed in terms of a combination of the consequences of an event (including changes in circumstances) and the associated likelihood of occurrence. Uncertainty is the state, even partial, of deficiency of information related to, understanding or knowledge of, an event, its consequence, or likelihood.'    
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
      anyOf: &risk_-_properties_-_owner_-_items_-_anyof    
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
    isOutputOf:    
      description: 'Array of URIs of the different Geospatial Data Layers'    
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
    linkTo:    
      description: 'Array of URIs related to the Mitigation Measures.'    
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
    mitigatedBy:    
      description: 'Array of URIs related to the Mitigation Measures.'    
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
    name:    
      description: 'The name of this item.'    
      type: string    
      x-ngsi:    
        type: Property    
    owner:    
      description: 'A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)'    
      items:    
        anyOf: *risk_-_properties_-_owner_-_items_-_anyof    
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
    severity:    
      description: 'The impact generated by the associated Risk. Enum:''LOW, MEDIUM, HIGH'''    
      enum:    
        - LOW    
        - MEDIUM    
        - HIGH    
      type: string    
      x-ngsi:    
        type: Property    
    source:    
      description: 'A sequence of characters giving the original source of the entity data as a URL. Recommended to be the fully qualified domain name of the source provider, or the URL to the source object.'    
      type: string    
      x-ngsi:    
        type: Property    
    sourceRisk:    
      description: 'Array of URIs related to the source of the Risk that can be a Person, a Digital System, etc.'    
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
    threat:    
      description: 'The potential cause of an incident that may result in a breach of information security or compromise business operations. Enum:''cyber, cyber-physical, physical'''    
      enum:    
        - cyber    
        - cyber-physical    
        - physical    
      type: string    
      x-ngsi:    
        type: Property    
    type:    
      description: 'NGSI-LD Entity Type. It must be equal to Risk.'    
      enum:    
        - Risk    
      type: string    
      x-ngsi:    
        type: Property    
    validFrom:    
      description: 'The time at which the risk materialization is finished.'    
      format: date-time    
      type: string    
      x-ngsi:    
        model: https://schema.org/DateTime    
        type: Property    
    validTo:    
      description: 'The time at which the risk materialization is started.'    
      format: date-time    
      type: string    
      x-ngsi:    
        model: https://schema.org/DateTime    
        type: Property    
  required:    
    - id    
    - type    
  type: object    
```  
</details>    
## Exemples de charges utiles  
#### Risque Valeurs-clés NGSI-v2 Exemple  
Voici un exemple de risque au format JSON-LD en tant que valeurs-clés. Ceci est compatible avec NGSI-v2 lorsque l'on utilise `options=keyValues` et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "urn:ngsi-ld:Risk:01",  
  "type": "Risk",  
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
  "consequence": "reputation",  
  "description": "Risk01 Corresponds to a failure in the Pumps of the water infraestructure",  
  "event": "interruption",  
  "threat": "physical",  
  "severity": "MEDIUM",  
  "isOutputOf": [  
    "urn:ngsi-ld:EOGeoDataLayer:01",  
    "urn:ngsi-ld:EOGeoDataLayer:01"  
  ],  
  "sourceRisk": [  
    "urn:ngsi-ld:Attacker:01"  
  ],  
  "affects": [  
    "urn:ngsi-ld:ServiceGISData:01"  
  ],  
  "mitigatedBy": [  
    "urn:ngsi-ld:Mitigation:01"  
  ],  
  "linkTo": [  
    "urn:ngsi-ld:Risk:02"  
  ]  
}  
```  
#### Risque NGSI-v2 normalisé Exemple  
Voici un exemple de risque au format JSON-LD tel que normalisé. Ce format est compatible avec la NGSI-v2 lorsqu'il n'utilise pas d'options et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "urn:ngsi-ld:Risk:01",  
  "type": "Risk",  
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
  "consequence": {  
    "type": "Text",  
    "value": "reputation"  
  },  
  "description": {  
    "type": "Text",  
    "value": "Risk01 Corresponds to a failure in the Pumps of the water infraestructure"  
  },  
  "event": {  
    "type": "Text",  
    "value": "interruption"  
  },  
  "threat": {  
    "type": "Text",  
    "value": "physical"  
  },  
  "severity": {  
    "type": "Text",  
    "value": "MEDIUM"  
  },  
  "isOutputOf": {  
    "type": "Relationship",  
    "value": [  
      "urn:ngsi-ld:EOGeoDataLayer:01",  
      "urn:ngsi-ld:EOGeoDataLayer:01"  
    ]  
  },  
  "sourceRisk": {  
    "type": "Relationship",  
    "value": [  
      "urn:ngsi-ld:Attacker:01"  
    ]  
  },  
  "affects": {  
    "type": "Relationship",  
    "value": [  
      "urn:ngsi-ld:ServiceGISData:01"  
    ]  
  },  
  "mitigatedBy": {  
    "type": "Relationship",  
    "value": [  
      "urn:ngsi-ld:Mitigation:01"  
    ]  
  },  
  "linkTo": {  
    "type": "Relationship",  
    "value": [  
      "urn:ngsi-ld:Risk:02"  
    ]  
  }  
}  
```  
#### Risque Valeurs-clés NGSI-LD Exemple  
Voici un exemple de risque au format JSON-LD en tant que valeurs-clés. Ceci est compatible avec NGSI-LD en utilisant `options=keyValues` et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "urn:ngsi-ld:Risk:01",  
  "type": "Risk",  
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
  "consequence": "reputation",  
  "description": "Risk01 Corresponds to a failure in the Pumps of the water infraestructure",  
  "event": "interruption",  
  "threat": "physical",  
  "severity": "MEDIUM",  
  "isOutputOf": [  
    "urn:ngsi-ld:EOGeoDataLayer:01",  
    "urn:ngsi-ld:EOGeoDataLayer:01"  
  ],  
  "sourceRisk": [  
    "urn:ngsi-ld:Attacker:01"  
  ],  
  "affects": [  
    "urn:ngsi-ld:ServiceGISData:01"  
  ],  
  "mitigatedBy": [  
    "urn:ngsi-ld:Mitigation:01"  
  ],  
  "linkTo": [  
    "urn:ngsi-ld:Risk:02"  
  ],  
  "@context": [  
    "https://smartdatamodels.org/context.jsonld"  
  ]  
}  
```  
#### Risque NGSI-LD normalisé Exemple  
Voici un exemple de risque au format JSON-LD tel que normalisé. Ce format est compatible avec NGSI-LD lorsqu'il n'utilise pas d'options et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "@id": "urn:ngsi-ld:Risk:01",  
  "@type": "Risk",  
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
  "location": {  
    "@type": "Geoproperty",  
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
  "consequence": {  
    "type": "Property",  
    "value": "Reputation"  
  },  
  "description": {  
    "type": "Property",  
    "value": "Risk01 Corresponds to a failure in the Pumps of the water infraestructure"  
  },  
  "event": {  
    "type": "Property",  
    "value": "interruption"  
  },  
  "threat": {  
    "type": "Property",  
    "value": "physical"  
  },  
  "severity": {  
    "type": "Property",  
    "value": "MEDIUM"  
  },  
  "isOutputOf": {  
    "type": "Relationship",  
    "object": [  
      "urn:ngsi-ld:EOGeoDataLayer:01",  
      "urn:ngsi-ld:EOGeoDataLayer:01"  
    ]  
  },  
  "sourceRisk": {  
    "type": "Relationship",  
    "object": [  
      "urn:ngsi-ld:Attacker:01"  
    ]  
  },  
  "affects": {  
    "type": "Relationship",  
    "value": [  
      "urn:ngsi-ld:ServiceGISData:01"  
    ]  
  },  
  "mitigatedBy": {  
    "type": "Relationship",  
    "value": [  
      "urn:ngsi-ld:Mitigation:01"  
    ]  
  },  
  "linkTo": {  
    "type": "Relationship",  
    "value": [  
      "urn:ngsi-ld:Risk:02"  
    ]  
  },  
  "@context": [  
    "https://smartdatamodels.org/context.jsonld"  
  ]  
}  
```  
