; Keywords
[
  "let"
  "const"
  "fn"
  "type"
  "macro"
  "def"
  "defn"
  "defmacro"
  "pub"
  "use"
  "return"
  "break"
  "continue"
  "if"
  "else"
  "cases"
  "loop"
  "while"
  "do"
  "then"
  "finally"
  "enum"
  "union"
  "interface"
  "template"
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
  "Int"
  "Float"
  "Bool"
  "String"
  "Void"
  "List"
  "Dict"
  "Func"
  "Option"
  "Result"
  "Iterable"
  "any"
] @type.builtin

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
  name: (identifier) @variable.parameter)

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
  "++"
  "--"
  "~"
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
  "."
] @punctuation

; Atoms (scope labels)
(atom) @label

; Dot identifiers (variant constructors)
(dot_identifier) @variant

; Attributes
[
  "pub"
] @attribute

; Property access
(field_access
  field: (identifier) @property)

; Named arguments
(named_argument
  name: (identifier) @property)

; Struct fields
(struct_field
  name: (identifier) @property)

; Type parameters
(type_parameters
  (identifier) @type)

; Match arm guard
(guard) @operator
