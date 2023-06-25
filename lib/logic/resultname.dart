import 'package:app1/logic/singledigit.dart';
import 'package:app1/logic/sumofnumber.dart';

String getResultName(String name1, String name2) {
  int sumName1 = getSumOfNumber(name1.toLowerCase());
  int sumName2 = getSumOfNumber(name2.toLowerCase());
  int totalSum = getSingleDigit(sumName1 + sumName2);

  String result;
  switch (totalSum) {
    case 1:
      result =
          'Xin chúc mừng! Tình yêu của bạn rất là đẹp đó nhé. Tình cảm của 2 bạn khá mặn nồng, khiến không ít người ngưỡng mộ và cảm phục đấy. Người ta thường nói là duyên phận ý trời mà, có tránh cũng sẽ không tránh được đâu nhá. Bạn nên đón nhận tình cảm thật của mình đi và đừng có trốn tránh nữa nhé.';
      break;
    case 2:
      result =
          'Số 2 nói với bạn rằng trái tim mách bảo tình yêu nhưng con tim lại không thể làm chủ được lý trí của mình. Mặc dù yêu nhau nồng thắm nhưng các bạn lại không có lý trí, không thể vượt qua được những định kiến, sự cấm cản của gia đình.';
      break;
    case 3:
      result =
          'Các bạn có một tình bạn rất là đẹp và trong sáng, thuần khiết một tình yêu mà bao nhiêu người phải ngưỡng mộ. Xin chúc mừng nhé.';
      break;
    case 4:
      result =
          'Hai bạn cũng có một chuyện tình vô cùng đẹp mà nhiều người ao ước lắm đó. Hãy thầm cảm ơn ông tơ bà nguyệt đã se duyên đi nào.';
      break;
    case 5:
      result =
          'Có vẻ như 2 bạn chỉ nên dừng lại ở mức độ tình bạn thôi. Đừng quá buồn nhé bởi tình yêu đích thực của cuộc đời bạn đang trên đường tìm đến với bạn đấy. Có thể do tắc đường nên sẽ đến chậm một chút thôi mà.';
      break;
    case 6:
      result =
          'Có vẻ 2 bạn là định mệnh của đời nhau đúng không? Yêu nhau từ cái nhìn đầu tiên à? Xin chúc mừng nhé, 2 bạn rất hợp nhau đấy.';
      break;
    case 7:
      result =
          'Xin chúc mừng, 2 bạn sinh ra là để thuộc về nhau đấy. Hai bạn rất hợp nhau cả về suy nghĩ lẫn sở thích, hành động. Hãy biết trân trọng tình cảm đẹp này và cùng người ấy vun đắp để nó mãi bền vững bạn nhé.';
      break;
    case 8:
      result =
          'Bạn không phải là một con người kén chọn trong tình yêu, tình yêu đến, bạn sẽ biết cách bắt lấy nó kịp thời và bạn cũng đang rất hạnh phúc với tình yêu này đúng không? Chúc bạn và một nửa sẽ luôn yêu thương nhau như bây giờ nhé.';
      break;
    case 9:
      result =
          'Bạn không phải là một con người kén chọn trong tình yêu, tình yêu đến, bạn sẽ biết cách bắt lấy nó kịp thời và bạn cũng đang rất hạnh phúc với tình yêu này đúng không? Chúc bạn và một nửa sẽ luôn yêu thương nhau như bây giờ nhé.';
      break;
    default:
      result = 'Không hợp lệ';
      break;
  }
  return result;
}
