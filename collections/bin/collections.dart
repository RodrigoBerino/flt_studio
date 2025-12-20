void enviarEmail (String email){
  print("Enviando email para $email");
}
void main () {
/*   List<String> listaEmails = ["email1@example.com", "email2@example.com"];
  

  for (String email in listaEmails){
    print(email);
  }

  for (String email in listaEmails){
    enviarEmail(email);
  }


  listaEmails.add("newemail.example.com");

  if (listaEmails.contains("newemail.example.com")==false){
    listaEmails.add("newemail.example.com"); 
  } */

/*   Set<String> setEmails = {"email1@example.com", "email2@example.com"};

  setEmails.add("new@mail.com");

  for (String email in setEmails){
    print(email);
  }

  if (setEmails.contains("new@mail.com")){
    print("dentro");
  } else {
    print("fora");
  } */

 Map<String, String> pessoaEmail = {
  'joao' : 'joao@gmail.com',
  'maria' : 'maria@gmail.com'
 };

/*   for (String in pessoaEmail){
    print(pessoaEmail);
  } */

 print(pessoaEmail.keys);
 print(pessoaEmail.values);
 print(pessoaEmail.entries);

  pessoaEmail ["pedro"] = "pedro.com"; 

  for (var i in pessoaEmail.entries) {
    print('${i.key}: ${i.value}');
  }

  for (String mail in pessoaEmail.values){
    print(mail);
  }
}

