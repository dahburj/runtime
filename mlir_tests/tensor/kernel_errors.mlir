// Copyright 2020 The TensorFlow Runtime Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// RUN: tfrt_opt %s -split-input-file --verify-diagnostics

func @bad_result() {

  // expected-error @+1 {{'ts.build_shape' op result #0 must be !ts.shape type}}
  %a = "ts.build_shape"() { value = [1 : i64] }: () -> i64

  hex.return
}