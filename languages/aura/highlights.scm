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

; Null literal
"null" @constant.builtin

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

; Function calls
(call_expression
  function: (identifier) @function)

; Function definitions
(fn_decl
  name: (identifier) @function)

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

; Named arguments
(named_argument
  name: (identifier) @property)

; Field access
(field_access
  field: (identifier) @property)
