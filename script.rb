require 'aws-sdk'
require 'pp'

client = Aws::Rekognition::Client.new('SECRET AMAZON KEYS')
labels = client.detect_labels({:image => {:bytes => File.read("/Users/avi/Desktop/joe.png")}})

pp labels