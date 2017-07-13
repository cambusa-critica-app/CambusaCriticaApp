#ifndef MY_PRINTER_NEW_H
#define MY_PRINTER_NEW_H

#include <sys/types.h>
#include <QObject>
#include <QPrinter>
#include <QPainter>
#include <QDebug>


class MyPrinter : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString filename READ filename WRITE setFileName)
    Q_PROPERTY(QString menutext READ menutext WRITE setMenuText)
    Q_PROPERTY(QString menutable READ menutable WRITE setMenuTable)

    Q_PROPERTY(QString currentslottext READ currentslottext WRITE setCurrentSlotText)
    Q_PROPERTY(int indexday READ indexday WRITE setIndexDay)
    Q_PROPERTY(int indexmeal READ indexmeal WRITE setIndexMeal)
    Q_PROPERTY(int totdays READ totdays WRITE setTotDays)

    Q_PROPERTY(int column READ column WRITE setColumn)
    Q_PROPERTY(int row READ row WRITE setRow)
    Q_PROPERTY(int linewidth READ linewidth WRITE setLineWidth)
    Q_PROPERTY(int totitems READ totitems WRITE setTotItems)

    Q_PROPERTY(bool endpainter READ endpainter WRITE setEndPainter)
    Q_PROPERTY(bool endpage READ endpage WRITE setEndPage)


       // to set the filename and print it
       QString filename() const ;
       void setFileName(QString &a);

       // to set the menu table text
       QString menutext() const ;
       void setMenuText(QString &a);

       // to set the menu table
       QString menutable() const    ;
       void setMenuTable(QString &a);


       QString currentslottext() const;
       void setCurrentSlotText(QString &a);

       int indexday() const ;
       void setIndexDay(int &a);

       int indexmeal() const    ;
       void setIndexMeal(int &a);

       int totdays() const    ;
       void setTotDays(int &a);

       int column() const ;
       void setColumn(int &a);

       int row() const    ;
       void setRow(int &a);

       int linewidth() const    ;
       void setLineWidth(int &a);

       int totitems() const    ;
       void setTotItems(int &a);

       bool endpainter() const ;
       void setEndPainter(bool &a);

       bool endpage() const ;
       void setEndPage(bool &a);


   //signals:

   private:
       QString file_name;
       QString menu_text;
       QString menu_table;
       QString current_slot_text;
       int index_day;
       int index_meal;
       int tot_days;

       int n_column;
       int n_row;
       int line_width;
       int tot_items;

       bool end_painter;
       bool end_page;
       QPrinter printer;
       QPainter painter;

};

#endif// MY_PRINTER_NEW_H
