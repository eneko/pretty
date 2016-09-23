# pretty
Prettify JSON on the command line via STDIN.

##Usage

### Prettify local JSON files

Prettify a local `json` file:

```
$ cat file.json | pretty
{
  "hello" : "world"
}
```

### Network JSON

Prettified output with `curl`:

```
$ curl -s http://earthquake-report.com/feeds/recent-eq?json | pretty
[
  {
    "location" : " Gardena, CA",
    "magnitude" : "3",
    "depth" : "11.28",
    "longitude" : "-118.307",
    "title" : "Minor earthquake -  Gardena, Ca on September 20, 2016",
    "latitude" : "33.9165",
    "link" : "http:\/\/earthquake-report.com\/2016\/09\/20\/minor-earthquake-gardena-ca-on-september-20-2016-2\/",
    "date_time" : "2016-09-20T16:31:18+00:00"
  },
  ...
]
```

Without `pretty`:

```
$ curl -s http://earthquake-report.com/feeds/recent-eq?json
[{"title":"Minor earthquake -  Gardena, Ca on September 20, 2016","magnitude":"3","location":" Gardena, CA","depth":"11.28","latitude":"33.9165","longitude":"-118.307","date_time":"2016-09-20T16:31:18+00:00","link":"http:\/\/earthquake-report.com\/2016\/09\/20\/minor-earthquake-gardena-ca-on-september-20-2016-2\/"},...]
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

##Installation

### Manual Installation
1. Clone: `$ git clone https://github.com/eneko/pretty.git && cd pretty`
2. Build: `$ swift build -c release`
3. Symlink: `$ ln -s "$PWD/.build/release/pretty" /usr/local/bin/pretty`

### Uninstall
1. Remove symlink: `$ rm /usr/local/bin/pretty`
2. Remove pretty: `$ rm -rf /path/to/pretty`

