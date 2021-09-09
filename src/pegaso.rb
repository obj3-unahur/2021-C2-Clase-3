module Volador
  attr_reader :energia
  attr_accessor :esfuerzo_volar

  def volar(distancia)
    puts "Volando #{distancia} metros"
    @energia -= (distancia * @esfuerzo_volar)
  end
end

module Corredor
  attr_reader :energia
  attr_accessor :esfuerzo_correr

  def correr(distancia)
    puts "Corriendo #{distancia} metros"
    @energia -= (distancia * @esfuerzo_correr)
  end
end

class Pegaso
  include Corredor
  include Volador

  def initialize(energia=100, esfuerzo_volar=5, esfuerzo_correr=1)
    @energia = energia
    @esfuerzo_volar = esfuerzo_volar
    @esfuerzo_correr = esfuerzo_correr
  end

  def volar(distancia)
    "Volando #{distancia} mts como Pegaso"
  end

  def self.especie
    "Pegaso"
  end

  private

  def saltar(desde=5)
    "Saltando #{desde} mts de altura"
  end
end

class Unicornio < Pegaso
  def volar(distancia)
    "Volando #{distancia} mts como Unicornio"
  end
end
