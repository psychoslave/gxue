# Ĝue

Tio projekto ĉefe celas plibonigi la konon de la verkistaro pri la Ruby programolingvo dum amuzi fari same pri Esperanto.

Nunaj celoj
- iĝu estas la asignanta operatoro
  - `ero iĝu 3` estas kiel `ero = 3`
- -i finantaj igoj povas esti vokata per -u finato
- -a finantaj vorotj estas simboloj, tio estas `era` provizas la `:era` simbolon
- -e estas uzita por marki ŝanĝo de trafo, do por klasoj kaj moduloj, kaj ankaŭ anstataŭ tabelaj kromoj, ktp
  - `tabele era iĝu 3` estas `tabelo[:era] = 3`
  - `Dokumente preparu tekston` estas kiel `Dokumente::prepari(teksto)`

Meztempaj celoj
- vortoj kunigitaj per `-` estas interpretita kiel esprima kompono
  - `unua-kongruige-agon` devus valore sami al `kongruigu(ago).unua`
  - `totalo-parto` NE devus provizi la substrakton, sed `totalo(parto)`
    - se estas ebla fari la distingon, `totalo - parto` eble povos provizi la substrakton, sed oni preferos `totalo minus parto` aŭ `totalo men parto`

- ankaŭ malproksimaj celoj estas traduki ĉefleksoj, kiel `def`, `end`, ktp.
