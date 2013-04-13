#!/usr/bin/env ruby

require 'zxing'

ZXing.decode File.expand_path('test.jpg')
