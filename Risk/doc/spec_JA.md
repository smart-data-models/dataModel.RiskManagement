エンティティリスク  
=========  
[オープンライセンス](https://github.com/smart-data-models//dataModel.RiskManagement/blob/master/Risk/LICENSE.md)  
[document generated automatically](https://docs.google.com/presentation/d/e/2PACX-1vTs-Ng5dIAwkg91oTTUdt8ua7woBXhPnwavZ0FxgR8BsAI_Ek3C5q97Nd94HS8KhP-r_quD4H0fgyt3/pub?start=false&loop=false&delayms=3000#slide=id.gb715ace035_0_60)  
グローバルな説明。**不確実性が目標に与える影響。影響とは、期待されたものからの逸脱であり、正または負である。目的には様々な側面があり（財務、安全衛生、環境目標など）、様々なレベル（戦略、組織全体、プロジェクト、製品、プロセスなど）で適用することができる。リスクは多くの場合、潜在的な事象や結果、あるいはこれらの組み合わせを参照して特徴付けられる。リスクは、事象（状況の変化を含む）の結果と、それに関連する発生の可能性の組み合わせで表現されることが多い。不確実性とは、部分的であっても、事象、その結果、または可能性に関する理解や知識が不足している状態のことである**。  

## プロパティのリスト  

- `address`: 郵送先住所  - `affects`: リスクの影響を受ける可能性のある領域に関連するURIの配列。  - `alternateName`: このアイテムの別称  - `areaServed`: サービスや提供されるアイテムが提供される地理的なエリア  - `consequence`: リスクの具体化によって引き起こされる結果。Enum:'quality, quantity, reputation' (品質、量、評判)  - `dataProvider`: 調和されたデータ・エンティティの提供者を識別する一連の文字。  - `dateCreated`: エンティティの作成タイムスタンプ。これは通常、ストレージプラットフォームによって割り当てられます。  - `dateModified`: エンティティが最後に変更された時のタイムスタンプ。これは通常、ストレージプラットフォームによって割り当てられます。  - `description`: 自然言語によるリスクの説明  - `event`: 特定の状況セットの発生または変化。Enum:'destruction, interruption, manipulation, pollution' (破壊、中断、操作、汚染)  - `id`: エンティティのユニークな識別子  - `isOutputOf`: 異なる地理空間データレイヤーのURIの配列  - `linkTo`: 緩和策に関連するURIの配列。  - `location`: アイテムへのGeojson参照。Point、LineString、Polygon、MultiPoint、MultiLineString、MultiPolygonのいずれかです。  - `mitigatedBy`: 緩和策に関連するURIの配列。  - `name`: このアイテムの名前です。  - `owner`: オーナーのIDを参照するJSONエンコードされた文字列を含むリスト  - `seeAlso`: アイテムに関する追加リソースを示すuriのリスト  - `severity`: 関連するリスクによって発生するインパクト。Enum:'LOW, MEDIUM, HIGH' (低、中、高)  - `source`: エンティティデータのオリジナルソースをURLで示す一連の文字。ソースプロバイダの完全修飾ドメイン名、またはソースオブジェクトのURLであることが推奨されます。  - `sourceRisk`: リスクの発生源に関連するURIの配列で、人やデジタルシステムなどが考えられる。  - `threat`: 情報セキュリティの侵害やビジネスオペレーションの危険をもたらす可能性のあるインシデントの潜在的な原因。Enum:'cyber, cyber-physical, physical' (サイバー、サイバーフィジカル、フィジカル)  - `type`: NGSI-LD エンティティタイプ。Riskと同じでなければなりません。  - `validFrom`: リスクの具体化が終了した時間。  - `validTo`: リスクの具体化が開始された時間です。    
必須項目  
- `id`  - `type`  ## データモデルによるプロパティの記述  
アルファベット順（クリックすると詳細が表示されます  
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
## ペイロードの例  
#### リスク NGSI-v2 キーバリューの例  
ここでは、Riskをkey-valuesとしてJSON-LD形式で表現した例を紹介します。これは`options=keyValues`を使用した場合のNGSI-v2との互換性があり、個々のエンティティのコンテキストデータを返します。  
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
#### リスク NGSI-v2 正規化例  
ここでは、正規化されたJSON-LD形式のRiskの例を示します。これは、オプションを使用しない場合のNGSI-v2との互換性があり、個々のエンティティのコンテキストデータを返します。  
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
#### リスク NGSI-LDのキーバリューの例  
ここでは、Riskをkey-valuesとしてJSON-LD形式で表現した例を紹介します。これは`options=keyValues`を使用した場合のNGSI-LDとの互換性があり、個々のエンティティのコンテキストデータを返します。  
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
#### リスク NGSI-LDの正規化例  
正規化されたJSON-LD形式のRiskの例を示します。これは、オプションを使用しない場合のNGSI-LDとの互換性があり、個々のエンティティのコンテキストデータを返します。  
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
