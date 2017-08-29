class demo::var {

 $top_var = "00001"  
 $local_var = "105"
  notify { "${top_var} is top scope variable": }
  notify { "${node_var} is node scope variable": }
  notify { "${local_var} is local scope variable": }

}
