
Feature: S01 otworz strone, logowanie

  Scenario: S01 logowanie-pozytywny

    Given Ogolne: otworz strone awpro
    When Awpro: w pole USERNAME wprowadz wartosc a.tischner
    When Awpro: w pole PASSWORD wprowadz wartosc At1234!@
    Then Awpro: kliknij LOGIN
    Given Ogolne: Poczekaj 5 sekund
  

  Scenario: S01 logowanie-negatywny

    Given Ogolne: otworz strone awpro
    When Awpro: w pole USERNAME wprowadz wartosc aaa
    When Awpro: w pole PASSWORD wprowadz wartosc aaa
    Then Awpro: kliknij LOGIN
    Given Ogolne: Poczekaj 5 sekund
    Then Awpro: w polu VALID znajduje sie wartosc Błędne hasło