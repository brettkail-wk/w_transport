// Copyright 2015 Workiva Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

@TestOn('vm || browser')
import 'package:test/test.dart';

import 'package:w_transport/src/web_socket/w_socket_exception.dart';
import 'package:w_transport/src/web_socket/web_socket_exception.dart';

import '../../naming.dart';

void main() {
  Naming naming = new Naming()
    ..testType = testTypeUnit
    ..topic = topicWebSocket;

  group(naming.toString(), () {
    test('WSocketException should support toString()', () {
      // ignore: deprecated_member_use
      expect(new WSocketException('test').toString(),
          contains('WSocketException:'));
    });

    test('WebSocketException should support toString()', () {
      expect(new WebSocketException('test').toString(),
          contains('WebSocketException:'));
    });

    test('WebSocketException extends WSocketException', () {
      expect(
          new WebSocketException('test'),
          // ignore: deprecated_member_use
          new isInstanceOf<WSocketException>());
    });
  });
}