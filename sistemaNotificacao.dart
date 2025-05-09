void main(){
  Notificavel email = NotificarEmail();
  Notificavel sms = NotificarSMS();
  Notificavel push = NotificarPush();

  email.enviarNotificacoes('Seu pedido foi enviado.');
  sms.enviarNotificacoes('Seu código de verificação é 1234');
  push.enviarNotificacoes('Você recebeu uma nova menssagem');
}

abstract interface class Notificavel {
  void enviarNotificacoes(String menssagem);
}

class NotificarEmail implements Notificavel{
  @override
  void enviarNotificacoes(String menssagem){
    print('Enviado por Email: $menssagem');
  }
}

class NotificarSMS implements Notificavel{
  @override
  void enviarNotificacoes(String menssagem){
    print('Enviado por SMS: $menssagem');
  }
}

class NotificarPush implements Notificavel{
  @override
  void enviarNotificacoes(String menssagem){
    print('Enviado por Push Notification: $menssagem');
  } 
  
}