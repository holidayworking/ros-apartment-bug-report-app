# frozen_string_literal: true

Apartment.configure do |config|
  config.excluded_models = %w[Company]

  config.tenant_names = -> { Company.pluck(:tenant_name) }

  config.use_schemas = true
end
