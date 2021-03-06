#' Query 'Cloudflare' Domain Name System ('DNS') Servers over 'HTTPS'
#'
#' Domain Name System ('DNS') queries are generally perfomed by operating
#' system calls when browsing the internet or making other network connectios. DNS
#' over 'HTTPS' services offer more local confidentiality and some 'DNS' providers
#' like Cloudflare offer (<https://developers.cloudflare.com/1.1.1.1/dns-over-https/json-format/>)
#' an 'API'-like service along with other privacy-enabled 'DNS' offerings. Tools are
#' provided to query this 'DNS' 'API'.
#'
#' `1.1.1.1` is a privacy centric resolver so it does not send any client IP
#' information and does not send the EDNS Client Subnet Header to authoritative
#' servers.
#'
#' For decreased latency, reduced privacy leakage of queries and lower load on
#' the DNS system, `1.1.1.1` upstreams to locally hosted root zone files.
#'
#' Cloudflare minimizes privacy leakage by only sending minimal query name to
#' authoritative DNS servers. For example, if a client is looking for
#' `foo.bar.example.com`, the only part of the query `1.1.1.1` discloses to `.com`
#' is that we want to know who’s responsible for `example.com` and the zone
#' internals stay hidden.
#'
#' @md
#' @name dnsflare
#' @docType package
#' @author Bob Rudis (bob@@rud.is)
#' @import httr
#' @importFrom jsonlite fromJSON
#' @examples
#' # Queries
#' query("r-project.org", "A")
#' query("r-project.org", "MX")
#'
#' # What IPs does CF use when it queries?
#' cf_upstream_ipv4()
#' cf_upstream_ipv6()
NULL
