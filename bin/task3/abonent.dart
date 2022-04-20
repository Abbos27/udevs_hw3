class Abonent {
  int _id;
  String _surname;
  String _name;
  String _middleName;
  String _address;
  String _credit;
  int _cardNumber;
  int _debit;
  String _city;
  int _insideCalls;
  int _outsideCalls;

  Abonent(
      this._id,
      this._surname,
      this._name,
      this._middleName,
      this._address,
      this._credit,
      this._cardNumber,
      this._debit,
      this._city,
      this._insideCalls,
      this._outsideCalls);

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  int get outsideCalls => _outsideCalls;

  set outsideCalls(int value) {
    _outsideCalls = value;
  }

  int get insideCalls => _insideCalls;

  set insideCalls(int value) {
    _insideCalls = value;
  }

  String get city => _city;

  set city(String value) {
    _city = value;
  }

  int get debit => _debit;

  set debit(int value) {
    _debit = value;
  }

  int get cardNumber => _cardNumber;

  set cardNumber(int value) {
    _cardNumber = value;
  }

  String get credit => _credit;

  set credit(String value) {
    _credit = value;
  }

  String get address => _address;

  set address(String value) {
    _address = value;
  }

  String get middleName => _middleName;

  set middleName(String value) {
    _middleName = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get surname => _surname;

  set surname(String value) {
    _surname = value;
  }

  @override
  String toString() {
    return 'Abonent{_id: $_id, _surname: $_surname, _name: $_name, _middleName: $_middleName, _address: $_address, _credit: $_credit, _cardNumber: $_cardNumber, _debit: $_debit, _city: $_city, _insideCalls: $_insideCalls, _outsideCalls: $_outsideCalls}';
  }
}
