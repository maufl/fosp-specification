<!-- vim: set spell spelllang=en_us: -->
# FOSP
### Federated object storage protocol

###### Status of this Memo
This document specifies an protocol for the Internet community, and requests discussion and suggestions for improvements.
Distribution of this memo is unlimited.

###### Copyright Notice
Copyright (C) Felix Konstantin Maurer (2014). All rights reserved.

###### Abstract
This document defines the Federated Object Sharing Protocol (FOSP).
FOSP is a protocol that allows sharing arbitrary data, setting access rights on the shared data and receiving notifications on changes.
Furthermore, all features of FOSP can be used in a federated network, e.g. between multiple independed providers.
It was designed to be the most simple solution that combines all these features.

#### Introduction

##### Purpose

TODO
...
The federated object storage protocol tries to solve three problems:
1. How to store data in a network and support standart operations on it.
2. How to enforce access control on the data, for useres from different hosts, without central authentication.
3. How to notify users when data is added, removed or has changed.
Additionally we want to keep certain constraints:
1. The protocol needs tp be data agnostic and should support structured, unstructured and metadata.
2. The protocol must be as simple as possible, it must be easy to implement and programms that use it should be easy to deploy.

##### Overview
The FOSP protocol is mostly a request/response protocol.
A user connects to the server of his or her provider, using a client and then both can exchange messages.
Request messages are sent from the client to the server to manipulate or retrieve data.
Servers respond by sending a response message.

The information units stored on the server have a well defined structure and we call them objects.
They are furthermore organized into trees.
Each user is identified uniquely by a name and the domain name of his or her provider, similar to an Email address.
For each user there exists a tree of objects, stored on the server(s) of his or her provider.

##### Requirements
FOSP builds on existing protocols and data formats.
The transport protocol for FOSP messages currently is the WebSocket protocol, tough other options may be added in the future.
Objects are serialized into the JSON notations.
Besides these technical dependencies, FOSP is inspired by WebDAV and XMPP and has similarities to LDAP.

##### Terminology
This document uses a number of terminologies to refer to concepts found in FOSP.

- provider

  An entity that provides storage space on the Internet for the date of users.
  It is identified by a DNS domain name.

- server

  A FOSP server stores the data of users of a certain provider.
  Multiple servers can be deployed to deliver the data of a provider to implement fault tolerance and load balancing.

- client

  A FOSP client is a program a user uses to communicate with a FOSP server.
  It facilitates accessing the data of the user that is stored on the server.

- message

  A message is the basic unit of communication in FOSP.
  Messages come in three different flavours.

- request

  A request is a message sent from a client to a server.
  It is used to retrieve or alter data.

- response

  A response is a message sent from a server to a client.
  It is always sent as an answer to a request and contains the status of the request and possibly data.

- notification

  A notification is a message that is sent by servers when changes happen to an object.


#### Network topology
The network of the agents that use the protocol is, like the smtp network, federated.

##### Participants
There are two kind of agents in the network, clients and servers.
##### Message flow

#### Messages

##### Format

**WARNING: To simplify the definition for the moment, only ASCII characters are allow. This WILL change as the protocol itself mandates the use of Unicode and the UTF-8 encoding and international user and resource names MUST be supported**

Also the header definition will be subject to change after determining acceptable characters.
For the resource identifier, we will probably refer to the IRI definition in the future.

    message         = request / response / notification

    request         = request-type SP ( resource-id / "*" ) SP sequence-number CRLF headers [ CRLF body ]
    request-type    = "CONNECT" / "AUTHENTICATE" / "REGISTER" / "CREATE" / "SELECT" / "UPDATE" / "DELETE" / "READ" / "WRITE"

    response        = response-type SP response-status SP sequence-number CRLF headers [ CRLF body ]
    response-type   = "SUCCEDED" / "FAILED"

    notification    = event-type SP resource-id CRLF headers [ CRLF body ]
    event-type      = "CREATED" / "UPDATED" / "DELETED"

    headers         = *( header CRLF )
    header          = header-key ":" SP header-value
    header-key      = ALPHA *( ALPHANUM / "-" ) ( ALPHANUM )
    header-value    = 1*( ALPHANUM / "/" / "-" / "<" / ">" / "=" / "+" / "_" / ";" / "!" / "~" / "*" / "." )

    resource-id     = user-name "@" domain [ path ]
    user-name       = ALPHA *( ALPHANUM / "_" / "-" / "+" / "." ) ( ALPHANUM )
    domain          = domain-part *( "." domain-part ) [ "." ]
    domain-part     = ALPHANUM / ( ALPHANUM *( ALPHANUM / "-" / "_" ) ALPHANUM )

    path            = "/" / 1*( "/" path-part )
    path-part       = 1*( ALPHANUM / "\" / "." / "+" / "*" / "-" / "_" / ";" / ":" / "!" / "~" / "=" / "<" / ">" )

    ALPHANUM        = ALPHA / DIGIT

##### Serialization

#### Objects
##### Format
##### Serialization
##### Hierarchy
##### Fields and their meaning
##### Standart objects

#### Policies





