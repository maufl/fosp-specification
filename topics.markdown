# Topics
Here we collect all topics that have to be discussed and then order them.

# TOC

* Introduction
  * Purpose
  * Conventions
  * Requirements ?
  * Terminology
* Overview
  * Users and Providers
  * Trees, Objects and Attachments
  * Network topology
  * Messages
  * Bindings
* Data structure
  * Objects
    * Allowed Fields
  * Trees
  * Attachments
  * Provisioned Objects
* Network topology
  * Client
  * Server
  * Connection
* Messages
  * Requests
    * Info ??
    * Authenticate/Bind
    * Get
    * List
    * Create
    * Update
    * Delete
    * Read
    * Write
  * Responses
    * Succeeded
    * Failed
  * Notifications
    * Created
    * Updated
    * Deleted
* Bindings
  * Websockets
    * Connection Initiation
    * Format
    * Serialization
  * HTTP
    * Session management
    * Format
    * Serialization
* Policies
  * Access control
  * Groups
  * Subscriptions
  * Attachments
  * Authentication
    * Users
    * Servers
  * Registration
  * Message forwarding
* Discovery
* Error Codes

# Open questions
* Seperate Create/Update or not?
* Name connection negotiation: Discover/Connect/Info
* Extend JSON?
* Finalize possible ACL rights and the notation, e.g. read/write vs. method names
* Layout for group configuration must be defined
