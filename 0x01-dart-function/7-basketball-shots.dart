int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
    int teamAFree = teamA["Free throws"] ?? 0;
    int teamATwo = teamA["2 pointers"] ?? 0;
    int teamAThree = teamA["3 pointers"] ?? 0;
    int teamATotal = (teamAFree + (teamATwo * 2) + (teamAThree * 3));

    int teamBFree = teamB["Free throws"] ?? 0;
    int teamBTwo = teamB["2 pointers"] ?? 0;
    int teamBThree = teamB["3 pointers"] ?? 0;
    int teamBTotal = (teamBFree + (teamBTwo * 2) + (teamBThree * 3));

    if (teamATotal > teamBTotal) return 1;
    if (teamATotal < teamBTotal) return 2;
    return 0;
}