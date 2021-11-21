Entité : Hazard  
===============  
[Licence ouverte] (https://github.com/smart-data-models//dataModel.RiskManagement/blob/master/Hazard/LICENSE.md)  
[document généré automatiquement] (https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
Description globale : **Cette entité contient une description harmonisée d'une entité de risque générique conçue pour le domaine de l'évaluation des risques**.  

## Liste des propriétés  

- `address`: L'adresse postale  - `alternateName`: Un nom alternatif pour cet élément  - `analysisType`: Le type d'analyse.  - `analyzedAt`: L'heure à laquelle l'analyse s'est terminée  - `areaServed`: La zone géographique où un service ou un article offert est fourni  - `contentInformation`: Tableau d'objets décrivant la carte des dangers et contenant ses identifiants, valeurs et couleurs.  - `createsLayers`: Tableau d'URIs des couches créées par cet aléa.  - `dataProvider`: Une séquence de caractères identifiant le fournisseur de l'entité de données harmonisées.  - `dateCreated`: Horodatage de la création de l'entité. Celui-ci sera généralement attribué par la plateforme de stockage.  - `dateModified`: Horodatage de la dernière modification de l'entité. Il sera généralement attribué par la plateforme de stockage.  - `description`: Une description de cet article  - `id`: Identifiant unique de l'entité  - `isAffectedByEO`: L'ID de l'analyse d'impact environnemental qui a identifié ce danger.  - `isAffectedByGIS`: L'ID de la donnée SIG qui a identifié ce danger.  - `location`: Référence Geojson à l'élément. Il peut s'agir d'un point, d'une ligne, d'un polygone, d'un point multiple, d'une ligne multiple ou d'un polygone multiple.  - `name`: Le nom de cet élément.  - `owner`: Une liste contenant une séquence de caractères codée en JSON référençant les identifiants uniques du ou des propriétaires.  - `seeAlso`: liste d'uri pointant vers des ressources supplémentaires sur l'élément  - `source`: Une séquence de caractères donnant la source originale des données de l'entité sous forme d'URL. Il est recommandé d'utiliser le nom de domaine entièrement qualifié du fournisseur source ou l'URL de l'objet source.  - `type`: Type d'entité NGSI-LD. Il doit être égal à Hazard.    
Propriétés requises  
- `id`  - `type`  ## Description des propriétés du modèle de données  
Classés par ordre alphabétique (cliquez pour plus de détails)  
<details><summary><strong>full yaml details</strong></summary>    
```yaml  
Hazard:    
  description: 'This entity contains a harmonised description of a generic Hazard entity made for the Risk Assessment domain.'    
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
    alternateName:    
      description: 'An alternative name for this item'    
      type: string    
      x-ngsi:    
        type: Property    
    analysisType:    
      description: 'The type of analysis.'    
      type: string    
      x-ngsi:    
        type: Property    
    analyzedAt:    
      description: 'The time at which the analysis finished'    
      format: date-time    
      type: string    
      x-ngsi:    
        model: https://schema.org/Time    
        type: Property    
    areaServed:    
      description: 'The geographic area where a service or offered item is provided'    
      type: string    
      x-ngsi:    
        model: https://schema.org/Text    
        type: Property    
    contentInformation:    
      description: 'Array of objects that describes the Hazard Map and contains its ids, values and colors.'    
      items:    
        properties:    
          color:    
            type: string    
          id:    
            type: number    
          value:    
            type: string    
        type: object    
      type: array    
      x-ngsi:    
        type: Property    
    createsLayers:    
      description: 'Array of URIs of the layers created by this hazard.'    
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
      description: 'A description of this item'    
      type: string    
      x-ngsi:    
        type: Property    
    id:    
      anyOf: &hazard_-_properties_-_owner_-_items_-_anyof    
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
    isAffectedByEO:    
      anyOf:    
        - description: 'Property. Identifier format of any NGSI entity'    
          maxLength: 256    
          minLength: 1    
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
          type: string    
        - description: 'Property. Identifier format of any NGSI entity'    
          format: uri    
          type: string    
      description: 'The ID of the EOAnalysis that identified this hazard.'    
      x-ngsi:    
        type: Relationship    
    isAffectedByGIS:    
      anyOf:    
        - description: 'Property. Identifier format of any NGSI entity'    
          maxLength: 256    
          minLength: 1    
          pattern: ^[\w\-\.\{\}\$\+\*\[\]`|~^@!,:\\]+$    
          type: string    
        - description: 'Property. Identifier format of any NGSI entity'    
          format: uri    
          type: string    
      description: 'The ID of the GISData that identified this hazard.'    
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
    name:    
      description: 'The name of this item.'    
      type: string    
      x-ngsi:    
        type: Property    
    owner:    
      description: 'A List containing a JSON encoded sequence of characters referencing the unique Ids of the owner(s)'    
      items:    
        anyOf: *hazard_-_properties_-_owner_-_items_-_anyof    
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
    type:    
      description: 'NGSI-LD Entity Type. It must be equal to Hazard.'    
      enum:    
        - Hazard    
      type: string    
      x-ngsi:    
        type: Property    
  required:    
    - id    
    - type    
  type: object    
  x-derived-from: ""    
  x-disclaimer: 'Redistribution and use in source and binary forms, with or without modification, are permitted  provided that the license conditions are met. Copyleft (c) 2021 Contributors to Smart Data Models Program'    
  x-license-url: https://github.com/smart-data-models/dataModel.RiskManagement/blob/master/Hazard/LICENSE.md    
  x-model-schema: https://raw.githubusercontent.com/smart-data-models/dataModel.RiskAssessment/master/Hazard/schema.json    
  x-model-tags: ""    
  x-version: 0.0.1    
```  
</details>    
## Exemples de charges utiles  
#### Hazard NGSI-v2 key-values Exemple  
Voici un exemple d'un Hazard au format JSON-LD en tant que valeurs-clés. Ceci est compatible avec NGSI-v2 lorsque l'on utilise `options=keyValues` et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "Hazard:01",  
  "type": "Hazard",  
  "analyzedAt": "2021-02-18T12:00:00Z",  
  "analysisType": "Flood Hazard Maps",  
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
  "contentInformation": [  
    {  
      "id": 0,  
      "value": "Low",  
      "color": "(170, 255, 0)"  
    },  
    {  
      "id": 1,  
      "value": "Medium",  
      "color": "(255, 255, 0)"  
    },  
    {  
      "id": 2,  
      "value": "High",  
      "color": "(255, 170, 0)"  
    }  
  ],  
  "isAffectedByGIS": "GISData.01",  
  "isAffectedByEO": "EOAnalysis.01",  
  "createsLayers": [  
    "EOGeoDataLayer.05",  
    "EOGeoDataLayer.06"  
  ]  
}  
```  
#### Danger NGSI-v2 normalisé Exemple  
Voici un exemple d'un Hazard au format JSON-LD tel que normalisé. Ce format est compatible avec NGSI-v2 lorsqu'il n'utilise pas d'options et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "Hazard.01",  
  "type": "Hazard",  
  "analyzedAt": {  
    "type": "DateTime",  
    "value": "2021-02-18T12:00:00Z"  
  },  
  "analysisType": {  
    "type": "Text",  
    "value": "Flood Hazard Maps"  
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
  "contentInformation": {  
    "type": "Array",  
    "value": [  
      {  
        "id": 0,  
        "value": "Low",  
        "color": "(170, 255, 0)"  
      },  
      {  
        "id": 1,  
        "value": "Medium",  
        "color": "(255, 255, 0)"  
      },  
      {  
        "id": 2,  
        "value": "High",  
        "color": "(255, 170, 0)"  
      }  
    ]  
  },  
  "isAffectedByGIS": {  
    "type": "Text",  
    "value": "GISData.01"  
  },  
  "isAffectedByEO": {  
    "type": "Text",  
    "value": "EOAnalysis.01"  
  },  
  "createsLayers": {  
    "type": "Array",  
    "value": [  
      "EOGeoDataLayer.05",  
      "EOGeoDataLayer.06"  
    ]  
  }  
}  
```  
#### Valeurs-clés NGSI-LD de danger Exemple  
Voici un exemple d'un Hazard au format JSON-LD en tant que key-values. Ceci est compatible avec NGSI-LD quand on utilise `options=keyValues` et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "urn:ngsi-ld:Hazard:01",  
  "type": "Hazard",  
  "analyzedAt": "2021-02-18T12:00:00Z",  
  "analysisType": "Flood Hazard Maps",  
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
  "contentInformation": [  
    {  
      "id": 0,  
      "value": "Low",  
      "color": "(170, 255, 0)"  
    },  
    {  
      "id": 1,  
      "value": "Medium",  
      "color": "(255, 255, 0)"  
    },  
    {  
      "id": 2,  
      "value": "High",  
      "color": "(255, 170, 0)"  
    }  
  ],  
  "isAffectedByGIS": "urn:ngsi-ld:GISData:01",  
  "isAffectedByEO": "urn:ngsi-ld:EOAnalysis:01",  
  "createsLayers": [  
    "urn:ngsi-ld:EOGeoDataLayer:05",  
    "urn:ngsi-ld:EOGeoDataLayer:06"  
  ],  
  "@context": [  
    "https://smartdatamodels.org/context.jsonld"  
  ]  
}  
```  
#### Risque NGSI-LD normalisé Exemple  
Voici un exemple d'un Hazard au format JSON-LD tel que normalisé. Ce format est compatible avec NGSI-LD lorsqu'il n'utilise pas d'options et renvoie les données contextuelles d'une entité individuelle.  
```json  
{  
  "id": "urn:ngsi-ld:Hazard:01",  
  "type": "Hazard",  
  "analyzedAt": {  
    "type": "Property",  
    "value": {  
      "@type": "DateTime",  
      "@value": "2021-02-18T12:00:00Z"  
    }  
  },  
  "analysisType": {  
    "type": "Property",  
    "value": "Flood Hazard Maps"  
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
  "contentInformation": {  
    "type": "Property",  
    "value": [  
      {  
        "id": 0,  
        "value": "Low",  
        "color": "(170, 255, 0)"  
      },  
      {  
        "id": 1,  
        "value": "Medium",  
        "color": "(255, 255, 0)"  
      },  
      {  
        "id": 2,  
        "value": "High",  
        "color": "(255, 170, 0)"  
      }  
    ]  
  },  
  "isAffectedByGIS": {  
    "type": "Relationship",  
    "object": "urn:ngsi-ld:GISData.01"  
  },  
  "isAffectedByEO": {  
    "type": "Relationship",  
    "object": "urn:ngsi-ld:EOAnalysis.01"  
  },  
  "createsLayers": {  
    "type": "Property",  
    "object": [  
      "urn:ngsi-ld:EOGeoDataLayer.05",  
      "urn:ngsi-ld:EOGeoDataLayer.06"  
    ]  
  }  
}  
```  
