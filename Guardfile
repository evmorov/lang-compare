require 'guard/plugin'

module ::Guard
  class God < Plugin
    def reload
      reload_god
    end

    def run_on_additions(paths)
      reload_god
    end

    def run_on_modifications(paths)
      reload_god
    end

    def run_on_removals(paths)
      reload_god
    end

    private

    def reload_god
      `god restart`
    end
  end
end

guard 'God' do
  watch(/^.+\.rb$/)
end
