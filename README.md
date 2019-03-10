# Bucket purge for sfn

Simple callback for sfn which will run before executing
the `destroy` command. It will search the stack for bucket
resources and delete all files within any found buckets.

## Usage

### Setup

First add the `sfn-bucketpurge` gem to the local bundle (in the `./Gemfile`):

```ruby
group :sfn do
  gem 'sfn-bucketpurge'
end
```

Then enable the `sfn-bucketpurge` callback in the `.sfn` configuration file:

```ruby
Configuration.new do
  ...
  callbacks do
    require ['sfn-bucketpurge']
    default ['bucket_purge']
  end
end
```

## Info

* Repository: https://github.com/sparkleformation/sfn-bucketpurge
* IRC: Freenode @ #sparkleformation
* Gitter: [![Join at https://gitter.im/SparkleFormation/sparkleformation](https://badges.gitter.im/SparkleFormation/sparkleformation.svg)](https://gitter.im/SparkleFormation/sparkleformation?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
