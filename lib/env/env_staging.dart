import 'env.dart';

class EnvStaging extends Env {
  @override
  bool useMockApi = false;
  @override
  String networkBaseUrl = 'https://api.nasa.gov/';
}

void main() {
  EnvStaging();
}
