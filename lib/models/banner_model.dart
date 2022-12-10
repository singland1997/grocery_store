class BannerImage {
  final String bannerId;
  final String bannerImage;

  BannerImage({required this.bannerId, required this.bannerImage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bannerId': bannerId,
      'bannerImage': bannerImage,
    };
  }

  factory BannerImage.fromMap(Map<String, dynamic> map) {
    return BannerImage(
      bannerId: map['bannerId'] as String,
      bannerImage: map['bannerImage'] as String,
    );
  }
}
