
import 'package:plant_ui/common/assets/index.dart';
import 'package:plant_ui/models/plant_model.dart';

class AppArray {
  var bottomNavigationBarList = [
    {
      "title": "Home",
      "icon": eImageAssets.bottomHome,
      "iconDark": eImageAssets.bottomHome
    },
    {
      "title": "Faverote",
      "icon": eImageAssets.bottomFav,
      "iconDark": eImageAssets.bottomFav
    },
    {
      "title": "Cart",
      "icon": eImageAssets.bottomCart,
      "iconDark": eImageAssets.bottomCart
    },
    {
      "title": "Settings",
      "icon": eImageAssets.bottomSettings,
      "iconDark": eImageAssets.bottomSettings
    }
  ];


var drawerList = [
    {"title": 'Home', "icon": eSvgAssets.homeDrawer},
    {"title": 'Faverote', "icon": eSvgAssets.barChartDrawer},
    {"title": 'Notification', "icon": eSvgAssets.cardDrawer},
   
  ];

  
var hs_categories = [
  {"id" : 0,"category": "All"},
  {"id" : 1,"category": "Outdoor"},
  {"id" : 2,"category": "Indoor"},
  {"id" : 3,"category": "Office"},
  {"id" : 4,"category": "Garden"},
   
  ];

  List<Plants> plants = [
  Plants(
    id: 0,
    name: 'Succuient',
    imagePath: 'assets/images/home/image1.jpg',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 75.00,
    isFavorit: false,
  ),
  Plants(
    id: 1,
    name: 'Succuient',
    imagePath: 'assets/images/home/image2.jpg',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 75.00,
    isFavorit: false,
  ),
  Plants(
    id: 2,
    name: 'Ficus retusa',
    imagePath: 'assets/images/home/image3.jpg',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 60.00,
    isFavorit: false,
  ),
  Plants(
    id: 3,
    name: 'Ficus retusa',
    imagePath: 'assets/images/home/image5.jpg',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 90.00,
    isFavorit: false,
  ),
];

List<Plants> populerPlants = [
  Plants(
    id: 0,
    name: 'Succuient',
    imagePath: 'assets/images/home/01.png',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 75.00,
    isFavorit: false,
  ),
  Plants(
    id: 1,
    name: 'Succuient',
    imagePath: 'assets/images/home/02.png',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 75.00,
    isFavorit: false,
  ),
  Plants(
    id: 2,
    name: 'Ficus retusa',
    imagePath: 'assets/images/home/03.png',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 60.00,
    isFavorit: false,
  ),
];

}
