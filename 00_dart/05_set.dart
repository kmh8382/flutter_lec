void main() {
  // 비어 있는 세트 생성
  Set<int> set1 = {}; // var set1 = <int>{};

  // 초기값을 가진 세트 생성
  Set<int> set2 = {1, 10, 100, 100, 100}; // {1, 10, 100}
  print(set2);

  // 세트의 요소는 인덱스가 없습니다. (순서를 보장하지 않습니다.)
  Set<String> set3 = {"kiwi", "tomato", "apple", "banana"};
  print(set3);

  // 세트 -> 리스트
  List<String> fruits = set3.toList();
  print(fruits);

  // 세트 조작 매소드 : 리스트 조작 매소드와 동일한 구성

  // 수핫 집합 매소드
  // 합집합(union)        : setA.union(setB)
  // 교집합(intersection) : setA.intersection(setB)
  // 차집합(difference)   : setA.difference(setB)
}
