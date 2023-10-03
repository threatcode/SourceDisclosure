#### Description
SourceDisclosure is a muilt-threads web directories scanner.

#### Installation
```
pip install -r requirements.txt
```

#### Usage　
```
usage: SourceDisclosure.py [options]

optional arguments:
  -h, --help            show this help message and exit
  --url URL             url to scan, eg: 'http://127.0.0.1/'
  --urls URLS           file contains urls to scan, one line one url.
  --scale {full,tiny}   build-in dictionary scale
  --output OUTPUT       output folder, default: result/YYYY-MM-DD hh:mm:ss
  --threads THREADS, -t THREADS
                        threads numbers, default: 4
  --timeout TIMEOUT     HTTP request timeout
  --level {CRITICAL,ERROR,WARNING,INFO,DEBUG}, -v {CRITICAL,ERROR,WARNING,INFO,DEBUG}
                        log level
  --version, -V         show program's version number and exit
```

#### Example
```
$ python SourceDisclosure.py --url=http://bing.com --threads=4 --timeout=8
[302]   0       3.035766        text/html; charset=iso-8859-1   http://bing.com/_/_index.php
[302]   0       3.038096        text/html; charset=iso-8859-1   http://bing.com/_/__index.php.bak
...
[302]   0       0.063973        text/html; charset=iso-8859-1   http://bing.com/_adm/_index.php
[302]   0       0.081672        text/html; charset=iso-8859-1   http://bing.com/_adm/_index.php.bak
Result save in file: result/2020-02-27 07:07:47.csv
```

```
$ cat url.txt                 
http://bing.com/
http://google.com/

$ python SourceDisclosure.py --urls=url.txt --threads=4 --timeout=8
[302]   0       2.363600        text/html; charset=iso-8859-1   http://bing.com/_/__index.php.bak
[302]   0       0.098417        text/html; charset=iso-8859-1   http://bing.com/_adm/__index.php.bak
...
[302]   0       0.060524        text/html; charset=iso-8859-1   http://google.com/_adm/_index.php.bak
[302]   0       0.075042        text/html; charset=iso-8859-1   http://bing.com/_adm/_index.php.back
Result save in file: result/2020-02-27 07:08:54.csv
```


#### TODOs
- [x] Arguments parser.
- [x] Store scan result into csv file.
- [x] Support for multiple urls (from file).
- [x] Add help comments for every params.
- [x] Update Usage.
- [x] Adjust dictionary elements order systematically.
- [x] Change logger in order to suite for both windows and linux.
- [x] Add log level.
- [x] Update Screenshots.
- [ ] Retry and avoid dead lock
- [ ] Store scan result into sqlite database.
- [ ] Download small url contents, then store them into sqlite database.

#### Known Bugs
- [ ] CTRL C does not works on windows platform
