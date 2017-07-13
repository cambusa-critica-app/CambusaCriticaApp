#include "write_file.h"


// to set the menu table
QString MyFile::menutable() const         {return menu_table;}
QString MyFile::spesatable() const        {return spesa_table;}
QString MyFile::spesagiornotable() const  {return spesagiorno_table;}

void MyFile::setMenuTable(QString &a){ menu_table = a;  }
void MyFile::setSpesaTable(QString &a){ spesa_table = a;  }
void MyFile::setSpesaGiornoTable(QString &a){ spesagiorno_table = a;  }


// to set the filename and create file
QString MyFile::filename() const {return file_name;}
void MyFile::setFileName(QString &a) {

    file_name = a;
    qDebug () << "file name: " << file_name;
    my_file.setFileName(file_name);
      if (!my_file.open(QIODevice::WriteOnly | QIODevice::Text))
          return;

    QTextStream out(&my_file);
          out << "\n" << menu_table  << "\n";
          out << "\n" << spesa_table  << "\n";
          out << "\n" << spesagiorno_table  << "\n";

    my_file.close();


}

