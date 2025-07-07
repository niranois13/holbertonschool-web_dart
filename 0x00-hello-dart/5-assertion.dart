void main(List<String> args) {
    int score = int.tryParse(args.first) ?? -1;

    assert (
        score >= 80,
        'The score must be bigger or equal to 80',
        );
        print('You Passed');
}