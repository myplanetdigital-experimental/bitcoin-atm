#!/usr/bin/env ruby

require 'rb_webcam'

capture = Webcam.new
image = capture.grab
image.save("test.jpg")
capture.close
