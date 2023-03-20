import 'dart:math';

List<int> arr = [13362];
List<double> tx = [75.5];
List<double> chips = [6.9];
List<double> open = [71.5];
List<double> debit = [69.1];

class BuildStream {
  Stream<int> generateTransactions = (() async* {
    await Future<void>.delayed(Duration(milliseconds: 2));

    for (int i = arr.last; i <= 13367; i++) {
      arr.add(i);

      yield arr.last;
      await Future<void>.delayed(Duration(milliseconds: 1500));
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
      await Future<void>.delayed(Duration(milliseconds: 5000));
    }
  })();

  Stream<double> generateOpenFed = (() async* {
    await Future<void>.delayed(Duration(milliseconds: 2));

    for (double i = open.last; i <= 150; i += Random().nextDouble()) {
      open.add(i);
      print(open);
      if (open.last > 150) {
        open.clear();
        open.add(71.5);
      }
      yield open.last;
      await Future<void>.delayed(Duration(milliseconds: 5000));
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
        print(debit);
      }
      await Future<void>.delayed(Duration(milliseconds: 5000));
    }
  })();
}
