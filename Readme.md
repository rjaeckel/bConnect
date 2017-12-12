# Powershell Module for baramundi bConnect API

This Api is meant to support pipelines the way they are meant for. Nevertheless it's not shure in the moment of writing this ReadMe, everything works as expected.

* **Distributed under [Apache License 2.0](LICENSE.txt)**
* **Implemented API-Version**: *bMS 2017R1/bConnect 1.0*
* [Detailed List of cmdlets](Commands.md)

# Overview

## Initialize-bConnect

Setup your connection to the Api. Configures Server, Version and Credentials for continous use. As `$PSDefaultParameterValues` in module scope.

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



