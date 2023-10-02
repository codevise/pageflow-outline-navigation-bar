module Pageflow
  module OutlineNavigationBar
    class Engine < Rails::Engine
      isolate_namespace Pageflow::OutlineNavigationBar

      if Rails.respond_to?(:autoloaders)
        lib = root.join('lib')

        config.autoload_paths << lib
        config.eager_load_paths << lib

        initializer 'pageflow_outline_navigation_bar.autoloading' do
          Rails.autoloaders.main.ignore(
            lib.join('pageflow-outline-navigation-bar.rb'),
            lib.join('pageflow/outline_navigation_bar/version.rb')
          )
        end
      else
        config.autoload_paths << File.join(config.root, 'lib')
      end
    end
  end
end
