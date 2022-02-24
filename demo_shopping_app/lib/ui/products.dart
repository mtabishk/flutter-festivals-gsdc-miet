class Product {
  final String imageUrl;
  final String price;
  final String brand;
  Product({
    required this.imageUrl,
    required this.price,
    required this.brand,
  });

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'price': price,
      'brand': brand,
    };
  }
}

List<Product> nikeProducts = [
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/nike%2Fnike_1.jpg?alt=media&token=6d2ca9eb-042c-440d-9f49-cfd7933c225d',
    price: '100.00',
    brand: 'nike',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/nike%2Fnike_2.jpg?alt=media&token=e527a08e-49b9-470e-abe0-20239bc6e80a',
    price: '95.00',
    brand: 'nike',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/nike%2Fnike_3.jpg?alt=media&token=1b9e560f-4d69-48a4-8998-06f0a449f709',
    price: '124.00',
    brand: 'nike',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/nike%2Fnike_4.jpg?alt=media&token=2fdeb112-c319-4b80-b047-15f5900bc394',
    price: '225.00',
    brand: 'nike',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/nike%2Fnike_5.jpg?alt=media&token=65b17bfd-9f21-4bf6-8b6c-279a01e75ca8',
    price: '80.00',
    brand: 'nike',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/nike%2Fnike_3.jpg?alt=media&token=1b9e560f-4d69-48a4-8998-06f0a449f709',
    price: '99.00',
    brand: 'nike',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/nike%2Fnike_7.jpg?alt=media&token=2e241bc5-dd56-43e2-a048-130800c8b68d',
    price: '100.00',
    brand: 'nike',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/nike%2Fnike_8.jpg?alt=media&token=5d401b88-7f87-4362-a7f3-08bdff5ed104',
    price: '220.00',
    brand: 'nike',
  ),
];

List<Product> adidasProducts = [
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/adidas%2Fadidas_1.jpg?alt=media&token=4e2547fd-5f40-4982-b170-42d21e3e272c',
    price: '100.00',
    brand: 'adidas',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/adidas%2Fadidas_2.jpg?alt=media&token=49e9e42c-f1a1-4535-bc2b-800a434d5aca',
    price: '95.00',
    brand: 'adidas',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/adidas%2Fadidas_3.jpg?alt=media&token=aabd316e-2dcc-4a4b-a7dc-3b2dcafc10d3',
    price: '124.00',
    brand: 'adidas',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/adidas%2Fadidas_4.jpg?alt=media&token=d41c121e-5bc9-4945-b5f7-e7d2348c7897',
    price: '225.00',
    brand: 'adidas',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/adidas%2Fadidas_5.jpg?alt=media&token=81655427-2a42-4c8d-bc44-2a0634fd30bc',
    price: '80.00',
    brand: 'adidas',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/adidas%2Fadidas_6.jpg?alt=media&token=779d2068-f676-4c3a-93be-2292aa3e8912',
    price: '99.00',
    brand: 'adidas',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/adidas%2Fadidas_7.jpg?alt=media&token=ea729c8e-7f49-4c05-a60b-c9feaac7216e',
    price: '100.00',
    brand: 'adidas',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/adidas%2Fadidas_8.jpg?alt=media&token=741c2324-d8c3-4f7f-985e-eefc9e9d8b96',
    price: '220.00',
    brand: 'adidas',
  ),
];

