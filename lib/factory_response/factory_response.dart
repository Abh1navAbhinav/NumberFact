import 'package:json_annotation/json_annotation.dart';

part 'factory_response.g.dart';

@JsonSerializable()
class FactoryResponse {

  @JsonKey(name:'text')
	String? text;
   @JsonKey(name:'number')
	int? number;
  @JsonKey(name:'found')
	bool? found;
  @JsonKey(name:'type')
	String? type;

	FactoryResponse({this.text, this.number, this.found, this.type});

	factory FactoryResponse.fromJson(Map<String, dynamic> json) {
		return _$FactoryResponseFromJson(json);
	}

	Map<String, dynamic> toJson() => _$FactoryResponseToJson(this);
}
