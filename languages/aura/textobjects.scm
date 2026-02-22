(fn_decl
  (block
    "{"
    (_)* @function.inside
    "}")) @function.around

(block
  "{"
  (_)* @function.inside
  "}") @function.around

(comment)+ @comment.around
