#!/usr/bin/env ruby

require 'thor'

class Taskki < Thor
  desc "view", "View all tasks"
  method_option :today, :aliases => "-t", :desc => "View today's tasks"
  method_option :week, :aliases => "-w", :desc => "View this week's tasks"
  method_option :longterm, :aliases => "-l", :desc => "View long term tasks"
  def view
    if options[:today]
      puts "today"
    elsif options[:week]
      puts "week"
    elsif options[:longterm]
      puts "longterm"
    else
      puts "all"
    end
  end

  desc "add", "Add task"
  method_option :due, :desc => "Add due date", :required => true
  method_option :takes, :desc => "How long does this take"
  method_option :top_priority, :aliases => "-tp", :desc => "Turn on Top Priority"
  method_option :reoccur, :aliases => "-r", :desc => "Turn on reoccur"
  def add(*title)
    p title.join(" ")
    p options

  end
end

Taskki.start(ARGV)