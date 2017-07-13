#include "my_printer_new.h"

// to set the filename and print it
QString MyPrinter::filename() const {     return file_name;  }

void MyPrinter::setFileName(QString &a){
    file_name = a;
    qDebug () << "file name: " << file_name ;

    //create paper setting in file
    printer.setOutputFormat(QPrinter::PdfFormat);
    printer.setOutputFileName(file_name);
    printer.setPaperSize(QPrinter::A4); //0 for A4
    printer.setOrientation(QPrinter::Landscape);
    printer.setPageMargins(30, 30, 30, 30, QPrinter::Point); //left, top, right, bottom
    if (! painter.begin(&printer)) { // failed to open file
        qWarning("failed to open file, is it writable?");
        //return 1;
    }
    qDebug () << " paper rect = [" << printer.paperRect().width() << ", " <<printer.paperRect().height() <<
              "] : page_rect  = [" << printer.pageRect().width() << ", " << printer.pageRect().height() << "]";
    //qDebug() << "text_size = " << painter.font().SizeResolved
    painter.setFont(QFont("Arial", 10));
}

// to set the menu table text
QString MyPrinter::menutext() const {     return menu_text;     }
void MyPrinter::setMenuText(QString &a){         menu_text = a; }

// to set the menu table
QString MyPrinter::menutable() const    {return menu_table; }
void MyPrinter::setMenuTable(QString &a){ menu_table = a;   }



QString MyPrinter::currentslottext() const    {return current_slot_text; }
void MyPrinter::setCurrentSlotText(QString &a) {
    current_slot_text = a;

    int page_width = printer.pageRect().width();
    int page_height= printer.pageRect().height();

    int grid_width = page_width/n_column;
    int text_width = page_width/n_column/1.1;

    int grid_height = page_height/n_row;
    int text_height = page_height/n_row/1.05;


//           qDebug() << "index day = " << index_day << " :: index meal = " << index_meal << " :: current_slot_text = " << current_slot_text << " :: end_painter = " << end_painter << endl;

    //new pages and coordinates for long menus
    if (index_meal == 0 && index_day!=0 && (index_day%n_row == 0))
    {
        printer.newPage();
    }


    int index_day_pos = index_day%n_row;
    //qDebug() << "index_day = " <<  index_day  << " :: n_row = " << n_row << " :: index_day%n_row  = " << index_day%n_row << " :: (int) index_day/n_row = "<< (int) index_day/n_row;

    //int max_days_pos = tot_items%n_row +1;
    int max_days_pos;

    if (tot_items < n_row)           max_days_pos = tot_items+1;
    else if (index_day <n_row)       max_days_pos = n_row;

    else if (tot_items  <n_row*2)    max_days_pos = tot_items-n_row+1;
    else if (index_day <n_row*2)     max_days_pos = n_row;

    else if (tot_items  <n_row*3)    max_days_pos = tot_items-n_row*2+1;
    else if (index_day <n_row*3)     max_days_pos = n_row;

    else if (tot_items  <n_row*4)    max_days_pos = tot_items-n_row*3+1;
    else if (index_day <n_row*4)     max_days_pos = n_row;

    else if (tot_items  <n_row*5)    max_days_pos = tot_items-n_row*4+1;
    else if (index_day <n_row*5)     max_days_pos = n_row;

    else if (tot_items  <n_row*6)    max_days_pos = tot_items-n_row*5+1;
    else if (index_day <n_row*6)     max_days_pos = n_row;

    else if (tot_items  <n_row*7)    max_days_pos = tot_items-n_row*6+1;
    else if (index_day <n_row*7)     max_days_pos = n_row;

    else                             max_days_pos = tot_items-n_row*6+1;


    //qDebug () << "index day = " << index_day << " :: index_day pos = " << max_days_pos ;

    //to draw text
    if (index_meal == 0)
    {
        QPen pen(Qt::darkGreen, 2, Qt::SolidLine, Qt::RoundCap, Qt::RoundJoin);
        painter.setPen(pen);
    }
    else if (index_day == 0)
    {
        QPen pen(Qt::darkBlue, 2, Qt::SolidLine, Qt::RoundCap, Qt::RoundJoin);
        painter.setPen(pen);
    }
    else
    {
        QPen pen(Qt::black, 1, Qt::SolidLine);
        painter.setPen(pen);
    }

    QRectF rect_text_slot(n_column+grid_width*index_meal, n_column+grid_height*index_day_pos, text_width, text_height);
    painter.drawText(rect_text_slot, Qt::TextWordWrap, current_slot_text);

    //to draw lines
    QPen penLines(Qt::darkYellow, line_width, Qt::SolidLine, Qt::RoundCap, Qt::RoundJoin);
    painter.setPen(penLines);

    if (index_day_pos == 0)
    {
        QLineF lineY(grid_width*index_meal, 0, grid_width*index_meal, grid_height*max_days_pos);
        painter.drawLine(lineY);
    }
    if (index_meal == 0)
    {
        QLineF lineX(0, grid_height*index_day_pos, grid_width*n_column, grid_height*index_day_pos);
        painter.drawLine(lineX);
    }

    //disegna le linee di chiusura di fine pagina
    //if (index_day == n_row-1 || index_day == n_row*2-1 || index_day == n_row*3-1 || index_day == n_row*4-1 || index_day == n_row*5-1 || index_day == n_row*6-1)
    if (index_day%(n_row-1)== 0)
    {
        QLineF lineY(grid_width*n_column, 0, grid_width*n_column, grid_height*max_days_pos);
        painter.drawLine(lineY);
        QLineF lineX(0, grid_height*max_days_pos, grid_width*n_column, grid_height*max_days_pos);
        painter.drawLine(lineX);
    }

    //disegna l'ultimissime righe di chiusura tabella
    if (end_page)
    {
        QLineF lineY(grid_width*n_column, 0, grid_width*n_column, grid_height*max_days_pos);
        painter.drawLine(lineY);
        QLineF lineX(0, grid_height*max_days_pos, grid_width*n_column, grid_height*max_days_pos);
        painter.drawLine(lineX);
        printer.newPage();
    }

    if (end_painter)
    {
        painter.end();
    }

}

int MyPrinter::indexday() const    {return index_day; }
void MyPrinter::setIndexDay(int &a){ index_day = a;   }

int MyPrinter::indexmeal() const    {return index_meal; }
void MyPrinter::setIndexMeal(int &a){ index_meal = a;   }

int MyPrinter::totdays() const    {return tot_days; }
void MyPrinter::setTotDays(int &a){ tot_days = a;   }

int MyPrinter::column() const    {return n_column; qDebug () << "setting columns number = " << n_column ;}
void MyPrinter::setColumn(int &a){ n_column = a;   qDebug () << "setting columns number = " << n_column ;}

int MyPrinter::row() const    {return n_row; }
void MyPrinter::setRow(int &a){ n_row = a;   }

int MyPrinter::linewidth() const    {return line_width; }
void MyPrinter::setLineWidth(int &a){ line_width = a;   }

int MyPrinter::totitems() const    {return tot_items; }
void MyPrinter::setTotItems(int &a){ tot_items = a;   }

bool MyPrinter::endpainter() const    {return end_painter; }
void MyPrinter::setEndPainter(bool &a){ end_painter = a;   }

bool MyPrinter::endpage() const    {return end_page; }
void MyPrinter::setEndPage(bool &a){ end_page = a;   }
