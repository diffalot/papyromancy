#-e This is a basic VCL configuration file for varnish.  See the vcl(7)
#man page for details on VCL syntax and semantics.
#
#Default backend definition.  Set this to point to your content
#server.
#
backend default {
  .host = "10.252.65.239";
  .port = "8080";
}
  # Drop any cookies sent to Wordpress.
  sub vcl_recv {
        if (!(req.url ~ "wp-(login|admin)")) {
                unset req.http.cookie;
                    }
          }
  
  # Drop any cookies Wordpress tries to send back to the client.
  sub vcl_fetch {
        if (!(req.url ~ "wp-(login|admin)")) {
                unset obj.http.set-cookie;
                    }
          }
