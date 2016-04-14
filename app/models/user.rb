class User < ActiveRecord::Base
 validates :locale, inclusion: { in: proc { I18n.available_locales.map { |l| l.to_s } } }
end
