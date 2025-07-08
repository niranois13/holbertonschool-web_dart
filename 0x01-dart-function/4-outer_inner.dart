void outer(String name, String id) {
    String inner() {
        List<String> fullName = name.split(' ');
        String firstName = fullName[0];
        String lastName = fullName[1];

        String formattedLastName = "${lastName.substring(0, 1)}.";

        return ('Hello Agent $formattedLastName$firstName your id is $id');
    }
    print(inner());
}
