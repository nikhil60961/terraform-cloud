import "tfplan"

main = rule{
all tfplan.resources.aws_instance as _, instances{
 all instances as _, r{
 (lenght(r.applied.tags) else 0) > 0
 }
}
  
}
