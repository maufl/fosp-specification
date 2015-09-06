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
  * Object attributes
  * Trees
  * Attachments
  * Provisioned Objects
  * URLs
* Network topology
  * Client
  * Server
  * Connection
* Messages
  * Types
  * Requests
    * Info ??
    * Auth
    * Get
    * List
    * Create
    * Patch
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
  * Status Codes
  * Forwarding
* Bindings
  * Websockets
    * Connection Initiation
    * Format
    * Serialization
  * HTTP
    * Session management
    * Format
    * Serialization
* Authentication
  * SASL
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
* Security Considerations

# Open questions and tasks
* Authentication methods and registration possibilities.
* Groups
  * How are they stored
  * How are they addressed
* null and undefined are the same
* Is DELETE recursive?
* Finalize ABNF
* Describe owner and groups in ACL policies
* Name connection negotiation: Discover/Connect/Info
* Add examples
