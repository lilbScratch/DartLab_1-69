void main(){
  List<String> subject = ['Mobile Application','Digital Image','System analysis'];
  
  print(subject.length);

  print(subject[0] + ' '+ subject[2]);
  
  subject.add('Computer Network');
  print(subject);

  Map<String, int> StudentScore = {
    subject[0] : 50,
    subject[1] : 60,
  };
  print(StudentScore['Mobile Application']);
  
  StudentScore['Machine Learning'] = 45;
  print('$StudentScore');
  
  StudentScore.forEach((key, value){
    if (key.toLowerCase().contains('a')){
      print('วิชา: $key | คะแนน: $value');
    }
  });
  
  StudentScore.forEach((key, value){
    if (value > 50){
      print('วิชา: $key | คะแนน: $value');
    }
  });
}