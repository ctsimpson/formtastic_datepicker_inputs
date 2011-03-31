# FormtasticDatepickerInputs

Use jQuery UI's date picker with formtastic easily.
This plugin is based on a [blog post by Grzegorz Brzezinka](http://blog.brzezinka.eu/webmaster-tips/ruby/ruby-on-rails-formtastic-jquery-ui-datepicker)

## Installation and configuration

This gem has been designed for Rails 3 and formtastic 2 only.

### Install

Insert
    gem 'formtastic_datepicker_inputs', :git => 'https://github.com/etehtsea/formtastic_datepicker_inputs.git'
in your Gemfile. Then do
    $ bundle install

## Usage
### Available inputs:
    :date_picker - a date select. Default for column types: :date.
    :date_time_picker - a date and time select. Default for column types: :datetime and :timestamp.

### Example:
The concept is simple. It adds a new input into formtastic that can be used like this:
    <%= semantic_form_for @master do |f| %>
		  <%= f.inputs do %>
		    <%= f.input :name %>
		    <%= f.input :time_field,      :as => :date_picker %>
        <%= f.input :date_time_field, :as => :date_time_picker %>
		  <% end %>
		  <%= f.buttons %>
	  <% end %>

It adds a class onto a normal text input called 'ui-date-picker', and the parent &lt;li> it adds a class called 'date_picker.' Assuming you have already referenced jquery, and jquery-ui in your layout, You can then hook this with a call from jquery:

	$(document).ready(function(){
		$('input.ui-date-picker').datepicker();
	});

## Running Tests

Run the tests
    rake spec
Also, most of the testing environment has been copied straight of formtastic, so if something doesn't make sense here, it probably did where I grabbed it from.

## Contributing to has_enum

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2011 Grzegorz Brzezinka, Nik Petersen, Alan Harper, Konstantin Shabanov. See MIT-LICENSE for further details.
