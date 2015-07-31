content = File.read("edge.txt")

# RANDOM
def random
  ('0'..'9').to_a.shuffle[0..7].join.to_f / 1000000
end

content = content.split(" ")

new_content = []

# ADD
content.each_with_index { | elem , index |
  new_content  << elem
  if index % 4 == 3
    new_content << random.to_s
    new_content << random.to_s
    new_content << random.to_s
    new_content << random.to_s
    new_content << random.to_s
  end
}

# WRITE
i = 0
File.open("new_edge.txt", "w") { |file|

  new_content.each_with_index { | elem , index |
    if index % 9 == 0
      file.write("#{new_content[i..i+8].join(' ')} \n")
      i += 9
    end
  }

}

