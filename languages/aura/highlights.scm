; Comments and literals
(comment) @comment
(string) @string
(string_content) @string
(escape_sequence) @string.escape
(interpolation) @embedded
(char) @string.special
(integer) @number
(float) @number
(alias_value) @constant

; Symbols
(function_declaration
  name: (identifier) @function)

(macro_declaration
  name: (identifier) @function)

(assignment_declaration
  name: (identifier) @variable)

(call_expression
  callee: (identifier) @function)

(member_expression
  field: (identifier) @property)

(parameter
  name: (identifier) @variable.parameter)

(static_parameter
  name: (identifier) @type)

(named_type
  name: (identifier) @type)

(dot_identifier
  name: (identifier) @variant)

(dot_pattern
  name: (identifier) @variant)

(struct_field
  name: (identifier) @property)

(struct_pattern_field
  name: (identifier) @property)

(use_field
  local: (identifier) @variable)

(use_field
  source: (identifier) @variable)

; Keywords
[
  "def"
  "defmacro"
  "use"
  "doc"
  "label"
  "static"
] @keyword

; Operators and punctuation
[
  "="
  "->"
  ":"
  "."
  ","
  ";"
  "||"
  "&&"
  "=="
  "!="
  "<"
  ">"
  "<="
  ">="
  "+"
  "-"
  "*"
  "/"
  "%"
  ".."
] @operator

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation
