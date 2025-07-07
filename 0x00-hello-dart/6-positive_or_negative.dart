void main(List<String> args) {
    final number = int.tryParse(args.first);

    if (number == null) {
        print("Error: provided arg is not a number");
        return;
    }

    switch(number) {
        case > 0:
            print('$number is positive');
            break;
        case 0:
            print('$number is zero');
            break;
        case < 0:
            print('$number is negative');
            break;
        default:
            print('$number is not an Integer');
            break;
    }
}