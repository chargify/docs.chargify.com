Component Codes are defined and associated with a Metered Component.  They allow you to charge different rates depending on the code supplied with the allocation.

## Availability

The Component Codes feature is available to merchants on any of our Big Business plans starting at $1,299 per month.

Things to note about Component Codes:

* Component Codes are only available for Metered Components
* Each isolated bracket for a given component is attached to a component code. Please setup the component codes before creating the pricing bracket.
* Component Codes are an API Only feature. They are not visible in the Admin UI.

## Available API Endpoints:

Note: Archived Component Codes are not shown in the component code listing and
cannot be used when adding new usages. You can view archived component codes in
the component code list by adding the query parameter `include_archived=1`

### Listing Component Codes

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -H "Content-Type: application/json" https://api.chargify.com/api/v2/components/5/codes.json
```

response

<pre><code>
{"codes":
  [
    {"id":1, "subcode":"BLUE",  "component_id":5, "archived_at":null},
    {"id":2, "subcode":"RED",   "component_id":5, "archived_at":null},
    {"id":3, "subcode":"BROWN", "component_id":5, "archived_at":null}
  ],
  "meta":{
    "status_code":200,
    "result_code":2000,
    "paginated":false,
    "errors":[],
    "total_count":3,
    "current_page":1,
    "total_pages":1
  }
}
</code></pre>

### Listing Component Codes (including archived)

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -H "Content-Type: application/json" https://api.chargify.com/api/v2/components/5/codes.json?include_archived=1
```

response

<pre><code>
{"codes":
  [
    {"id":1,"subcode":"USA Minutes","component_id":5,"archived_at":"2014-09-09T19:45:51-04:00"},
    {"id":2,"subcode":"AUS Minutes","component_id":5,"archived_at":null}
  ],
  "meta":{
    "status_code":200,
    "result_code":2000,
    "paginated":false,
    "errors":[],
    "total_count":2,
    "current_page":1,
    "total_pages":1
  }
}
</code></pre>

### Creating Component Codes

Notice that in the `meta` object that there is both a `processed` and a `created` key. Processed is the number of codes that were supplied during the request.  Created is the number of codes that were actually created. If this differs, then there was a problem processing one or more of the submitted codes.

We also return a plural `codes` key because the endpoint can be used to create one or multiple codes (that is, an array of codes).

### Creating a Single Component Code

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -H "Content-Type: application/json" --data "{\"code\":{\"subcode\":\"AUS Minutes\"}}" https://api.chargify.com/api/v2/components/5/codes.json
```

response:

<pre><code>
{"codes":
  [
    {"id":1,"subcode":"AUS Minutes","component_id":5,"archived_at":null}
  ],
  "meta":{
    "status_code":200,
    "result_code":2000,
    "paginated":false,
    "errors":[],"total_count":1,
    "current_page":1,
    "total_pages":1,
    "processed":1,"created":1
  }
}
</code></pre>

### Creating Multiple Component Codes

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -H "Content-Type: application/json" --data "{\"code\":[{\"subcode\":\"RED\"},{\"subcode\":\"BROWN\"}]}" https://api.chargify.com/api/v2/components/5/codes.json
```

response:

<pre><code>
{"codes":
  [
    {"id":2, "subcode":"RED",   "component_id":5, "archived_at":null},
    {"id":3, "subcode":"BROWN", "component_id":5, "archived_at":null}
  ],
  "meta":{
    "status_code":200,
    "result_code":2000,
    "paginated":false,
    "errors":[],
    "total_count":2,
    "current_page":1,
    "total_pages":1,
    "processed":2,
    "created":2
  }
}
</code></pre>

### Showing a Component Code

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -H "Content-Type: application/json" -X GET --data "{\"subcode\":\"USA Minutes\"}" https://api.chargify.com/api/v2/components/5/codes/1.json
```

response:

<pre><code>
{"code":
  {"id":1, "subcode":"USA Minutes", "component_id":5, "archived_at":null},
  "meta":{
    "status_code":200,
    "result_code":2000,
    "paginated":false,
    "errors":{}
  }
}
</code></pre>

### Finding a Component Code

This is helpful if you forget the id for the subcode that you wish to refer to.

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -H "Content-Type: application/json" -X GET --data "{\"subcode\":\"USA Minutes\"}" https://api.chargify.com/api/v2/components/5/codes/find.json
```

response:

<pre><code>
{"code":{
  "id":1,"subcode":"USA Minutes","component_id":5,"archived_at":null
  },
  "meta":{
    "status_code":200,
    "result_code":2000,
    "paginated":false,
    "errors":{}
  }
}
</code></pre>

