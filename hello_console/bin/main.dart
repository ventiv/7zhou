import 'package:http/http.dart' as http;

void main() async {
  var response = await http.get(Uri.parse('https://www.bilibili.com/'));

  if (response.statusCode == 200) {
    print('请求成功！');
    print('响应内容：${response.body}');
  } else {
    print('请求失败，状态码：${response.statusCode}');
  }
}
