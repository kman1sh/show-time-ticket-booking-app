create table vault.client(client_id text, client_secret text,
client_name text, scope set<text> , resource_ids set<text>,
authorized_grant_types set<text>, registered_redirect_uris set<text>,
authorities list<text>, accesstoken_validity_seconds bigint, 
refreshtoken_validity_seconds bigint, additional_information text,
auto_approve_scopes set<text>, primary key(client_id));


// Insert Query for Client Table

// 1) Show Time - movie booking app (secret - hack-pro-show-time-web)
insert into vault.client(client_id, client_secret,client_name, scope, resource_ids,
authorized_grant_types, registered_redirect_uris,authorities, accesstoken_validity_seconds, 
refreshtoken_validity_seconds, additional_information,auto_approve_scopes) 
values ('show-time-booking-client', '$2a$10$KKgcIpt8d7Y6C7e8f2DAbudycOf1dwBjA7IunOt6fuJ4sjIIpimmy',
'show time movie booking app web', {'read','write','trust'},  {'resource'} , {'password','refresh_token',
'implicit', 'client_credentials', 'authorization_code'} , {}, ['ADMIN','USER'], 3600, 216000, '', {}); 






