module Celestine::Modules::Animate::Transform
  module Attrs
    ATTRIBUTE_NAME = "attributeName"
    ATTRIBUTE_TYPE = "attributeType"
    ATTRIBUTE_TYPES = ["rotate", "translate", "scale"]
    REPEAT_COUNT = "repeatCount"
    REPEAT_DURATION = "repeatDur"
    DURATION = "dur"
    FROM = "from"
    TO = "to"
    BY = "by"
  end


  def animate_transform(&block : Proc(Celestine::Animate::Transform, Nil))
    animate = yield Celestine::Animate::Transform.new
    animate.draw(inner_elements)
  end
end