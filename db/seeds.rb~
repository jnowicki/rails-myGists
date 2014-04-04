# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

gists = [
	{snippet: "
public static void reset(Pole[][] plansza, Robot robot) {
	for (int i = 0; i < 5; i++) {
		for (int j = 0; j < 5; j++) {
			plansza[i][j].getSciezki().clear();
			}
	}
	robot.setPoz(plansza[1][1]);
	robot.getPoprzedniePola().clear();
	robot.iloscKrokow = 0;
}", lang: "java", description: "test"},
	{snippet: "
System.out.println('*************************************************************');
int rozmX = 5;
int rozmY = 5;
int udane = 0;", lang: "java", description: "das"},
	{snippet: "
public Form1()
{
	InitializeComponent();
}", lang: "c#", description: "fd"},
	{snippet: "
void zabezpieczenie2(){
//Tu funkcja zabezpieczająca wieksze statki!!
}", lang: "c", description: "ffffffff"},
	{snippet: "
if(tab[x][y] == 0){
	tab[x][y] = 1;
	zabezpieczenie2();
}", lang: "c", description: "cxxc"},
	{snippet: "console.log('cos');", lang: "javascript", description: "x"},
	{snippet: "
def nazwa
	i=0 
end", lang: "ruby", description: "test2"},
	{snippet: "
if i > 1
	i++
end", lang: "ruby", description: "test"},
	{snippet: "
books.each do |attr|
	puts 'cos' 
end", lang: "ruby", description: "test"},
]

gists.each do |attr|
	Gist.find_or_create(snippet: attr[:snippet], lang: attr[:lang], description: attr[:description])
end
