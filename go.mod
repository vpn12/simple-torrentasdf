module cloud-torrent

go 1.13

require (
	github.com/NYTimes/gziphandler v1.1.1
	github.com/anacrolix/log v0.3.1-0.20191001111012-13cede988bcd
	github.com/anacrolix/torrent v1.8.2
	github.com/andrew-d/go-termutil v0.0.0-20150726205930-009166a695a2 // indirect
	github.com/boypt/scraper v1.0.2
	github.com/c2h5oh/datasize v0.0.0-20171227191756-4eba002a5eae
	github.com/elazarl/go-bindata-assetfs v1.0.0
	github.com/elithrar/simple-scrypt v1.3.0 // indirect
	github.com/gorilla/websocket v1.4.1 // indirect
	github.com/hashicorp/golang-lru v0.5.3 // indirect
	github.com/jpillora/ansi v0.0.0-20170202005112-f496b27cd669 // indirect
	github.com/jpillora/archive v0.0.0-20160301031048-e0b3681851f1
	github.com/jpillora/cloud-torrent v0.0.0-00010101000000-000000000000
	github.com/jpillora/cookieauth v0.0.0-20190219222732-2ae29b2a9c76
	github.com/jpillora/eventsource v0.0.0-20170920003432-7ed8c999e167 // indirect
	github.com/jpillora/opts v1.1.0
	github.com/jpillora/requestlog v0.0.0-20181015073026-df8817be5f82
	github.com/jpillora/sizestr v0.0.0-20160130011556-e2ea2fa42fb9 // indirect
	github.com/jpillora/velox v0.0.0-20180825063758-42845d323220
	github.com/mattbaird/jsonpatch v0.0.0-20171005235357-81af80346b1a // indirect
	github.com/mmcdole/gofeed v1.0.0-beta2
	github.com/mmcdole/goxpp v0.0.0-20181012175147-0068e33feabf // indirect
	github.com/radovskyb/watcher v1.0.6
	github.com/shirou/gopsutil v2.18.12+incompatible
	github.com/skratchdot/open-golang v0.0.0-20190402232053-79abb63cd66e
	github.com/tomasen/realip v0.0.0-20180522021738-f0c99a92ddce // indirect
	golang.org/x/time v0.0.0-20190308202827-9d24e82272b4
)

replace (
	github.com/boltdb/bolt => github.com/boypt/bolt v1.3.2
	github.com/jpillora/cloud-torrent => ./
	github.com/jpillora/cloud-torrent/engine => ./engine/
	github.com/jpillora/cloud-torrent/server => ./server/
	github.com/jpillora/cloud-torrent/static => ./static/
)
