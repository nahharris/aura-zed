(fn_decl
  body: (block
    "{"
    (_)* @function.inside
    "}")) @function.around

(closure
  "{"
  (_)* @function.inside
  "}") @function.around

(comment)+ @comment.around
