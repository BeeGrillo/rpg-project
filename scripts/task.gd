extends Node

class_name Task

var title: String
var desc: String
var created_at: Time
var deadline: String
var leadTime: LeadTime
var coletivo: bool

class LeadTime:
	var estimated: Time
	var done: Array[String]
	
	class Entry:
		var date: Time
		var duration: int
		var desc: String
		
		func _init(_duration, _date, _desc):
			date = _date
			duration = _duration
			desc = _desc
			
	func add_entry(duration, date = Time.get_unix_time_from_system(), desc = null):
		done.append(Entry.new(date, duration, desc))
	
	