request (with a subcode that does not exist):

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -X GET -H "Content-Type: application/json" --data "{\"subcode\":\"SOMETHING NOT THERE..\"}" https://api.chargify.com/api/v2/components/5/codes/find.json
```

response:

<pre><code>
{"result":
  {"errors":
    [
      {"attribute":null, "kind":"not_found", "message":"The requested ComponentCode could not be found."}
    ]
  },
  "meta":{
    "errors":
      [
        {"attribute":null, "kind":"not_found", "message":"The requested ComponentCode could not be found."}
      ]
  }
}
</code></pre>


### Updating a Component Code

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -X PUT -H "Content-Type: application/json" --data "{\"code\":{\"subcode\":\"USA Minutes\"}}" https://api.chargify.com/api/v2/components/5/codes/1.json
```

response:

<pre><code>
{"code":
  {"id":1, "subcode":"USA Minutes", "component_id":5, "archived_at":null},
  "meta":{
    "status_code":200,
    "result_code":2000,
    "paginated":false,
    "errors":{}
  }
}
</code></pre>

response (for a component code that is not found):

<pre><code>
{"result":{
  "errors":[
    {"attribute":null, "kind":"not_found", "message":"The requested ComponentCode could not be found."}
    ]
  },
  "meta":{
    "errors":[
        {"attribute":null, "kind":"not_found", "message":"The requested ComponentCode could not be found."}
    ]
  }
}
</code></pre>

### Archiving a Component Code

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -X DELETE -H "Content-Type: application/json" https://api.chargify.com/api/v2/components/5/codes/1.json
```

response:

<pre><code>
{
    "code": {
        "archived_at": "2014-09-09T16:19:49-04:00",
        "component_id": 5,
        "id": 1,
        "subcode": "USA Minutes"
    },
    "meta": {
        "errors": {},
        "paginated": false,
        "result_code": 2000,
        "status_code": 200
    }
}
</code></pre>

### Un-archiving a Component Code

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -X PUT -H "Content-Type: application/json" https://api.chargify.com/api/v2/components/5/codes/1/unarchive.json
```

response:

<pre><code>
{
  "code":{
    "id":1,
    "subcode":"USA Minutes",
    "component_id":5,
    "archived_at":null
  },
  "meta":{
    "status_code":200,
    "result_code":2000,
    "paginated":false,
    "errors":{}
  }
}
</code></pre>

### Listing Component Prices

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -X GET -H "Content-Type: application/json" https://api.chargify.com/api/v2/components/5/prices.json
```

response:

<pre><code>
{
    "meta": {
        "current_page": 1,
        "errors": [],
        "paginated": false,
        "result_code": 2000,
        "status_code": 200,
        "total_count": 4,
        "total_pages": 1
    },
    "prices": [
        {
            "ending_quantity": 22,
            "id": 37,
            "starting_quantity": 1,
            "unit_price": "10.0"
        },
        {
            "component_code_id": 1,
            "ending_quantity": 22,
            "id": 39,
            "starting_quantity": 1,
            "subcode": "USA Minutes",
            "unit_price": "1234.0"
        },
        {
            "ending_quantity": null,
            "id": 38,
            "starting_quantity": 23,
            "unit_price": "8.0"
        },
        {
            "component_code_id": 1,
            "ending_quantity": null,
            "id": 40,
            "starting_quantity": 23,
            "subcode": "USA Minutes",
            "unit_price": "1000.0"
        }
    ]
}
</code></pre>

You will most likely want to list component prices by `component_code_id` or `subcode` below when defining your pricing structure

### Listing Component Prices (by `component_code_id`)

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -X GET -H "Content-Type: application/json" https://api.chargify.com/api/v2/components/5/prices.json?component_code_id=1
```

response:

<pre><code>
{
    "meta": {
        "current_page": 1,
        "errors": [],
        "paginated": false,
        "result_code": 2000,
        "status_code": 200,
        "total_count": 2,
        "total_pages": 1
    },
    "prices": [
        {
            "component_code_id": 1,
            "ending_quantity": 22,
            "id": 39,
            "starting_quantity": 1,
            "subcode": "USA Minutes",
            "unit_price": "1234.0"
        },
        {
            "component_code_id": 1,
            "ending_quantity": null,
            "id": 40,
            "starting_quantity": 23,
            "subcode": "USA Minutes",
            "unit_price": "1000.0"
        }
    ]
}
</code></pre>

### Listing Component Prices (by `subcode`)

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -X GET -H "Content-Type: application/json" https://api.chargify.com/api/v2/components/5/prices.json?subcode=MYCODE
```

response:

<pre><code>
{
    "meta": {
        "current_page": 1,
        "errors": [],
        "paginated": false,
        "result_code": 2000,
        "status_code": 200,
        "total_count": 2,
        "total_pages": 1
    },
    "prices": [
        {
            "component_code_id": 1,
            "ending_quantity": 22,
            "id": 39,
            "starting_quantity": 1,
            "subcode": "MYCODE",
            "unit_price": "1234.0"
        },
        {
            "component_code_id": 1,
            "ending_quantity": null,
            "id": 40,
            "starting_quantity": 23,
            "subcode": "MYCODE",
            "unit_price": "1000.0"
        }
    ]
}
</code></pre>

### Creating a Single Component price

Note all rules that apply to component prices in api v1 apply here as well.  The only difference is now you can create brackets for a given code.

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -X POST -H "Content-Type: application/json" --data "{\"price\":{\"starting_quantity\":1,\"ending_quantity\":22,\"unit_price\":1234,\"subcode\":\"USA Minutes\"}}" https://api.chargify.com/api/v2/components/5/prices.json
```

