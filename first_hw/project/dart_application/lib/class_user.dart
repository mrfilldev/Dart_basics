abstract class User {
  final String email;

  User(this.email);
}


mixin GetEmail on User {
  String get getMailSystem => email.split('@')[1];
}

class AdminUser extends User with GetEmail {
  AdminUser(String emailAdm) : super(emailAdm);
}

class GeneralUser extends User {
  GeneralUser(String emailUser) : super(emailUser);
}

class UserManager<T extends User> {
  // список пользователей, в которых хранятся как пользователи, так и администраторы
  final users = <T>[];
  

  void addUser(T user) => users.add(user);

  void deleteEmail(int indexEmail) {
    print(indexEmail-1);
    users.removeAt(indexEmail - 1);
  }
  
  void listEmails() {
    print('\nСписок email:');
    for (var i = 0; i < users.length; i++) {
      var emails = users[i].email.toString().split('E')[0];
      print(emails);
      print("!!!!!!");
      if (emails == 'a.corp') { // проверка на администратора
        print('email #${i + 1}: ${users[i].email.toString().split('@')[1]}');
      } else {
        print('email #${i + 1}: ${users[i].email.toString()}');
      }
    }
  }
}

