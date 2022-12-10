import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grocery_store/models/banner_model.dart';

class FirestoreService {
  final _db = FirebaseFirestore.instance;
  Stream<List<BannerImage>> getBanners() {
    return _db.collection('banners').snapshots().map(
          (event) => event.docs
              .map(
                (e) => BannerImage.fromMap(e.data()),
              )
              .toList(),
        );
  }
}
