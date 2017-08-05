defmodule IbgeTest do
  use ExUnit.Case

  test "populacao inicial igual a populacao alvo" do
    assert Ibge.calc(1000, 0, 0, 1000) == 0
  end

  test "populacao inicial maior que a populacao alvo" do
    assert Ibge.calc(1000, 0, 0, 999) == 0
  end

  test "populacao apenas crescimento migracao em um ano" do
    assert Ibge.calc(1000, 0, 50, 1050) == 1
  end

  test "populacao apenas crescimento migracao em dois anos" do
    assert Ibge.calc(1000, 0, 50, 1100) == 2
  end

  test "populacao apenas crescimento migracao em tres anos" do
    assert Ibge.calc(1000, 0, 50, 1101) == 3
  end

  test "populacao apenas crescimento percentual em um ano" do
    assert Ibge.calc(1000, 10, 0, 1100) == 1
  end

  test "populacao apenas crescimento percentual em dois anos" do
    assert Ibge.calc(1000, 10, 0, 1101) == 2
  end

  test "sanity tests" do
    assert Ibge.calc(1500, 5, 100, 5000) == 15
    assert Ibge.calc(1500000, 2.5, 10000, 2000000) == 10
    assert Ibge.calc(1500000, 0.25, 1000, 2000000) == 94
    assert Ibge.calc(1500000, 0.25, -1000, 2000000) == 151
    assert Ibge.calc(1500000, 0.25, 1, 2000000) == 116
    assert Ibge.calc(1500000, 0.0, 10000, 2000000) == 50
    assert Ibge.calc(1000, 1, -9, 30000000000000000000) == 4045
  end
end
