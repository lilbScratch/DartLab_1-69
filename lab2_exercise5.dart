void gradeCheck(int score){
  if (score >= 80) {
    print('Grade A'); 
  } else if (score >= 70) {
    print('Grade B');
  } else if (score >= 60) {
    print('Grade C');
  } else if (score >= 50) {
    print('Grade D');
  } else if (score < 50) {
    print('Grade F');
  }
}

void main(){
  gradeCheck(85);
  gradeCheck(72);
  gradeCheck(50);
  gradeCheck(40);

  for (int i = 1; i <= 10; i++) {
    print('Number: $i');
  }

  var fruits = ['Apple','Banana','Orange'];
  for (var j in fruits) {
    print('Fruits: $j');
  }
}