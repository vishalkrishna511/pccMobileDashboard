import 'dart:math';

List<int> arr = [13362];
List<double> tx = [75.5];
List<double> chips = [6.9];
List<double> open = [71.5];
List<double> debit = [69.1];
List<num> wires = [13966145958];
List<num> ach = [2834161450];
List<num> checks = [3069655561];

class BuildStream {
  Stream<int> generateTransactions = (() async* {
    await Future<void>.delayed(Duration(milliseconds: 2));

    for (int i = arr.last; i <= 13367; i++) {
      arr.add(i);

      yield arr.last;
      await Future<void>.delayed(Duration(milliseconds: 3000));
    }
  })();

  Stream<double> generateTotalFedBalance = (() async* {
    await Future<void>.delayed(Duration(milliseconds: 2));

    for (double i = tx.last; i <= 150; i += Random().nextDouble()) {
      tx.add(i);
      yield tx.last;
      if (tx.last > 150) {
        tx.clear();
        tx.add(75.5);
      }
      await Future<void>.delayed(Duration(milliseconds: 5000));
    }
  })();

  Stream<double> generateChipsBalance = (() async* {
    await Future<void>.delayed(Duration(milliseconds: 2));

    for (double i = chips.last; i <= 25; i += Random().nextDouble()) {
      chips.add(i);
      yield chips.last;
      if (chips.last > 25) {
        chips.clear();
        chips.add(6.9);
      }
      await Future<void>.delayed(Duration(milliseconds: 3000));
    }
  })();

  Stream<double> generateOpenFed = (() async* {
    await Future<void>.delayed(Duration(milliseconds: 2));

    for (double i = open.last; i <= 150; i += Random().nextDouble()) {
      open.add(i);

      if (open.last > 150) {
        open.clear();
        open.add(71.5);
      }
      yield open.last;
      await Future<void>.delayed(Duration(milliseconds: 3000));
    }
  })();

  Stream<double> generateDebitCap = (() async* {
    await Future<void>.delayed(Duration(milliseconds: 2));

    for (double i = debit.last; i <= 150; i += Random().nextDouble()) {
      debit.add(i);
      yield debit.last;
      if (debit.last > 150) {
        debit.clear();
        debit.add(69.1);
      }
      await Future<void>.delayed(Duration(milliseconds: 3000));
    }
  })();

  Stream<num> generateWire = (() async* {
    await Future<void>.delayed(Duration(milliseconds: 2));

    for (num i = wires.last;
        i <= 500000000000;
        i += Random().nextInt(1000000)) {
      wires.add(i);
      yield wires.last;
      if (wires.last > 500000000000) {
        wires.clear();
        wires.add(13966145958);
      }
      await Future<void>.delayed(Duration(milliseconds: 3000));
    }
  })();

  Stream<num> generateACH = (() async* {
    await Future<void>.delayed(Duration(milliseconds: 2));

    for (num i = ach.last; i <= 5000000000; i += Random().nextInt(1000000)) {
      ach.add(i);
      yield ach.last;
      if (ach.last > 500000000000) {
        ach.clear();
        ach.add(13966145958);
      }
      await Future<void>.delayed(Duration(milliseconds: 3000));
    }
  })();

  Stream<num> generateCheck = (() async* {
    await Future<void>.delayed(Duration(milliseconds: 2));

    for (num i = checks.last; i <= 5000000000; i += Random().nextInt(1000000)) {
      checks.add(i);
      yield checks.last;
      if (checks.last > 500000000000) {
        checks.clear();
        checks.add(13966145958);
      }
      await Future<void>.delayed(Duration(milliseconds: 3000));
    }
  })();
}
