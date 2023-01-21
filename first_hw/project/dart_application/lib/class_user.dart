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
  final email = <String>['a.corpE.iwanaev23@work.com', 'u.KachalovV@user.com'];

  void addEmail() {
    print('\nЭл. почта добавлена.');
    email.add('u.Email@gmail.com');
    email.add('u.Email2@gmail.com');
    email.add('u.Email3@gmail.com');
    email.add('a.corpE.worker@gmail.com');
    email.add('a.corpE.worker@gmail.com');
    email.add('a.corpE.worker@gmail.com');
  }

  void deleteEmail(int indexEmail) {
    email.removeAt(indexEmail - 1);
    print(
        '\nЭл. почта ${email[indexEmail - 1]} удалена.'); //Соответствено можно было реализовать отображение почты админа или обычного пользователя
  }
  
  void listEmails() {
    print('\nСписок email:');
    for (var i = 0; i < email.length; i++) {
      var emails = email[i].split('E')[0];
      if (emails == 'a.corp') {
        print('email #${i + 1}: ${email[i].split('@')[1]}');
      } else {
        print('email #${i + 1}: ${email[i]}');
      }
    }
  }
}


