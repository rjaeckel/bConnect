# Powershell Module for baramundi bConnect API

This Api is meant to support pipelines the way they are meant for. Nevertheless it's not shure in the moment of writing this ReadMe, averything works as expected.

* **Distributed under [Apache License 2.0**](../blob/master/LICENSE.txt)
* **Implemented API-Version**: *bMS 2017/bConnect 1.0*
* [Detailed List of cmdlets](../blob/master/Commands.md)

## Initialize-bConnect

Setup your connection to the Api. Configures Server, Version and Credentials for continous use. As `$PSDefaultParameterValues` in module scope.

## Get-

The `Get-`-cmdlets are used to fetch an object from the API usually specifying some referencing `guid`.

## Edit-

The `Edit-`-cmdlets are generally used to create, update or delete an object in the API.

## Add-, Remove-, Set-

Some API endpoints cannot be used like `Edit-`. Theese use the more specific way.

## Search-bConnect

Search the bConnect API specifiyng object-type and a term

## Helpers

Aditionally to the actual workload of the API there are cme helpers to make everyday usage easier

### Expand- and Merge-

Theese cmdlets are helpers for interacting with the bit fields of `Clientoptions`.

### New-*

The `New-`-cmdlets are used to create objects to interact with the API. Theese also validate for required feelds.


