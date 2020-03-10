# Powershell Module for baramundi bConnect API

* **Distributed under [Apache License 2.0](LICENSE.txt)**
* **Implemented API-Version**: *bMS 2018R2/bConnect 1.0*
* ***alpha***-Status; todo: *bMS 2019* features 
* [Detailed List of cmdlets](Commands.md)
* [Simple Examples and API Usage](tests/proof-of-concept.ps1)

# Work in progress - not for production usage yet!

Currently this module can be seen as a work in progress. The state should be compared to *alpha* release. Reasons:

* I am not shure if the [verbs](https://docs.microsoft.com/en-us/powershell/scripting/developer/cmdlet/approved-verbs-for-windows-powershell-commands) used do acually fit well yet:
  * Helper-Cmdlets *New-* should be merged into *Add-* and *Set-*
  * *New-* might be more suitable than *Add-* in case of real API entities.
  * Some *Set-* should probably be named *Edit-*
  * Verbs for *Variables* module might be changed.
    *Set/Push,Clear/Reset* vs. singluar and plural noun depending on wheter a bunch or a single one is to be changed?
* This module is **not compatible** to the one provided by *baramundi*.
* It's not clear yet if the API behaves as expected. A testing suite is not implemented yet.

Once again: 
**It's not shure in the moment of writing this ReadMe, everything works as expected.**
**DO NOT use against your production system**
Feel free to create an issue/ticket if something goes wrong.

## Differences to [PS-bConnect](https://github.com/baramundisoftware/PS-bConnect)
 * JSON-Implementaion
 * **Made for _PowerShell Core_**
 * `New-*` cmdlets do not change the database, see below.
 * `DefaultCommandPrefix = 'b'`

# Overview

This module is mostly built using some kind of [scaffolding](blob/master/lib/scaffold.ps1).

## Initialize-bConnect

Setup your connection to the Api. Configures Server, Version and Credentials for continous use. As `$PSDefaultParameterValues` in module scope.

Use `Clear-bConnect` to clear the memory from your credentials.

## Search-

Search the bConnect API specifiyng a term

## Get-

Fetch one or many objects from the API usually specifying some referencing `guid`.

## Add-, Set-

Create or update an object in the API. Supports pipeline input for bulk operations.

## New-

Create objects to interact with the API. Theese also validate for required feelds. Should be used in combination with `Add-` and `Set-`.

## Remove-

Remove an item inside the API usually by referencing some `guid`

## Expand- and Merge-

Theese cmdlets are helpers for interacting with the bit fields of `Clientoptions`.



