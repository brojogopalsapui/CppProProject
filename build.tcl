#!/usr/bin/env tclsh

proc color_print {text color_code} {
    puts "\033\[${color_code}m${text}\033\[0m"
}

proc get_timestamp {} {
    return [clock clicks -milliseconds]
}

# Clean old log
file delete -force build_log.txt
set log_fp [open build_log.txt "w"]
puts $log_fp "===== Build Started =====\n"
close $log_fp

set start_time [get_timestamp]

puts "🔨 Running Makefile build..."
set result [catch {exec make} output]

set log_fp [open build_log.txt "a"]
puts $log_fp $output
close $log_fp

if {$result == 0} {
    color_print "✅ Build Successful!" 32
} else {
    color_print "❌ Build Failed!" 31
}

set end_time [get_timestamp]
set elapsed [expr {($end_time - $start_time) / 1000.0}]
color_print "🕒 Build Time: ${elapsed} seconds" 35

set log_fp [open build_log.txt "a"]
puts $log_fp "===== Build Completed in ${elapsed} seconds =====\n"
close $log_fp