response:

<pre><code>
{"prices":
  [
    {
      "id":40,
      "starting_quantity":23,
      "ending_quantity":null,
      "unit_price":"1000.0",
      "subcode":"USA Minutes",
      "component_code_id":1
    }
  ],
  "meta":{
    "status_code":200,
    "result_code":2000,
    "paginated":false,
    "errors":[],
    "total_count":1,
    "current_page":1,
    "total_pages":1,
    "processed":1,
    "created":1
  }
}
</code></pre>

with errors:

Since we allow creation of multiple records, we respond with a 200 because there could be a partial success. Please look at the `errors` object and the `created` / `processed` keys in the `meta` object to ensure everything is created correctly.

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -X POST -H "Content-Type: application/json" --data "{\"price\":{\"starting_quantity\":-3,\"ending_quantity\":null,\"unit_price\":-2,\"subcode\":\"USA Minutes\"}}" https://api.chargify.com/api/v2/components/5/prices.json
```

response:

<pre><code>
{
  "prices":[],
  "meta":{
    "status_code":200,
    "result_code":2000,
    "paginated":false,
    "errors":[
      "Starting quantity: must be greater than or equal to 0.",
      "Unit price: must be greater than or equal to 0."
    ],
    "total_count":0,
    "current_page":1,
    "total_pages":1,
    "processed":1,
    "created":0
  }
}
</code></pre>

### Creating Multiple Component Prices

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -X POST -H "Content-Type: application/json" --data "{\"price\":[{\"starting_quantity\":23,\"ending_quantity\":29,\"unit_price\":1000,\"subcode\":\"MYCODE\"},{\"starting_quantity\":30,\"ending_quantity\":null,\"unit_price\":850,\"subcode\":\"MYCODE\"}]}" https://api.chargify.com/api/v2/components/5/prices.json
```

response:

<pre><code>
{"prices":
  [
    {
      "id":41,
      "starting_quantity":23,
      "ending_quantity":29,
      "unit_price":"1000.0",
      "subcode":"MYCODE",
      "component_code_id":1
    },
    {
      "id":42,
      "starting_quantity":30,
      "ending_quantity":null,
      "unit_price":"850.0",
      "subcode":"MYCODE",
      "component_code_id":1}
  ],
  "meta":{
    "status_code":200,
    "result_code":2000,
    "paginated":false,
    "errors":[],
    "total_count":2,
    "current_page":1,
    "total_pages":1,
    "processed":2,
    "created":2
  }
}
</code></pre>

### Removing a Component Price

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -X DELETE -H "Content-Type: application/json" https://api.chargify.com/api/v2/components/5/prices/40.json
```

response:

<pre><code>
{"price":
  {
    "id":40,
    "starting_quantity":23,
    "ending_quantity":null,
    "unit_price":"1000.0",
    "subcode":"MYCODE",
    "component_code_id":1
  },
  "meta":{
    "status_code":200,
    "result_code":2000,
    "paginated":false,
    "errors":{}
  }
}
</code></pre>

### Listing Component Usages

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -X GET -H "Content-Type: application/json" https://api.chargify.com/api/v2/subscriptions/22/components/5/usages.json
```

response:

<pre><code>
{"usages":[],
"meta":{
  "status_code":200,
  "result_code":2000,
  "paginated":false,
  "errors":[],
  "total_count":0,
  "current_page":1,
  "total_pages":1}
}
</code></pre>

### Creating Component Usages

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -X POST -H "Content-Type: application/json" --data '{"usage":{"quantity":10,"memo":"winning","subcode":"USA Minutes"}}' https://api.chargify.com/api/v2/subscriptions/22/components/5/usages.json
```

response:

<pre><code>
{"usage":
  {"quantity":10,"memo":"winning","subcode":"USA Minutes","component_code_id":1},
  "meta":{
    "status_code":200,
    "result_code":2000,
    "paginated":false,
    "errors":[],
    "total_count":1,
    "current_page":1,
    "total_pages":1,
    "processed":1,
    "created":1
  }
}
</code></pre>

### Listing Component Breakdowns

request:

```
curl --user $DIRECT_API_ID:$DIRECT_API_PASSWORD -X GET -H "Content-Type: application/json" https://api.chargify.com/api/v2/subscriptions/22/components/5/breakdowns.json
```

response:

<pre><code>
{"breakdowns":
  [
    {"component_code_id":1,"subcode":"USA Minutes","quantity":10},
    {"component_code_id":2,"subcode":"AUS Minutes","quantity":15}
  ],
  "meta":{
    "status_code":200,
    "result_code":2000,
    "paginated":false,
    "errors":[],
    "total_count":2,
    "current_page":1,
    "total_pages":1
  }
}
</code></pre>
