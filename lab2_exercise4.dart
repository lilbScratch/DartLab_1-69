void main() {
  String? middleName;
  String city = 'Nakhon Sawan';

  int midLength = middleName?.length ?? 0;
  print('Length of Middle name: $midLength');

  print('Length of City name: ${city.length}');

  middleName ??= 'N/A';
  print('Middle Name: $middleName');
}