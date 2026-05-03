(comment) @comment
(string) @string
(string_content) @string
(escape_sequence) @string.escape
(integer) @number
(float) @number

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
