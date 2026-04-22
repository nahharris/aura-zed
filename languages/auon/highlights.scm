(comment) @comment
(string) @string
(string_content) @string
(escape_sequence) @string.escape
(char) @string.special
(integer) @number
(float) @number
(alias_value) @constant

(dot_identifier
  name: (identifier) @variant)

(struct_field
  name: (identifier) @property)

[
  "="
  "."
  ","
] @operator

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation
