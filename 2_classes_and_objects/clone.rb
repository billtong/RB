a = "abc"
b = a
c = a.clone
puts a.object_id #70239324960460
puts b.object_id #70239324960460
puts c.object_id #70239324956260
