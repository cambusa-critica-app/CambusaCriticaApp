
{
  
  using namespace std;


  ifstream input_database ("Database_Ingredienti_Calorie.txt");
  ofstream output_qml ("output_qml.txt");
  
  
  while (! input_database.eof())
  {
    
    string x;
    string name = "prova";
    
    
    std::getline(input_database, x);
    
//     cout << x  << endl;
    
//     output_qml 
//     cout  
    string ing_str;
    string dose_str;
    
    if (x.compare(x.length()-3, 1, " ") != 0 )  
    {
      dose_str = x.substr(x.length()-3,3);
      ing_str = x.substr(0, x.length()-4);
    }
    else 
    {
      dose_str = x.substr(x.length()-2,2);
      ing_str = x.substr(0, x.length()-3);
    }
    
    
    int dose = atoi(dose_str.c_str());
    cout << "ingrediente: " << ing_str << " :: dose = " << dose << endl; 

    


    output_qml << "ListElement {\n" 
	     << "     name: \"" << ing_str << "\"\n"
	     << "     kcal: "  << dose << "\n"
	     << "}\n"
 	     << endl;
    
    
    
  }
  
  
  

}