void main() {
  List<Map<String, dynamic>> ongList = [
    {
      "name": "Engenheiros Sem Fronteiras",
      "info":
          "Ong de engenheiros bla bla bl ablba blaba  ablabb a ablalba laba",
      "path": "assets/images/eng-ceu.jpg",
      "url": "https://esf.org.br/",
      "widgets": [
        {
          "type": "image",
          "path": "assets/images/eng-foto1.jpg",
        },
        {
          "type": "image",
          "path": "assets/images/eng-foto3.jpg",
        },
        {
          "type": "image",
          "path": "assets/images/eng-foto4r.jpg",
        },
        {
          "type": "image",
          "path": "assets/images/eng-foto5.jpg",
        },
        {
          "type": "image",
          "path": "assets/images/eng-foto5.jpg",
        },
      ]
    },
  ];

  final int widgets_number = ongList[0]['widgets'].length;
  final bool is_odd = widgets_number % 2 == 1;
  print("ceil: ${(widgets_number / 2).ceil()}");
  for (int i = 0; i < widgets_number; i++) {
    print(ongList[0]['widgets'][i]['path']);
    if (is_odd && i == widgets_number - 1) {
      print("Último e impar");
    }
  }
  List list = ongList[0]['widgets'].map((widg) => widg["path"]).toList();
}