List<Product> pumaProducts = [
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/puma%2Fpuma_1.jpg?alt=media&token=6932d36d-b07b-4c97-a18d-c98ffe270c23',
    price: '100.00',
    brand: 'puma',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/puma%2Fpuma_2.jpg?alt=media&token=4eef61f2-ac0c-492a-b9e7-0fedc498ae8d',
    price: '95.00',
    brand: 'puma',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/adidas%2Fadidas_3.jpg?alt=media&token=aabd316e-2dcc-4a4b-a7dc-3b2dcafc10d3',
    price: '124.00',
    brand: 'puma',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/puma%2Fpuma_4.jpg?alt=media&token=c96ce30c-ef38-4608-89d0-1033e682099b',
    price: '225.00',
    brand: 'puma',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/puma%2Fpuma_5.jpg?alt=media&token=26a94a1c-7d37-44d3-b556-dfcfcab8c684',
    price: '80.00',
    brand: 'puma',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/puma%2Fpuma_6.jpg?alt=media&token=d283c2f7-1a72-414b-be06-583e06a75e94',
    price: '100.00',
    brand: 'puma',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/puma%2Fpuma_7.jpg?alt=media&token=fe5c98cb-94ba-45df-918f-4e8ce53cb050',
    price: '220.00',
    brand: 'puma',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/puma%2Fpuma_8.jpg?alt=media&token=6197daaa-b3b8-4b40-a9b9-4d2d6512937c',
    price: '99.00',
    brand: 'puma',
  ),
];

List<Product> reebokProducts = [
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/reebok%2Freebok_1.jpg?alt=media&token=570224ab-dffc-4b16-9918-39b544dc6c15',
    price: '100.00',
    brand: 'reebok',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/reebok%2Freebok_2.jpg?alt=media&token=a008c7ce-73f7-44f9-833b-f809941efa2b',
    price: '95.00',
    brand: 'reebok',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/reebok%2Freebok_3.jpg?alt=media&token=09b5cc85-ed22-4882-94e5-02c9d7c3a666',
    price: '124.00',
    brand: 'reebok',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/reebok%2Freebok_4.jpg?alt=media&token=5df643a8-646a-483a-a129-1cb6fffebd37',
    price: '225.00',
    brand: 'reebok',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/reebok%2Freebok_5.jpg?alt=media&token=2c607092-998a-4c58-9ca3-127b9b3f5929',
    price: '80.00',
    brand: 'reebok',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/reebok%2Freebok_6.jpg?alt=media&token=05375c3f-e9f5-4d72-8b9e-c19687a9e3a4',
    price: '100.00',
    brand: 'reebok',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/reebok%2Freebok_7.jpg?alt=media&token=c1d32004-0b3e-4913-9f73-a61b555a113a',
    price: '220.00',
    brand: 'reebok',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/reebok%2Freebok_8.jpg?alt=media&token=e09db7a1-4ee1-49cc-b6b1-0802f4d99d6e',
    price: '99.00',
    brand: 'reebok',
  ),
];

List<Product> vansProducts = [
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/vans%2Fvans_1.jpg?alt=media&token=ddec0359-bfc4-4808-bc6a-b292ed23443f',
    price: '100.00',
    brand: 'vans',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/vans%2Fvans_2.jpg?alt=media&token=4f9b1de0-2a48-46d5-82d8-59c0e637a285',
    price: '95.00',
    brand: 'vans',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/vans%2Fvans_3.jpg?alt=media&token=39ba14c8-f9f1-47e3-9475-197ea04e7795',
    price: '124.00',
    brand: 'vans',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/vans%2Fvans_4.jpg?alt=media&token=0bf578c8-09e6-4ca1-aeb6-104eeb8160ab',
    price: '225.00',
    brand: 'vans',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/vans%2Fvans_5.jpg?alt=media&token=ad0f2642-8a4d-425e-bcfc-95500c50b1f2',
    price: '80.00',
    brand: 'vans',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/vans%2Fvans_6.jpg?alt=media&token=e227161b-2d51-4084-9a7a-bd602decb9f0',
    price: '100.00',
    brand: 'vans',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/vans%2Fvans_7.jpg?alt=media&token=ba628936-5c44-463e-ad58-0b8dea834e4e',
    price: '220.00',
    brand: 'vans',
  ),
  Product(
    imageUrl:
        'https://firebasestorage.googleapis.com/v0/b/kiksstoredemo.appspot.com/o/vans%2Fvans_8.jpg?alt=media&token=a6693d41-2365-4a88-90b0-f0ea13a4e4f1',
    price: '99.00',
    brand: 'vans',
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
