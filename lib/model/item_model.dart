class ItemModel {
  final int id;
  final String title;
  final List<dynamic> images;
  final String interest;
  final int price;
  final String date;
  final String address;
  final String trainerName;
  final String trainerImage;
  final String trainerInfo;
  final String occasionDetail;
  final String latitude;
  final String longitude;
  final bool isLike;
  final bool isSold;
  final bool isPrivateEvent;
  final bool hiddenCashPayment;
  final int specialForm;
  final String questionnaire;
  final String questExplanation;
  final List<dynamic> reservTypes;

  ItemModel.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        title = parsedJson['title'] ?? '',
        images = parsedJson['img'] ?? [],
        interest = parsedJson['interest'] ?? '',
        price = parsedJson['price'],
        date = parsedJson['date'] ?? '',
        address = parsedJson['address'] ?? '',
        trainerName = parsedJson['trainerName'] ?? '',
        trainerImage = parsedJson['trainerImg'] ?? '',
        trainerInfo = parsedJson['trainerInfo'] ?? '',
        occasionDetail = parsedJson['occasionDetail'] ?? '',
        latitude = parsedJson['latitude'] ?? '',
        longitude = parsedJson['longitude'] ?? '',
        isLike = parsedJson['isLiked'] ?? false,
        isSold = parsedJson['isSold'] ?? false,
        isPrivateEvent = parsedJson['isPrivateEvent'] ?? false,
        hiddenCashPayment = parsedJson['hiddenCashPayment'] ?? false,
        specialForm = parsedJson['specialForm'],
        questionnaire = parsedJson['questionnaire'] ?? '',
        questExplanation = parsedJson['questExplanation'] ?? '',
        reservTypes = parsedJson['reservTypes'] ?? [];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "title": title,
      "image": images,
      "interest": interest,
      "price": price,
      "date": date,
      "address": address,
      "trainerName": trainerName,
      "trainerInfo": trainerInfo,
      "trainerImage": trainerImage,
      "occasionDetail": occasionDetail,
      'latitude': latitude,
      "longitude": longitude,
      "isLike": isLike,
      "isSold": isSold,
      "isPrivateEvent": isPrivateEvent,
      "hiddenCashPayment": hiddenCashPayment,
      "specialForm": specialForm,
      "questionnaire": questionnaire,
      "questExplanation": questExplanation,
      "reservTypes": reservTypes
    };
  }
}
