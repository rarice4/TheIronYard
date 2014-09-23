var IndexCtrl = function($scope) {
  $scope.title = 'Calculator';
  $scope.input0 = 0
  $scope.input1 = 1
  $scope.output = "0";
  $scope.newNumber = true;
  $scope.pendingOperation = null;
  $scope.operationToken = "";
  $scope.runningTotal = null;
  $scope.pendingValue = null;
  $scope.lastOperation = null;
  var ADD = "adding";
  var SUBTRACT = "subtracting";
  var ADD_TOKEN = "+";
  var SUBTRACT_TOKEN = "-";
  $scope.updateOutput = function (btn) {
    console.log("updateOutput");
    if ($scope.output == "0" || $scope.newNumber) {
      $scope.output = btn;
      $scope.newNumber = false;
    } else {
      $scope.output += String(btn);
    }
    $scope.pendingValue = toNumber($scope.output);
  };

  $scope.add = function () {
    if ($scope.pendingValue) {
      if ($scope.runningTotal && $scope.pendingOperation == ADD) {
        $scope.runningTotal += $scope.pendingValue;
      } else if ($scope.runningTotal && $scope.pendingOperation == SUBTRACT) {
        $scope.runningTotal -= $scope.pendingValue;
      } else {
        $scope.runningTotal = $scope.pendingValue;
      }
    }
    setOperationToken(ADD);
    setOutput(String($scope.runningTotal));
    $scope.pendingOperation = ADD;
    $scope.newNumber = true;
    $scope.pendingValue = null;
  };
  $scope.subtract = function () {
    if ($scope.pendingValue) {
      if ($scope.runningTotal && ($scope.pendingOperation == SUBTRACT)) {
        $scope.runningTotal -= $scope.pendingValue;
      } else if ($scope.runningTotal && $scope.pendingOperation == ADD) {
        $scope.runningTotal += $scope.pendingValue;
      } else {
        $scope.runningTotal = $scope.pendingValue;
      }
    }
    setOperationToken(SUBTRACT);
    setOutput(String($scope.runningTotal));
    $scope.pendingOperation = SUBTRACT;
    $scope.newNumber = true;
    $scope.pendingValue = null;
  };
  $scope.calculate = function () {
    if (!$scope.newNumber) {
      $scope.pendingValue = toNumber($scope.output);
      $scope.lastValue = $scope.pendingValue;
    }
    if ($scope.pendingOperation == ADD) {
      $scope.runningTotal += $scope.pendingValue;
      $scope.lastOperation = ADD;
    } else if ($scope.pendingOperation == SUBTRACT) {
      $scope.runningTotal -= $scope.pendingValue;
      $scope.lastOperation = SUBTRACT;
    } else {
      if ($scope.lastOperation) {
        if ($scope.lastOperation == ADD) {
          if ($scope.runningTotal) {
            $scope.runningTotal += $scope.lastValue;
          } else {
            $scope.runningTotal = 0;
          }
        } else if ($scope.lastOperation == SUBTRACT) {
          if ($scope.runningTotal) {
            $scope.runningTotal -= $scope.lastValue;
          } else {
            $scope.runningTotal = 0;
          }
        }
      } else {
        $scope.runningTotal = 0;
      }
    }
    setOutput($scope.runningTotal);
    setOperationToken();
    $scope.pendingOperation = null;
    $scope.pendingValue = null;
  };
  $scope.clear = function () {
    $scope.runningTotal = null;
    $scope.pendingValue = null;
    $scope.pendingOperation = null;
    setOutput("0");
  };
  var setOutput = function (outputString) {
    $scope.output = outputString;
    $scope.newNumber = true;
  };
  var setOperationToken = function (operation) {
    if (operation == ADD) {
      $scope.operationToken = ADD_TOKEN;
    } else if (operation == SUBTRACT) {
      $scope.operationToken = SUBTRACT_TOKEN;
    } else {
      $scope.operationToken = "";
    }
  };
  var toNumber = function (numberString) {
    var result = 0;
    if (numberString) {
      result = numberString * 1;
    }
    return result;
  };

};