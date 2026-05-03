; Comments and literals
(comment) @comment
(string) @string
(string_content) @string
(escape_sequence) @string.escape
(interpolation) @embedded
(integer) @number
(float) @number

; Symbols
(def_fn_decl
  (identifier) @function)

(macro_decl
  (identifier) @function)

(def_value_decl
  (identifier) @variable)

(call_expression
  (identifier) @function)

(field_access
  (identifier) @property)

(safe_access
  (identifier) @property)

(parameter
  (identifier) @variable.parameter)

(type_param
  (identifier) @type)

(named_type
  (identifier) @type)

(dot_identifier
  (identifier) @variant)

(variant_pattern
  (dot_identifier) @variant)

(struct_field_type
  (identifier) @property)

(field_init
  (identifier) @property)

(struct_pattern_field
  (identifier) @property)

(use_field
  (identifier) @variable)

; Keywords
[
  "def"
  "defmacro"
  "use"
  "pub"
  "let"
  "return"
  "break"
  "continue"
  "if"
  "then"
  "else"
  "cases"
  "loop"
  "while"
  "do"
  "union"
  "enum"
  "interface"
  "builtin"
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
  "?:"
  "?."
  "!!"
  "++"
  "--"
  "!"
  "'"
  "~"
] @operator

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation
