# motion-schemes

Expand RubyMotion build system to support building multiple apps from one project.

## Setup

Install the gem:

```
gem install motion-schemes
```

## Usage

Require the gem in Rakefile:

```ruby
require 'rubygems'
require 'motion-schemes'
```

Specify your common build setting as you normally would. Use app.scheme to specify the current build scheme.

```ruby
Motion::Project::App.setup do |app|
  app.name = 'motion-schemes'
  app.scheme = :ipad

  # Your regular shared app setup
end
```

Use Motion::Project::App.scheme to specify custom app settings for a scheme:

```ruby
Motion::Project::App.scheme(:iphone) do |app|
  app.device_family = :iphone
  app.interface_orientations = [:portrait]
end

Motion::Project::App.scheme(:ipad) do |app|
  app.device_family = :ipad
  app.interface_orientations = [:portrait, :landscape_left, :landscape_right, :portrait_upside_down]
end
```

Run ```rake``` to build the app using selected scheme.

## License

```
Copyright (c) 2013, Francis Chong <francis@ignition.hk>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
