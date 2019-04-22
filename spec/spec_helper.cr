require "spec"
require "../src/liquid"

def node_output(node : Block::Node, ctx : Context)
  v = RenderVisitor.new ctx, IO::Memory.new
  node.accept v
  v.output
end
