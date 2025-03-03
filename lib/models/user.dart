//In here first we create the users json model
// To parse this JSON data, do
//

class Users {
  final int? usrId;
  final String usrName;
  final String usrPassword;
  final String usrEmail;

  Users(
      {this.usrId,
      required this.usrName,
      required this.usrPassword,
      required this.usrEmail});

  factory Users.fromMap(Map<String, dynamic> json) => Users(
      usrId: json["usrId"],
      usrName: json["usrName"],
      usrPassword: json["usrPassword"],
      usrEmail: json["usrEmail"]);

  Map<String, dynamic> toMap() => {
        "usrId": usrId,
        "usrName": usrName,
        "usrPassword": usrPassword,
      };
}
