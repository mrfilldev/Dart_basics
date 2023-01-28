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
  final users = <String>['a.corpE.iwanaev23@work.com', 'u.KachalovV@user.com'];
  

  void addEmail() {
    print('\nЭл. почта добавлена.');
    users.add('u.Email@gmail.com');
    users.add('u.Email2@gmail.com');
    users.add('u.Email3@gmail.com'); // пользователь
    users.add('a.corpE.worker@gmail.com'); // администратор
    users.add('a.corpE.worker@gmail.com');
    users.add('a.corpE.worker@gmail.com');
  }

  void deleteEmail(int indexEmail) {
    users.removeAt(indexEmail - 1);
    print(
        '\nЭл. почта ${users[indexEmail - 1]} удалена.'); //Соответствено можно было реализовать отображение почты админа или обычного пользователя
  }
  
  void listEmails() {
    print('\nСписок email:');
    for (var i = 0; i < users.length; i++) {
      var emails = users[i].split('E')[0];
      if (emails == 'a.corp') { // проверка на администратора
        print('email #${i + 1}: ${users[i].split('@')[1]}');
      } else {
        print('email #${i + 1}: ${users[i]}');
      }
    }
  }
}

