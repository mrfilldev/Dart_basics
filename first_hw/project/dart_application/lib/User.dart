class User{
  late String name;
  late int age;
  late String email;
  bool status_admin;

  User(this.name, this.age, this.email, this.status_admin);

  show_fields(){
    print('name - $name,\n age - $age,\n email - $email,\n status - $status_admin');
  }
}

mixin Email on User{
  getMailSystem(){
    return(email.split('@')[1]);
  }
}

class AdminUser extends User with Email{
  AdminUser(super.name, super.age, super.email, super.status_admin);
  
}

class GeneralUser extends User{
  GeneralUser(super.name, super.age, super.email, super.status_admin);

}

class UserManager<T extends User>{
  List users = [];

  add_user(User user){
    users.add(user);
  }

  remove_user(User user){
    users.remove(user);
  }

  show_mails_user(){
    for (int i = 0; i <= users.length; i++){
      if(users[i].status_admin == true){
        print(users[i].getMailSystem());
      } else { 
        print(users[i].email);
      }
    }
  }

  print_all_users(){
    for(int i=0; i < users.length; i++){
      print(users[i]);
    }
  }
}