class Note {
  int id;
  String title;
  String body;

  Note(this.id, this.title, this.body);
  Note.fromJSON(Map<String, dynamic> parsedJSON){
    id = parsedJSON['id'];
    title = parsedJSON['title'];
    body = parsedJSON['body'];
  }
}
