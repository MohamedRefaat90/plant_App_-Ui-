class Plant {
  String? title, country, description, image;
  int? price;
  Plant({
    required this.image,
    required this.title,
    required this.country,
    required this.description,
    required this.price,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'title': title,
      'image': image,
      'country': country,
      'description': description,
      'price': price,
    };
  }

  Plant.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    country = json['country'];
    description = json['description'];
    price = json['price'];
  }
}

String lorm =
    'Non non non occaecat cupidatat cupidatat non. Labore elit in laborum sunt aliqua irure consectetur. Id excepteur occaecat cupidatat voluptate esse incididunt culpa. Dolore ut culpa adipisicing fugiat deserunt ex. Labore tempor ut amet nostrud culpa elit. In sit consectetur adipisicing in pariatur ipsum minim duis culpa labore qui. Fugiat irure cillum reprehenderit incididunt.';
List<Plant> Data = [
  Plant(
      image: 'assets/images/image_1.png',
      title: 'Samantha',
      country: 'Russia',
      description: lorm,
      price: 440),
  Plant(
      image: 'assets/images/image_2.png',
      title: 'Angela',
      country: 'Amireca',
      description: lorm,
      price: 640),
  Plant(
      image: 'assets/images/image_3.png',
      title: 'Rose',
      country: 'Egypt',
      description: lorm,
      price: 540),
];
