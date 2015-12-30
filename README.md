# docker-stackedit-latest

Easiest way to test & run the latest version (master) of Stackedit.

Stackedit is presumably the most loves in Browser Markdown editor. It includes lots of handy markdown extensions that make writing technical documents easier.

The cloud hosted version including documentation can be used at https://stackedit.io/

If you want to host it yourself try:

```
docker run --name=stackedit -p 8080:3000 rwbg/stackedit-latest
```

Persistence can be achieved with Google Docs / Dropbox. If you want to stay independent of the cloud, try a couchdb container. More info here: https://github.com/benweet/stackedit/blob/master/doc/couchdb-setup.md
