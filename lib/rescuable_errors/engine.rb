module RescuableErrors
   class Engine < Rails::Engine
      config.i18n.load_path += Dir[RescuableErrors::Engine.root.join('config/locales/**', '*.{rb,yml}')]
   end
end
