import './models/product.dart';
import './models/type.dart';
import './models/sub_type.dart';

final List<Type> loadedTypes = [
  Type(
    name: 'Весь каталог',
    id: 0,
  ),
  Type(
    name: 'Сантехника',
    id: 1,
  ),
  Type(
    name: 'Строительная химия',
    id: 2,
  ),
  Type(
    name: 'Ручные инструменты',
    id: 3,
  ),
];

final List<Subtype> loadedSubtypes = [
  Subtype(
      name: 'Шаровые краны',
      id: 1,
      ownBy: 1,
  ),
  Subtype(
    name: 'Краны для кухни',
    id: 2,
    ownBy: 1,
  ),
  Subtype(
    name: 'Краски и эмали',
    id: 1,
    ownBy: 2,
  ),
  Subtype(
    name: 'Краны для кухни',
    id: 2,
    ownBy: 2,
  ),
  Subtype(
    name: 'Строительный инструмент',
    id: 1,
    ownBy: 3,
  ),
  Subtype(
    name: 'Садовый инвентарь',
    id: 2,
    ownBy: 3,
  ),
];

final List<Product> loadedProduct = [
  Product(
      id: '1',
      typeId: 1,
      subtypeId: 1,
      title: 'Шаровой кран',
      description: 'Шаровый кран Bugatti OREGON 1/2" ',
      price: 389,
      imageUrl:
      'https://cdn.vseinstrumenti.ru/images/goods/santehnika/inzhenernaya/838480/1200x800/51536311.jpg'),
  Product(
      id: 'p2',
      typeId: 1,
      subtypeId: 2,
      title: 'Смеситель',
      description: 'Смеситель для ванны Decoroom одноручный универсальный DR38043 ',
      price: 2989,
      imageUrl:
      'https://cdn.vseinstrumenti.ru/images/goods/santehnika/tovary-dlya-vannoj-komnaty-i-tualeta/1155168/1200x800/52458713.jpg'),
  Product(
      id: 'p3',
      typeId: 3,
      subtypeId: 2,
      title: 'Шпатель',
      description:
      'Шпательная лопатка Gigant 100 мм из нержавеющей стали с пластиковой ручкой',
      price: 97,
      imageUrl:
      'https://cdn.vseinstrumenti.ru/images/goods/ruchnoy-instrument/dlya-shtukaturno-otdelochnyh-rabot/871647/1200x800/52421024.jpg'),
  Product(
      id: 'p4',
      typeId: 2,
      title: 'Краска',
      description:
      'Термостойкая краска для печей и каминов Krafor Альфа белая 3 кг',
      price: 648,
      imageUrl:
      'https://cdn.vseinstrumenti.ru/images/goods/krepezh/stroitelnaya-himiya/1240804/1200x800/51269776.jpg'),
  Product(
      id: 'p5',
      typeId: 3,
      title: 'Снеговая лопата',
      description:
      'Снеговая лопата Gigant Метелица в сборе с алюминиевым черенком и V-обр ручкой 430х490',
      price: 343,
      imageUrl:
      'https://cdn.vseinstrumenti.ru/images/goods/sadovaya-tehnika/sadoviy-instrument-i-inventar/836419/1200x800/52620203.jpg'),
  Product(
      id: 'p6',
      typeId: 3,
      title: 'Топор',
      description:
      'Кованый топор КЕДР 1250 г',
      price: 343,
      imageUrl:
      'https://cdn.vseinstrumenti.ru/images/goods/sadovaya-tehnika/sadoviy-instrument-i-inventar/879346/1200x800/52172815.jpg'),
  Product(
      id: 'p7',
      typeId: 2,
      title: 'Универсальная грунтовка',
      description:
      'Универсальная грунтовка для стен с антисептиком GU - 10л Goodhim',
      price: 535,
      imageUrl:
      'https://cdn.vseinstrumenti.ru/images/goods/krepezh/stroitelnaya-himiya/968941/461x415/52073828.jpg'),
  Product(
      id: 'p8',
      typeId: 2,
      title: 'Аэрозольная краска',
      description:
      'Аэрозольная краска ULTIMA RAL 6002 ЛИСТВЕННО-ЗЕЛЕНЫЙ универсальная 520 мл',
      price: 202,
      imageUrl:
      'https://cdn.vseinstrumenti.ru/images/goods/krepezh/stroitelnaya-himiya/1010637/461x415/51605718.jpg'),
  Product(
      id: 'p9',
      typeId: 1,
      title: 'Унитаз',
      description:
      'Унитаз-компакт Santek БРИЗ 1.WH20.2.569',
      price: 4490,
      imageUrl:
      'https://cdn.vseinstrumenti.ru/images/goods/santehnika/sanfayans/1144889/1200x800/51352973.jpg'),

];