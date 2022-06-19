// this file profile model data for profile
class ProfileModel {
  final int? id;
  final String? fullName;
  final String? email;
  final String? phone;
  final String? address;
  final String? image;
  final String? gender;
  final String? job;

  ProfileModel(
      {this.id,
      this.fullName,
      this.email,
      this.phone,
      this.address,
      this.image,
      this.gender,
      this.job});
}

ProfileModel profileModel = ProfileModel(
    id: 1,
    fullName: "Putri Rohayati",
    email: "putri_rohayati@pesonabali.com",
    phone: "082788908726",
    address: "Jl, jauh banget pokonya musti naik kereta api tut tut tut",
    image: "assets/images/foto_profil.png",
    gender: "Perempuan",
    job: "Software Developer");
