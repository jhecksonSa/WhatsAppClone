import 'chat.dart';

class DammyData {
  static const List<Chat> ChatList = [
    Chat(
        contactName: 'Michelangelo',
        avatar:
            'https://veja.abril.com.br/wp-content/uploads/2021/09/Michelangelo_Daniele_da_Volterra_dettaglio.jpg',
        dateMsg: '19/03/1553',
        isPin: true,
        description: 'foi um pintor, escultor, poeta...',
        coutMsg: 30),
    Chat(
        contactName: 'Nikola Tesla',
        avatar:
            'https://www.greenmebrasil.com/wp-content/uploads/2017/06/nikola_tesla-1200x900.jpg',
        dateMsg: '15/09/1883',
        isPin: true,
        description: 'engenheiro eletrotécnico...',
        coutMsg: 2),
    Chat(
        contactName: '00 0 00000000',
        avatar: '',
        dateMsg: '30/03/2022',
        isPin: false,
        description: 'lorem ipsum',
        coutMsg: 3),
  ];
}
