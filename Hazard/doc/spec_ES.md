Entidad: Peligro  
================  
[Licencia abierta](https://github.com/smart-data-models//dataModel.RiskManagement/blob/master/Hazard/LICENSE.md)  
[documento generado automáticamente](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
Descripción global: **Esta entidad contiene una descripción armonizada de una entidad genérica de Peligros hecha para el dominio de Evaluación de Riesgos.**  

## Lista de propiedades  

- `address`: La dirección postal  - `alternateName`: Un nombre alternativo para este artículo  - `analysisType`: El tipo de análisis.  - `analyzedAt`:   - `areaServed`: La zona geográfica en la que se presta un servicio o se ofrece un artículo  - `contentInformation`: Matriz de objetos que describe el Mapa de Peligros y contiene sus ids, valores y colores.  - `createsLayers`: Matriz de URIs de las capas creadas por este peligro.  - `dataProvider`: Una secuencia de caracteres que identifica al proveedor de la entidad de datos armonizada.  - `dateCreated`: Marca de tiempo de creación de la entidad. Suele ser asignada por la plataforma de almacenamiento.  - `dateModified`: Marca de tiempo de la última modificación de la entidad. Normalmente será asignada por la plataforma de almacenamiento.  - `description`: Una descripción de este artículo  - `id`: Identificador único de la entidad  - `isAffectedByEO`: El ID del EOAnalysis que identificó este peligro.  - `isAffectedByGIS`: El ID del GISData que identificó este peligro.  - `location`: Referencia Geojson al elemento. Puede ser Point, LineString, Polygon, MultiPoint, MultiLineString o MultiPolygon  - `name`: El nombre de este artículo.  - `owner`: Una lista que contiene una secuencia de caracteres codificada en JSON que hace referencia a los identificadores únicos de los propietarios  - `seeAlso`: lista de uri que apuntan a recursos adicionales sobre el artículo  - `source`: Una secuencia de caracteres que indica la fuente original de los datos de la entidad en forma de URL. Se recomienda que sea el nombre de dominio completo del proveedor de origen, o la URL del objeto de origen.  - `type`: Tipo de entidad NGSI-LD. Debe ser igual a Peligro.    
Propiedades requeridas  
- `id`  - `type`  ## Descripción del modelo de datos de las propiedades  
Ordenados alfabéticamente (haga clic para ver los detalles)  
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
      description: ""    
      format: date-time    
      type: string    
      x-ngsi:    
        model: https://schema.org/Time.    
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
```  
</details>    
## Ejemplo de carga útil  
#### Peligro NGSI-v2 valores-clave Ejemplo  
Aquí hay un ejemplo de un Hazard en formato JSON-LD como key-values. Esto es compatible con NGSI-v2 cuando se utiliza `options=keyValues` y devuelve los datos de contexto de una entidad individual.  
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
#### Peligro NGSI-v2 normalizado Ejemplo  
Este es un ejemplo de un Hazard en formato JSON-LD normalizado. Esto es compatible con NGSI-v2 cuando no se utilizan opciones y devuelve los datos de contexto de una entidad individual.  
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
#### Peligro NGSI-LD key-values Ejemplo  
Aquí hay un ejemplo de un Hazard en formato JSON-LD como key-values. Esto es compatible con NGSI-LD cuando se utiliza `options=keyValues` y devuelve los datos de contexto de una entidad individual.  
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
#### Peligro NGSI-LD normalizado Ejemplo  
Este es un ejemplo de un Hazard en formato JSON-LD normalizado. Esto es compatible con NGSI-LD cuando no se utilizan opciones y devuelve los datos de contexto de una entidad individual.  
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
