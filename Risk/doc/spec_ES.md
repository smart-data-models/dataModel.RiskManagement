Entidad: Riesgo  
===============  
[Licencia abierta](https://github.com/smart-data-models//dataModel.RiskManagement/blob/master/Risk/LICENSE.md)  
[documento generado automáticamente](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
Descripción global: **Efecto de la incertidumbre sobre los objetivos. Un efecto es una desviación de lo esperado -positiva y/o negativa-. Los objetivos pueden tener diferentes aspectos (como objetivos financieros, de salud y seguridad, y medioambientales) y pueden aplicarse a diferentes niveles (como estratégico, de toda la organización, de proyecto, de producto y de proceso). El riesgo se suele caracterizar por la referencia a posibles acontecimientos y consecuencias, o una combinación de éstos. El riesgo se expresa a menudo en términos de una combinación de las consecuencias de un evento (incluyendo cambios en las circunstancias) y la probabilidad asociada de ocurrencia. La incertidumbre es el estado, incluso parcial, de deficiencia de información relacionada con, la comprensión o el conocimiento de, un evento, su consecuencia o probabilidad.**  

## Lista de propiedades  

- `address`: La dirección postal  - `affects`: Conjunto de URIs relacionadas con la zona a la que podría afectar el riesgo.  - `alternateName`: Un nombre alternativo para este artículo  - `areaServed`: La zona geográfica en la que se presta un servicio o se ofrece un artículo  - `consequence`: La consecuencia causada por la materialización de un riesgo. Enum:'calidad, cantidad, reputación'  - `dataProvider`: Una secuencia de caracteres que identifica al proveedor de la entidad de datos armonizada.  - `dateCreated`: Marca de tiempo de creación de la entidad. Suele ser asignada por la plataforma de almacenamiento.  - `dateModified`: Marca de tiempo de la última modificación de la entidad. Normalmente será asignada por la plataforma de almacenamiento.  - `description`: La descripción del riesgo en un lenguaje natural  - `event`: Ocurrencia o cambio de un conjunto particular de circunstancias. Enum:'destrucción, interrupción, manipulación, contaminación'  - `id`: Identificador único de la entidad  - `isOutputOf`: Conjunto de URI de las diferentes capas de datos geoespaciales  - `linkTo`: Conjunto de URIs relacionados con las medidas de mitigación.  - `location`: Referencia Geojson al elemento. Puede ser Point, LineString, Polygon, MultiPoint, MultiLineString o MultiPolygon  - `mitigatedBy`: Conjunto de URIs relacionados con las medidas de mitigación.  - `name`: El nombre de este artículo.  - `owner`: Una lista que contiene una secuencia de caracteres codificada en JSON que hace referencia a los identificadores únicos de los propietarios  - `seeAlso`: lista de uri que apuntan a recursos adicionales sobre el artículo  - `severity`: El impacto generado por el Riesgo asociado. Enum:'BAJO, MEDIO, ALTO'  - `source`: Una secuencia de caracteres que indica la fuente original de los datos de la entidad en forma de URL. Se recomienda que sea el nombre de dominio completo del proveedor de origen, o la URL del objeto de origen.  - `sourceRisk`: Conjunto de URIs relacionados con la fuente del Riesgo que puede ser una Persona, un Sistema Digital, etc.  - `threat`: La causa potencial de un incidente que puede dar lugar a una violación de la seguridad de la información o comprometer las operaciones de la empresa. Enum:'ciber, ciberfísico, físico'  - `type`: Tipo de entidad NGSI-LD. Debe ser igual a Riesgo.  - `validFrom`: El momento en el que se termina la materialización del riesgo.  - `validTo`: El momento en que se inicia la materialización del riesgo.    
Propiedades requeridas  
- `id`  - `type`  ## Descripción del modelo de datos de las propiedades  
Ordenados alfabéticamente (haga clic para ver los detalles)  
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
## Ejemplo de carga útil  
#### Riesgo NGSI-v2 valores-clave Ejemplo  
Aquí hay un ejemplo de un Riesgo en formato JSON-LD como valores-clave. Esto es compatible con NGSI-v2 cuando se utiliza `options=keyValues` y devuelve los datos de contexto de una entidad individual.  
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
#### Riesgo NGSI-v2 normalizado Ejemplo  
He aquí un ejemplo de un Riesgo en formato JSON-LD normalizado. Esto es compatible con NGSI-v2 cuando no se utilizan opciones y devuelve los datos de contexto de una entidad individual.  
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
#### Riesgo NGSI-LD valores-clave Ejemplo  
Aquí hay un ejemplo de un Riesgo en formato JSON-LD como valores-clave. Esto es compatible con NGSI-LD cuando se utiliza `options=keyValues` y devuelve los datos de contexto de una entidad individual.  
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
#### Riesgo NGSI-LD normalizado Ejemplo  
He aquí un ejemplo de un Riesgo en formato JSON-LD normalizado. Esto es compatible con NGSI-LD cuando no se utilizan opciones y devuelve los datos de contexto de una entidad individual.  
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
Consulte [FAQ 10](https://smartdatamodels.org/index.php/faqs/) para obtener una respuesta sobre cómo tratar las unidades de magnitud