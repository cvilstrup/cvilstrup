class Histogram {
  Table table;
  ArrayList<Data> dataListe = new ArrayList<Data>();

  int selectedYear = 1980;
  String taxType   = "PC_GDP";

  void loadData() {
    table = loadTable("BiografbilletterSolgtIDanmark.csv", "header");
    for (TableRow r : table.rows()) {
      int tid  = r.getInt("Tid");
      int AllCountries  = r.getInt("Allelande");
      int Danish  = r.getInt("Danske");
      int Europe  = r.getInt("Europa");
      int USA  = r.getInt("USA");
      int World  = r.getInt("Verden");
      // Verden inkluderer ikke Danmark og USA
      dataListe.add(new Data(tid, AllCountries,Danish, Europe, USA, World));
    }
  }

  void display() {
    textSize(52);
    fill(255,255,255);
    text(selectedYear, 85, 120);
    textSize(32);
    fill(255,3,3);
    text("AC", 90, 460);
    fill(255,142,3);
    text("DK", 190, 460);
    fill(3,12,255);
    text("EU", 290, 460);
    fill(199,3,255);
    text("US", 390, 460);
    fill(61,206,0);
    text("WD", 490, 460);
    float scaleFaktor     = 0.012;
    fill(255,255,255);
    rect(75,410,470,10);
    rect(75,170,10,250);
    //if(mouseX < 100){println(AllCountries, mouseX, mouseY, -120);
    for(Data data : dataListe){
      if(data.tid == selectedYear){
        
        
        fill(255,3,3);
        rect(100, 400, 20 ,-data.AllCountries*scaleFaktor);
        fill(255,142,3);
        rect(200, 400 ,20,-data.Danish*scaleFaktor);
        fill(3,12,255);
        rect(300, 400 ,20,-data.Europe*scaleFaktor);
        fill(199,3,255);
        rect(400, 400 ,20,-data.USA*scaleFaktor);
        fill(61,206,0);
        rect(500, 400 ,20,-data.World*scaleFaktor);
        println(data.AllCountries,data.Danish,data.Europe,data.USA,data.World);
        
      if(mouseX >= 100 && mouseX <= 120 && mouseY >= 400-data.AllCountries*scaleFaktor && mouseY <= 400){
        fill(255,77,77);
        rect(100, 400, 20 ,-data.AllCountries*scaleFaktor);
        fill(214,214,214);
        rect(mouseX, mouseY, 170, 50); 
        println(mouseX + " : " + pmouseX);
        textSize(15);
        fill(0,0,0);
        text(" "+ data.AllCountries*1000 + " billetter", mouseX+10, mouseY+30);
      }
      if(mouseX >= 200 && mouseX <= 220 && mouseY >= 400-data.Danish*scaleFaktor && mouseY <= 400){
        fill(255,190,111);
        rect(200, 400 ,20,-data.Danish*scaleFaktor);
        fill(214,214,214);
        rect(mouseX, mouseY, 170, 50); 
        println(mouseX + " : " + pmouseX);
        textSize(15);
        fill(0,0,0);
        text(" " + data.Danish*1000 + " billetter", mouseX+10, mouseY+30);
      }
      if(mouseX >= 300 && mouseX <= 320 && mouseY >= 400-data.Europe*scaleFaktor && mouseY <= 400){
        fill(131,136,255);
        rect(300, 400 ,20,-data.Europe*scaleFaktor);
        fill(214,214,214);
        rect(mouseX, mouseY, 170, 50); 
        println(mouseX + " : " + pmouseX);
        textSize(15);
        fill(0,0,0);
        text(" " + data.Europe*1000 + " billetter", mouseX+10, mouseY+30);
      }
      if(mouseX >= 400 && mouseX <= 420 && mouseY >= 400-data.USA*scaleFaktor && mouseY <= 400){
        fill(232,157,255);
        rect(400, 400 ,20,-data.USA*scaleFaktor);
        fill(214,214,214);
        rect(mouseX, mouseY, 170, 50); 
        println(mouseX + " : " + pmouseX);
        textSize(15);
        fill(0,0,0);
        text(" " + data.USA*1000 + " billetter", mouseX+10, mouseY+30);
      }
      if(mouseX >= 500 && mouseX <= 520 && mouseY >= 400-data.World*scaleFaktor && mouseY <= 400){
        fill(198,255,173);
        rect(500, 400 ,20,-data.World*scaleFaktor);
        fill(214,214,214);
        rect(mouseX, mouseY, 170, 50); 
        println(mouseX + " : " + pmouseX);
        textSize(15);
        fill(0,0,0);
        text(" " + data.World*1000 + " billetter", mouseX+10, mouseY+30);
      }
        println(data.AllCountries,data.Danish,data.Europe,data.USA,data.World);
      }



  }
    }
    }
  
