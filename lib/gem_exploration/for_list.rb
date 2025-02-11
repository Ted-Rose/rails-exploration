def list
  3.times do |i|
    BucketStore.for("inmemory://bucket/path/file_#{i}.xml").upload!("hello world")
  end

  puts "Listing files"
  BucketStore.for("inmemory://bucket/").list.each do |file|
    puts "File: #{file}"
  end
end
