/****************************************************************************
** Meta object code from reading C++ file 'my_printer_new.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "my_printer_new.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'my_printer_new.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_MyPrinter_t {
    QByteArrayData data[9];
    char stringdata0[92];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_MyPrinter_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_MyPrinter_t qt_meta_stringdata_MyPrinter = {
    {
QT_MOC_LITERAL(0, 0, 9), // "MyPrinter"
QT_MOC_LITERAL(1, 10, 8), // "filename"
QT_MOC_LITERAL(2, 19, 8), // "menutext"
QT_MOC_LITERAL(3, 28, 9), // "menutable"
QT_MOC_LITERAL(4, 38, 15), // "currentslottext"
QT_MOC_LITERAL(5, 54, 8), // "indexday"
QT_MOC_LITERAL(6, 63, 9), // "indexmeal"
QT_MOC_LITERAL(7, 73, 7), // "totdays"
QT_MOC_LITERAL(8, 81, 10) // "endpainter"

    },
    "MyPrinter\0filename\0menutext\0menutable\0"
    "currentslottext\0indexday\0indexmeal\0"
    "totdays\0endpainter"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MyPrinter[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       0,    0, // methods
       8,   14, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // properties: name, type, flags
       1, QMetaType::QString, 0x00095003,
       2, QMetaType::QString, 0x00095003,
       3, QMetaType::QString, 0x00095003,
       4, QMetaType::QString, 0x00095003,
       5, QMetaType::Int, 0x00095003,
       6, QMetaType::Int, 0x00095003,
       7, QMetaType::Int, 0x00095003,
       8, QMetaType::Bool, 0x00095003,

       0        // eod
};

void MyPrinter::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{

#ifndef QT_NO_PROPERTIES
    if (_c == QMetaObject::ReadProperty) {
        MyPrinter *_t = static_cast<MyPrinter *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->filename(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->menutext(); break;
        case 2: *reinterpret_cast< QString*>(_v) = _t->menutable(); break;
        case 3: *reinterpret_cast< QString*>(_v) = _t->currentslottext(); break;
        case 4: *reinterpret_cast< int*>(_v) = _t->indexday(); break;
        case 5: *reinterpret_cast< int*>(_v) = _t->indexmeal(); break;
        case 6: *reinterpret_cast< int*>(_v) = _t->totdays(); break;
        case 7: *reinterpret_cast< bool*>(_v) = _t->endpainter(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        MyPrinter *_t = static_cast<MyPrinter *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setFileName(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->setMenuText(*reinterpret_cast< QString*>(_v)); break;
        case 2: _t->setMenuTable(*reinterpret_cast< QString*>(_v)); break;
        case 3: _t->setCurrentSlotText(*reinterpret_cast< QString*>(_v)); break;
        case 4: _t->setIndexDay(*reinterpret_cast< int*>(_v)); break;
        case 5: _t->setIndexMeal(*reinterpret_cast< int*>(_v)); break;
        case 6: _t->setTotDays(*reinterpret_cast< int*>(_v)); break;
        case 7: _t->setEndPainter(*reinterpret_cast< bool*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
    Q_UNUSED(_o);
    Q_UNUSED(_id);
    Q_UNUSED(_c);
    Q_UNUSED(_a);
}

const QMetaObject MyPrinter::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_MyPrinter.data,
      qt_meta_data_MyPrinter,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *MyPrinter::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MyPrinter::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_MyPrinter.stringdata0))
        return static_cast<void*>(const_cast< MyPrinter*>(this));
    return QObject::qt_metacast(_clname);
}

int MyPrinter::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    
#ifndef QT_NO_PROPERTIES
   if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 8;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 8;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 8;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 8;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 8;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}
QT_END_MOC_NAMESPACE
