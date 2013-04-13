#!/usr/bin/env jruby

require 'rb_webcam'

capture = Webcam.new
image = capture.grab
img_file="test.jpg"
image.save(img_file)
capture.close
