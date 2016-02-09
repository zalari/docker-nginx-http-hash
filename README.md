## nginx-http-hash
This is a simple nginx image for HTTP-HASH validation for SSL certificate validation. It has only two ENV variables:

**HASHFILENAME** and **HASHVALUE**, with the former being the actual file, that is exposed below the web roots.

## Example usage
Say, your SSL-Seller challenges you to provide the *HASHVALUE* "dshjhsjd" in the file "dhhd.htm", then run the image like that:

```
docker run --name some_nginx -p 9876:80 -e HASHFILENAME=dhhd.htm -e HASHVALUE=dshjhsjd -d zalari/nginx-http-hash
```

and you should get the following result:
```
curl -v http://dockerhost:9876/dhhd.htm
```