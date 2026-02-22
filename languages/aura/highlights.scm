; Keywords
[
  "let"
  "const"
  "defn"
  "defmacro"
  "def"
  "pub"
  "use"
] @keyword

; Boolean literals
[
  "true"
  "false"
] @boolean

; Type keywords
[
  "union"
  "enum"
  "interface"
  "Func"
] @keyword

; Comments
(comment) @comment

; String literals
(string) @string
(string_content) @string
(escape_sequence) @string.escape
(interpolation) @embedded

; Numbers
(integer) @number
(float) @number

; Identifiers
(identifier) @variable

; Type identifiers (PascalCase)
(type_identifier) @type

; Function calls - first identifier child
(call_expression
  (identifier) @function)

; Function definitions
(fn_decl
  (identifier) @function)

; Macro definitions
(macro_decl
  (identifier) @function)

; Type definitions
(def_decl
  (identifier) @type)

; Parameters
(parameter
  (identifier) @variable.parameter)

; Operators
[
  "="
  "+"
  "-"
  "*"
  "/"
  "%"
  "=="
  "!="
  "<"
  ">"
  "<="
  ">="
  "&&"
  "||"
  "!"
  ".."
  "?."
  "?:"
  "!!"
  ":"
] @operator

; Punctuation
[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
  ","
  ";"
] @punctuation

; Atoms (scope labels)
(atom) @label

; Dot identifiers (variant constructors)
(dot_identifier) @variant

; Named arguments - first identifier
(named_argument
  (identifier) @property)

; Field access - last identifier
(field_access
  (identifier) @property)
