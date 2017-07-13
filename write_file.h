#ifndef WRITE_FILE_H
#define WRITE_FILE_H

#include <QObject>
#include <QDebug>
#include <QFile>


class MyFile : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString filename READ filename WRITE setFileName)
    Q_PROPERTY(QString menutable READ menutable WRITE setMenuTable)
    Q_PROPERTY(QString spesatable READ spesatable WRITE setSpesaTable)
    Q_PROPERTY(QString spesagiornotable READ spesagiornotable WRITE setSpesaGiornoTable)



       // to set the filename and print it
       QString filename() const ;
       void setFileName(QString &a);

       // to set the menu table
       QString menutable() const    ;
       QString spesatable() const    ;
       QString spesagiornotable() const    ;

       void setMenuTable(QString &a);
       void setSpesaTable(QString &a);
       void setSpesaGiornoTable(QString &a);

   //signals:

   private:
       QString file_name;
       QString menu_table;
       QString spesa_table;
       QString spesagiorno_table;

       QFile my_file;

};


#endif // WRITE_FILE_H
