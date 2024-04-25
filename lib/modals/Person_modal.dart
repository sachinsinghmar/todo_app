class Contact_modal {
  String names, username, images, subtitle, time, id;

  Contact_modal(this.names, this.username, this.images, this.subtitle,
      this.time, this.id);
  Contact_modal.fromAlldata(Map<String, dynamic> Mjson)
      : names = Mjson["name"],
        username = Mjson["userstatus"],
        subtitle = Mjson["subtitle"],
        images = Mjson["image"],
        id = Mjson["id"],
        time = Mjson["time"];
}
