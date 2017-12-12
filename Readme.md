# Powershell Module for baramundi bConnect API

This Api is meant to support pipelines the way they are meant for. Nevertheless it's not shure in the moment of writing this ReadMe, averything works as expected.

* **Distributed under [Apache License 2.0**](LICENSE.txt)
* **Implemented API-Version**: *bMS 2017/bConnect 1.0*
* [Detailed List of cmdlets](Commands.md)

## Initialize-bConnect

Setup your connection to the Api. Configures Server, Version and Credentials for continous use. As `$PSDefaultParameterValues` in module scope.

## Search-

Search the bConnect API specifiyng object-type and a term

## Get-

The `Get-`-cmdlets are used to fetch an object from the API usually specifying some referencing `guid`.

## Add-, Set-, Remove-

Create, update or remove an object in the API

## New-

The `New-`-cmdlets are used to create objects to interact with the API. Theese also validate for required feelds.

## Expand- and Merge-

Theese cmdlets are helpers for interacting with the bit fields of `Clientoptions`.



