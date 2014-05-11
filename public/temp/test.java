
public static void reset(Pole[][] plansza, Robot robot) {
	for (int i = 0; i < 5; i++) {
		for (int j = 0; j < 5; j++) {
			plansza[i][j].getSciezki().clear();
			}
	}
	robot.setPoz(plansza[1][1]);
	robot.getPoprzedniePola().clear();
	robot.iloscKrokow = 0;
}