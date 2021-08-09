# pretty

Prettify JSON on the command line via STDIN.

## Usage

```
$ echo "{\"hello\":\"world\"}" > file.json
$ cat file.json 
{"hello":"world"}

$ cat file.json | pretty
{
  "hello" : "world"
}

```

### Network JSON

Prettified output with `curl`:

```
$ curl -s "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_day.geojson" | pretty
{
  "metadata" : {
    "status" : 200,
    "api" : "1.10.3",
    "title" : "USGS Magnitude 4.5+ Earthquakes, Past Day",
    "count" : 9,
    "url" : "https:\/\/earthquake.usgs.gov\/earthquakes\/feed\/v1.0\/summary\/4.5_day.geojson",
    "generated" : 1628481602000
  },
  "features" : [
    {
      "properties" : {
        "place" : "southern Mid-Atlantic Ridge",
        "tz" : null,
        "time" : 1628474042182,
        "status" : "reviewed",
        "url" : "https:\/\/earthquake.usgs.gov\/earthquakes\/eventpage\/us6000f3hg",
        "alert" : null,
        "tsunami" : 0,
        "sig" : 385,
        "code" : "6000f3hg",
        "ids" : ",us6000f3hg,",
        "dmin" : 15.169,
        "gap" : 91,
        "magType" : "mb",
        "title" : "M 5.0 - southern Mid-Atlantic Ridge",
        "nst" : null,
        "updated" : 1628477656040,
        "mag" : 5,
        "types" : ",origin,phase-data,",
        "type" : "earthquake",
        "cdi" : null,
        "net" : "us",
        "sources" : ",us,",
        "felt" : null,
        "detail" : "https:\/\/earthquake.usgs.gov\/earthquakes\/feed\/v1.0\/detail\/us6000f3hg.geojson",
        "mmi" : null,
        "rms" : 0.68999999999999995
      },
      "id" : "us6000f3hg",
      "type" : "Feature",
      "geometry" : {
        "type" : "Point",
        "coordinates" : [
          -6.1341000000000001,
          -56.627299999999998,
          10
        ]
      }
    },
    ...
  ],
  "type" : "FeatureCollection",
  "bbox" : [
    -76.182900000000004,
    -59.8399,
    10,
    175.78389999999999,
    51.628500000000003,
    254.34
  ]
}
```

### Save output to file:

```
$ cat file.json | pretty > prettified.json
```

### Prettifying JSON from the clipboard

1. Select and copy the minified JSON
2. On the terminal, type `pretty`
3. Paste the minified JSON

Example: 
```
$ pretty
{"hello":"world"}
{
  "hello" : "world"
}
$
```

## Installation

### From Source

```
$ git clone https://github.com/eneko/pretty.git && cd pretty
$ swift build -c release --disable-sandbox
$ install .build/release/pretty /usr/local/bin/
```

### Uninstall

```
$ rm /usr/local/bin/pretty
```

