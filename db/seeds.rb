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
}", lang: "java", description: "Resetowanie robota", user_id: 1, status: 'public'},
	{snippet: "
int rozmX = 5;
int rozmY = 5;
int udane = 0;", lang: "java", description: "Dane wejsciowe", user_id: 0, status: 'public'},
	{snippet: "
public Form1()
{
	InitializeComponent();
}", lang: "c#", description: "Inicjalizacja komponentów", user_id: 0, status: 'public'},
	{snippet: "case class Link(url: String, depth: Int)
case class GetRanking(url: String, depth: Int, client: ActorRef)
case class Get(url: String, level: Int)
case class Hrefs(hrefs: List[String], level: Int)
case class Ranking(ranking: List[(String, Int)])
case object ShutDown", lang: "scala", description: "Przykład użycia case class"},
	{snippet: "for(int i = 0; i<1000; i++){
		printf('jestem najlepszy!')}", lang: "c", description: "Jestem najlepszy", user_id: 0, status: 'public'},
	{snippet: "console.log('przykładowe logi');", lang: "javascript", description: "logi w js", user_id: 0, status: 'public'},
	{snippet: "
def nazwa
	i=0 
end", lang: "ruby", description: "Funkcje w ruby", user_id: 0, status: 'public'},
	{snippet: "require 'roo'
     
    def fetch_excel_data
    ex = Roo::Excel.new('public/your_spreadsheet.xls')
    ex.default_sheet = ex.sheets[0] #Mention the sheet number (0 is the first sheet, 1 is second sheet, etc.)
    2.upto(500) do | line | #Start and end of rows you want to include
    db_column1 = ex.cell(line,'A') #Column A in spreadsheet
    db_column2 = ex.cell(line,'B')
    db_column3 = ex.cell(line,'C')
     
    x = Class.create(:db_column1 => db_column1, :db_column2 => db_column2, :db_column3 => db_column3)
     
    end", lang: "ruby", description: "Generowanie bazy danych z XLS", user_id: 0, status: 'public'},
	{snippet: "
books.each do |attr|
	Book.find_or_create_by(default)
end", lang: "ruby", description: "Zasianie ziarnia", user_id: 0, status: 'public'},

]

gists.each do |attr|
	Gist.find_or_create_by(snippet: attr[:snippet], lang: attr[:lang], description: attr[:description], user_id: attr[:user_id], status: attr[:status])
end