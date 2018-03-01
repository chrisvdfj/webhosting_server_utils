Catch spammer with exim log file. 

3) After hostlist auth_relay_hosts = *

log_selector = +arguments +subject


log_selector = +address_rewrite +all_parents +arguments +connection_reject +delay_delivery +delivery_size +dnslist_defer +incoming_interface +incoming_port +lost_incoming_connection +queue_run +received_sender +received_recipients +retry_defer +sender_on_delivery +size_reject +skip_delivery +smtp_confirmation +smtp_connection +smtp_protocol_error +smtp_syntax_error +subject +tls_cipher +tls_peerdn \
