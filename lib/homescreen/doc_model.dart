
import 'package:doc_app/homescreen/constants/app_images.dart';
import 'package:doc_app/homescreen/constants/app_strings.dart';

class DoctorModel {
  String? docImage;
  String? docName;
  String? docReview;

  DoctorModel({
    this.docImage,
    this.docName,
    this.docReview,
  });
}

List<DoctorModel> docModel = [
  DoctorModel(
    docImage: AppImages.drVec1,
    docName: AppText.doc1,
    docReview: AppText.doc1Review,
  ),
  DoctorModel(
    docImage: AppImages.drVec2,
    docName: AppText.doc2,
    docReview: AppText.doc2Review,
  ),
  DoctorModel(
    docImage: AppImages.drVec3,
    docName: AppText.doc3,
    docReview: AppText.doc3Review,
  ),
  DoctorModel(
    docImage: AppImages.drVec4,
    docName: AppText.doc4,
    docReview: AppText.doc4Review,
  ),
];