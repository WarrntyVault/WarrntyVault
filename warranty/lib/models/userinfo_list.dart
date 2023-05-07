class UserInfoList {
  final String FirstName;
  final String LastName;
  final String Email;



  UserInfoList({
    required this.FirstName,
    required this.LastName,
    required this.Email,
  });

  static List<UserInfoList> UserInfo = [];

  Map<String, dynamic> toMap() {
    return {
      'FirstName': FirstName,
      'LastName': LastName,
      'Email': Email,
    };
  }

  factory UserInfoList.fromMap(Map<String, dynamic> map) {
    return UserInfoList(
    FirstName: map['FirstName'],
    LastName: map['LastName'],
    Email: map['Email'],
    );
  }
}