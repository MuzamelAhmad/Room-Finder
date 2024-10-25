class MyListItem {
  final String title;
  final String icon;
  final String avail;
  final String Rate;
  final String time;
  final String Images;
  final String Location;
  /*final String Colors;*/

  MyListItem({required this.title, required this.icon,required this.avail ,
    required this.Rate,
    required this.time,
    required this.Images,
    required this.Location,
    /*required this.Colors,*/
  });
}

List<MyListItem> myList = [
  MyListItem(title: "1 Office at Lalitpu ", icon: ".",avail: "Available",  Rate: 'RS.8000  /', time: 'per month', Images: 'assets/images/P7.jpg',  Location: 'Mahalaxmi Lalitpur'/*,Colors : "green"*/),
  MyListItem(title: "1 Office at Imadul  ", icon: ".",avail: "Available",  Rate: 'RS.18000 /', time: 'per month', Images: 'assets/images/P8.jpg',  Location: 'Lalitpur'/*,Colors : "green"*/),
  MyListItem(title: "House Lalitpu 1     ", icon: ".",avail: "Unavailable",Rate: 'RS.10000 /', time: 'per month', Images: 'assets/images/P9.jpg',  Location: 'Mahalaxmi'/*,Colors : "red"*/),
  MyListItem(title: "4 Room imadul       ", icon: ".",avail: "Available",  Rate: 'RS.12000 /', time: 'per month', Images: 'assets/images/P10.jpg', Location: 'Imadul'/*,Colors : "green"*/),
  MyListItem(title: "Room for Students   ", icon: ".",avail: "Available",  Rate: 'RS.6000  /', time: 'per month', Images: 'assets/images/P11.jpg', Location: 'kulampur'/*,Colors : "green"*/),
  MyListItem(title: "1 Office at Lalitpu ", icon: ".",avail: "Available",  Rate: 'RS.15000 /', time: 'per month', Images: 'assets/images/P12.jpg', Location: 'Lalitpur'/*,Colors : "green"*/),
  MyListItem(title: "1 Office at Lalitpu ", icon: ".",avail: "Unavailable",Rate: 'RS.7000  /', time: 'per month', Images: 'assets/images/P13.jpg', Location: 'Mahalaxmi Lalitpur'/*,Colors : "red"*/),
  MyListItem(title: "1 Office at Lalitpu ", icon: ".",avail: "Available",  Rate: 'RS.25000 /', time: 'per month', Images: 'assets/images/P14.jpg', Location: 'imadul'/*,Colors : "green"*/),
  MyListItem(title: "apartment at imadul ", icon: ".",avail: "Unavailable",Rate: 'RS.22000 /', time: 'per month', Images: 'assets/images/P15.jpg', Location: 'kulampur'/*,Colors : "red"*/),
  MyListItem(title: "1 Office at Lalitpu ", icon: ".",avail: "Available",  Rate: 'RS.11000 /', time: 'per month', Images: 'assets/images/P16.jpg', Location: 'Mahalaxmi Lalitpur'/*,Colors : "green"*/),
  // Add more items as needed
];
