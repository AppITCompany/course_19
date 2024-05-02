void main() {
  final authService = AuthService(GoogleDataBase());

  authService.createAccount(name: 'Eldiiar', phone: '12345678');

  authService.deleteAccount();
}

class AuthService {
  AuthService(this.dataBase);
  final DataBase dataBase;

  void createAccount({
    required String name,
    required String phone,
  }) {
    dataBase.save('register: name: $name, phone: $phone');
    print('Kottoo iygiluktuu');
  }

  void deleteAccount() {
    dataBase.delete();
    print('Account iygiluktuu ochuruldu');
  }
}

abstract class DataBase {
  void save(String data);
  void read();
  void delete();
}

class GoogleDataBase extends DataBase {
  @override
  void delete() {
    print('GoogleDataBase deleted');
  }

  @override
  void read() {
    print('GoogleDataBase read');
  }

  @override
  void save(String data) {
    print('GoogleDataBase save');
  }
}

class AmazomDataBase extends DataBase {
  @override
  void delete() {
    print('AmazonDataBase deleted');
  }

  @override
  void read() {
    print('AmazonDataBase read');
  }

  @override
  void save(String data) {
    print('AmazonDataBase save');
  }
}
