import 'package:freezed_example/test/user_freezed_class.dart';

void main() {



  final user = User('Matt', 20);
  // user.age = 5; // error, User is immutable

  final Map<String, dynamic> serialized = user.toJson();
  final User deserialized = User.fromJson(serialized);
  print(serialized);
  print(deserialized);
   int result = performOperation(5, OperationNested.subtract(value: 1));
   print(result);

}

// Function pretending to do something useful
int performOperation(int operand, OperationNested operation) {
  // Like switch statement but forgetting about a case will result in info/error
  return operation.when(
    add: (value) => operand + value,
    subtract: (value) => operand - value,
  );
}

int performOperationWithMap(int operand, OperationNonNested operation) {
  return operation.map(
    increment: (Increment caseClass) => operand + caseClass.value,
    decrement: (Decrement caseClass) => operand - caseClass.value,
  );
}