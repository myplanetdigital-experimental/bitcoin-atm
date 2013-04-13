#!/usr/bin/env jruby

require 'zxing'

ZXing.decode File.expand_path('test.jpg')
