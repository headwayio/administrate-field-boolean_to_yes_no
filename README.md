# Administrate::Field::BooleanToYesNo

A plugin for [Administrate](https://github.com/thoughtbot/administrate)

## Usage

Add to your `Gemfile`:

```ruby
gem 'administrate-field-boolean_to_yes_no'
```

Run:

```bash
$ bundle install
```

Add to your `FooDashboard`:
```ruby
ATTRIBUTE_TYPES = [
  active: Field::BooleanToYesNo
]
```

## Customize

Customize or overwrite the labels by just adding this to your `config/locales/*.yml`.

```yml
administrate:
  fields:
    boolean_to_yes_no:
      'false': "No"
      'true': "Yes"
```
