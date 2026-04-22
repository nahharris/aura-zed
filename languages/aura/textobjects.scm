(function_declaration
  (block_expression
    "{"
    (_)* @function.inside
    "}")) @function.around

(macro_declaration
  (block_expression
    "{"
    (_)* @function.inside
    "}")) @function.around

(block_expression
  "{"
  (_)* @function.inside
  "}") @function.around

(comment)+ @comment.around
