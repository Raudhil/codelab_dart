void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  gifts['nama'] = 'Raul';
  gifts['nim'] = '2341720164';

  nobleGases[19] = 'Raul';
  nobleGases[20] = '2341720164';

  mhs1['nama'] = 'Raul';
  mhs1['nim'] = '2341720164';

  mhs2[1] = 'Raul';
  mhs2[2] = '2341720164';

  
  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
