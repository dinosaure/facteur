val run_with_starttls :
  ?logger:(module Logs.LOG) ->
  hostname:[ `host ] Domain_name.t -> ?port:int ->
  domain:Colombe.Domain.t ->
  authenticator:Auth.authenticator option ->
  tls:X509.Authenticator.a ->
  from:Colombe.Reverse_path.t ->
  recipients:Colombe.Forward_path.t list ->
  (bytes * int * int) Sendmail.stream ->
  unit Cmdliner.Term.ret Lwt.t

val run :
  ?logger:(module Logs.LOG) ->
  hostname:[ `host ] Domain_name.t -> ?port:int ->
  domain:Colombe.Domain.t ->
  authenticator:Auth.authenticator option ->
  tls:X509.Authenticator.a ->
  from:Colombe.Reverse_path.t ->
  recipients:Colombe.Forward_path.t list ->
  (bytes * int * int) Sendmail.stream ->
  unit Cmdliner.Term.ret Lwt.t
