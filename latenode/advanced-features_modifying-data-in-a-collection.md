---
url: "https://help.latenode.com/advanced-features/DTZDaggyNRLGe/modifying-data-in-a-collection/DTZDaggJDUFRna"
title: "Modifying data in a collection – Latenode | Help Center"
---

 Modifying data in a collection

Inserting, updating, and deleting records in database collections.


When you want to modify data in a collection, you need to select objects and apply a set of modifiers to them.

 There are two ways to select objects:

- specify the identifier of a specific object

- apply a set of filters to select multiple objects (see querrying collection)

 Modifiers

We use `YAML` for the modifier format.

```
- Field:        path
  Type:         string
  Description:  Address inside the object that is being modified.
                If you specify "." then the modification will replace the entire
                content of the object.
---
- Field:        set
  Type:         Expression
  Description:  Expression to calculate the value.
```

 Note

All filter sets start with the keyword `conditions` , and all modifier sets start with the keyword `items`

 Example

Let's imagine that we have an object that we can get using the following filter:

```
conditions:
  - operation: equal
    query:
      field: "object_id"
    expected:
      value: "bdb-ff-fce-ab-ddebdfaf"
```

Object value:

```
{
  "test": 
}
```

Let's apply modifiers

```
items:
  - path: "."
    set:
      value:
        a:
          b:
            id: ""
  - path: "a.b.i"
    set:
      value: 
  - path: "a.b.s"
    set:
      value: "string"
  - path: "a.b.f"
    set:
      field: "object_id"
  - path: "a.b.p"
    set:
      path: "a.b.i"
```

The first modifier replaces all objects with the described object.

```
{
  "a": {
    "b": {
      "id": ""
    }
  }
}
```

The second modifier adds a value of type number to the object.

```
{
  "a": {
    "b": {
      "id": "",
      "i": 
    }
  }
}
```

The third modifier adds a value of type string to the object.

```
{
  "a": {
    "b": {
      "id": "",
      "i": ,
      "s": "string"
    }
  }
}
```

The fourth modifier adds a value of type string to the object, and the value is taken from the object\_id field from the system information about the object.

```
{
  "a": {
    "b": {
      "id": "",
      "i": ,
      "s": "string",
      "f": "aebe-fb-e-f-dce"
    }
  }
}
```

The fifth modifier adds a value to the object taken from the same object after the previous modifiers.

```
{
  "a": {
    "b": {
      "id": "",
      "i": ,
      "s": "string",
      "f": "aebe-fb-e-f-dce",
      "p": 
    }
  }
}
```

 Expressions

This section lists all the expressions that you can use in the conditions.

```
- Expression:  Field
  Field:       field
  Type:        string
  Description: This extension allows you to get the value of a record field in its entirety.
               Below you can see the available values for this extension:
               • object_id
               • value
               • created_at
---
- Expression:  Path
  Field:       path
  Description: This extension allows you to look inside an object value.
               To view nested values, use the dot separator.
               Examples:
               • a
               • a.b
               • a.b.c
---
- Expression:  Value
  Field:       value
  Type:        string, number, array, object, bool
  Description: This extension allows you to specify a specific value for further comparison
```