
import 'package:flutter_test/flutter_test.dart';
import 'package:test_unit/function.dart';




void main (){

  group('Addition', (){
    test(' addition test ,result return 5 when add 2 and 3',(){
      //arrange
      const int a = 2;
      const int b = 3;

      // act
      final result = add(a,b);

      // assert
      expect(result, 5);

    });


    test(' addition test ,result return 10  when add 5 and 5',(){
      //arrange
      const int a = 5;
      const int b = 5;

      // act
      final result = add(a,b);

      // assert
      expect(result, 10);

    });

  });

  group('substraction', (){

    test("expected 8 ,when substract 10 -2 ", (){

      const int a = 10;
      const int b = 2;

      final result = deduct(a, b);

      expect(result, 8);

    });

  });



}