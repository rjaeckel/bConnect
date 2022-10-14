# Cmdlets regarding _scaffolding
* [baddibleGet](_scaffolding.md#baddibleGet)
* [bInitTypes](_scaffolding.md#bInitTypes)
* [bgettable](_scaffolding.md#bgettable)
* [bgetableTpl](_scaffolding.md#bgetableTpl)
* [bExpandEnumFlags](_scaffolding.md#bExpandEnumFlags)
* [bEnumType](_scaffolding.md#bEnumType)
* [beditable](_scaffolding.md#beditable)
* [bdocComment](_scaffolding.md#bdocComment)
* [bsearchable](_scaffolding.md#bsearchable)
* [baddible](_scaffolding.md#baddible)
* [bsetable](_scaffolding.md#bsetable)
* [bsetableGet](_scaffolding.md#bsetableGet)
* [bremovable](_scaffolding.md#bremovable)


## baddibleGet
```
baddibleGet [[-Controller] <string>] [-ParamNames <string[]>] [-CommonFlags <string[]>] [-Verb <string>] [-Noun <string>] [-CmdName <string>] [<CommonParameters>]
```
### Parameters
* Controller `<string>`
  ```
  Position : 0
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* CmdName `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* CommonFlags `<string[]>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Noun `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* ParamNames `<string[]>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Verb `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
## bInitTypes
```
bInitTypes [[-TargetNamespace] <string>] [<CommonParameters>]
```
### Parameters
* TargetNamespace `<string>`
  ```
  Position : 0
  Required : false
  PipelineInput : false
  Aliases : None
  ```
## bgettable
```
bgettable [[-Controller] <string>] [-ParamNames <string[]>] [-CommonFlags <string[]>] [-Preferred <string>] [-Verb <string>] [-Noun <string>] [-CmdName <string>] [<CommonParameters>]
```
### Parameters
* Controller `<string>`
  ```
  Position : 0
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* CmdName `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* CommonFlags `<string[]>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Noun `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* ParamNames `<string[]>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Preferred `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Verb `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
## bgetableTpl
```
bgetableTpl [[-Controller] <string>] [-EpRequired] [-Verb <string>] [-Noun <string>] [-CmdName <string>] [<CommonParameters>]
```
### Parameters
* Controller `<string>`
  ```
  Position : 0
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* CmdName `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* EpRequired `<switch>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Noun `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Verb `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
## bExpandEnumFlags
> (internal) 
```
bExpandEnumFlags [-As] <Type> [-Value] <UInt32> [<CommonParameters>]
```
### Parameters
* As `<Type>`
  ```
  Position : 1
  Required : true
  PipelineInput : false
  Aliases : 
  ```
* Value `<UInt32>`
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByValue)
  Aliases : 
  ```
## bEnumType
```
bEnumType [-Name] <Object> [-Options] <string[]> [-Namespace <string>] [-Flags] [<CommonParameters>]
```
### Parameters
* Name `<Object>`
  ```
  Position : 0
  Required : true
  PipelineInput : false
  Aliases : None
  ```
* Options `<string[]>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (FromRemainingArguments)
  Aliases : None
  ```
* Flags `<switch>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Namespace `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
## beditable
```
beditable [[-Controller] <string>] [-Ref <string>] [-Verb <string>] [-Noun <string>] [-CmdName <string>] [<CommonParameters>]
```
### Parameters
* Controller `<string>`
  ```
  Position : 0
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* CmdName `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Noun `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Ref `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Verb `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
## bdocComment
```
bdocComment [[-Description] <Object>] [<CommonParameters>]
```
### Parameters
* Description `<Object>`
  ```
  Position : 0
  Required : false
  PipelineInput : false
  Aliases : None
  ```
## bsearchable
```
bsearchable [[-Type] <Type>] [<CommonParameters>]
```
### Parameters
* Type `<Type>`
  ```
  Position : 0
  Required : false
  PipelineInput : false
  Aliases : None
  ```
## baddible
```
baddible [[-Controller] <string>] [-Verb <string>] [-Noun <string>] [-CmdName <string>] [-ParamNames <string[]>] [<CommonParameters>]
```
### Parameters
* Controller `<string>`
  ```
  Position : 0
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* CmdName `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Noun `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* ParamNames `<string[]>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Verb `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
## bsetable
```
bsetable [[-Controller] <string>] [-Ref <string>] [-Verb <string>] [-Noun <string>] [-CmdName <string>] [-CommonFlags <string[]>] [<CommonParameters>]
```
### Parameters
* Controller `<string>`
  ```
  Position : 0
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* CmdName `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* CommonFlags `<string[]>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Noun `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Ref `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Verb `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
## bsetableGet
```
bsetableGet [[-Controller] <string>] [-Ref <string>] [-SetParameters <string[]>] [-Verb <string>] [-Noun <string>] [-CmdName <string>] [<CommonParameters>]
```
### Parameters
* Controller `<string>`
  ```
  Position : 0
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* CmdName `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Noun `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Ref `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* SetParameters `<string[]>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Verb `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
## bremovable
```
bremovable [[-Controller] <string>] [-Ref <string>] [-Verb <string>] [-Noun <string>] [-CmdName <string>] [<CommonParameters>]
```
### Parameters
* Controller `<string>`
  ```
  Position : 0
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* CmdName `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Noun `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Ref `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Verb `<string>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```

