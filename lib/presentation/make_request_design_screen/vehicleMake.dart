class VehicleMake {

  final String vehicleMakeName;

  VehicleMake({required this.vehicleMakeName});
  
  factory VehicleMake.fromJson(Map<String,dynamic> json){
    return VehicleMake(vehicleMakeName: json['vehicleName']);
  }


}