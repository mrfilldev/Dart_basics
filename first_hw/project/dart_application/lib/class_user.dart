class User {
  late String name;
  late int age;
  late String email;
  bool statusAdmin;

  User(this.name, this.age, this.email, this.statusAdmin);

  void showFields() {
    print(
        'name - $name,\n age - $age,\n email - $email,\n status - $statusAdmin');
  }
}

mixin Email on User {
  String getMailSystem() {
    return email.split('@')[1];
  }
}

class AdminUser extends User with Email {
  AdminUser(super.name, super.age, super.email, super.statusAdmin);
}

class GeneralUser extends User {
  GeneralUser(super.name, super.age, super.email, super.statusAdmin);
}

class UserManager<T extends User> {
  List users = [];

  void addUser(User user) {
    users.add(user);
  }

  void removeUser(User user) {
    users.remove(user);
  }

  void showMailsUser() {
    for (int i = 0; i <= users.length; i++) {
      if (users[i].status_admin == true) {
        print(users[i].getMailSystem());
      } else {
        print(users[i].email);
      }
    }
  }

  void printAllUsers() {
    for (int i = 0; i < users.length; i++) {
      print(users[i]);
    }
  }
}
