require 'aws-sdk'
require 'pp'

response = client.detect_labels({:image => {:bytes => File.read("/Users/avi/Desktop/joe.png")}})

response.labels.each do |label|
  puts "Label: #{label.name}"
  puts "Confidence: #{label.confidence}"
end
