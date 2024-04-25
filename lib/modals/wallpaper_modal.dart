class Wallpaper_modal {
  String name;
  List<String> image;
  Wallpaper_modal(this.image, this.name);
  Wallpaper_modal.fromjson(Map<String, dynamic> json)
      : image = (json["image"] as List).map((e) => e.toString()).toList(),
        name = json["name"];
}
