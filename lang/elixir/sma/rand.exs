defmodule Math.Rand do
    def seed_random do
        :random.seed(:os.timestamp)
    end
    def get_random do
        :random.uniform * 100
    end
end
