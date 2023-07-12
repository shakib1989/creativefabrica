import 'env.dart';

class EnvProduction extends Env {
  @override
  bool useMockApi = false;
  @override
  String networkBaseUrl = 'https://api.nasa.gov/';
}

void main() {
  EnvProduction();
}
