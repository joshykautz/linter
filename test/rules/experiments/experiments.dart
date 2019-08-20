// Copyright (c) 2019, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:linter/src/analyzer.dart';
import 'package:linter/src/rules/always_declare_return_types.dart';
import 'package:linter/src/rules/avoid_setters_without_getters.dart';

final experiments = <LintRule>[
  AlwaysDeclareReturnTypes(),
  AvoidSettersWithoutGetters(),
];

void registerLintRuleExperiments() {
  experiments.forEach(Analyzer.facade.register);
}
