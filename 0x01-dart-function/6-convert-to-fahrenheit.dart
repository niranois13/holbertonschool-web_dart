List<double> convertToF(List<double> temperaturesInC) {
    List<double> values = temperaturesInC
        .map((temperature) => double.parse(
                (((temperature * 9) / 5) + 32).toStringAsFixed(2)
            )
        ).toList();
    return (values);
}