/****************************************************************************
** Meta object code from reading C++ file 'specificworker.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/specificworker.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'specificworker.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_SpecificWorker_t {
    QByteArrayData data[30];
    char stringdata0[336];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_SpecificWorker_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_SpecificWorker_t qt_meta_stringdata_SpecificWorker = {
    {
QT_MOC_LITERAL(0, 0, 14), // "SpecificWorker"
QT_MOC_LITERAL(1, 15, 7), // "compute"
QT_MOC_LITERAL(2, 23, 0), // ""
QT_MOC_LITERAL(3, 24, 13), // "startup_check"
QT_MOC_LITERAL(4, 38, 10), // "initialize"
QT_MOC_LITERAL(5, 49, 6), // "period"
QT_MOC_LITERAL(6, 56, 5), // "click"
QT_MOC_LITERAL(7, 62, 5), // "punto"
QT_MOC_LITERAL(8, 68, 13), // "calcularPunto"
QT_MOC_LITERAL(9, 82, 23), // "std::tuple<float,float>"
QT_MOC_LITERAL(10, 106, 31), // "RoboCompGenericBase::TBaseState"
QT_MOC_LITERAL(11, 138, 6), // "bState"
QT_MOC_LITERAL(12, 145, 7), // "Forward"
QT_MOC_LITERAL(13, 153, 4), // "Turn"
QT_MOC_LITERAL(14, 158, 6), // "Border"
QT_MOC_LITERAL(15, 165, 25), // "RoboCompLaser::TLaserData"
QT_MOC_LITERAL(16, 191, 5), // "ldata"
QT_MOC_LITERAL(17, 197, 6), // "distan"
QT_MOC_LITERAL(18, 204, 12), // "AlgoritmoBug"
QT_MOC_LITERAL(19, 217, 16), // "std::vector<int>"
QT_MOC_LITERAL(20, 234, 2), // "P1"
QT_MOC_LITERAL(21, 237, 2), // "P2"
QT_MOC_LITERAL(22, 240, 10), // "checkPoint"
QT_MOC_LITERAL(23, 251, 10), // "laser_data"
QT_MOC_LITERAL(24, 262, 1), // "x"
QT_MOC_LITERAL(25, 264, 1), // "y"
QT_MOC_LITERAL(26, 266, 26), // "calcularDistanciaIzquierda"
QT_MOC_LITERAL(27, 293, 6), // "ldataX"
QT_MOC_LITERAL(28, 300, 24), // "calcularDistanciaDerecha"
QT_MOC_LITERAL(29, 325, 10) // "draw_laser"

    },
    "SpecificWorker\0compute\0\0startup_check\0"
    "initialize\0period\0click\0punto\0"
    "calcularPunto\0std::tuple<float,float>\0"
    "RoboCompGenericBase::TBaseState\0bState\0"
    "Forward\0Turn\0Border\0RoboCompLaser::TLaserData\0"
    "ldata\0distan\0AlgoritmoBug\0std::vector<int>\0"
    "P1\0P2\0checkPoint\0laser_data\0x\0y\0"
    "calcularDistanciaIzquierda\0ldataX\0"
    "calcularDistanciaDerecha\0draw_laser"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_SpecificWorker[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      13,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   79,    2, 0x0a /* Public */,
       3,    0,   80,    2, 0x0a /* Public */,
       4,    1,   81,    2, 0x0a /* Public */,
       6,    1,   84,    2, 0x0a /* Public */,
       8,    1,   87,    2, 0x0a /* Public */,
      12,    1,   90,    2, 0x0a /* Public */,
      13,    0,   93,    2, 0x0a /* Public */,
      14,    3,   94,    2, 0x0a /* Public */,
      18,    2,  101,    2, 0x0a /* Public */,
      22,    3,  106,    2, 0x0a /* Public */,
      26,    1,  113,    2, 0x0a /* Public */,
      28,    1,  116,    2, 0x0a /* Public */,
      29,    1,  119,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Int,
    QMetaType::Void, QMetaType::Int,    5,
    QMetaType::Void, QMetaType::QPointF,    7,
    0x80000000 | 9, 0x80000000 | 10,   11,
    QMetaType::Void, 0x80000000 | 10,   11,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 15, QMetaType::Float, 0x80000000 | 10,   16,   17,   11,
    0x80000000 | 19, QMetaType::QPointF, QMetaType::QPointF,   20,   21,
    QMetaType::Bool, 0x80000000 | 15, QMetaType::Float, QMetaType::Float,   23,   24,   25,
    QMetaType::Int, 0x80000000 | 15,   27,
    QMetaType::Int, 0x80000000 | 15,   27,
    QMetaType::Void, 0x80000000 | 15,   16,

       0        // eod
};

void SpecificWorker::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<SpecificWorker *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->compute(); break;
        case 1: { int _r = _t->startup_check();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 2: _t->initialize((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->click((*reinterpret_cast< QPointF(*)>(_a[1]))); break;
        case 4: { std::tuple<float,float> _r = _t->calcularPunto((*reinterpret_cast< RoboCompGenericBase::TBaseState(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< std::tuple<float,float>*>(_a[0]) = std::move(_r); }  break;
        case 5: _t->Forward((*reinterpret_cast< RoboCompGenericBase::TBaseState(*)>(_a[1]))); break;
        case 6: _t->Turn(); break;
        case 7: _t->Border((*reinterpret_cast< RoboCompLaser::TLaserData(*)>(_a[1])),(*reinterpret_cast< float(*)>(_a[2])),(*reinterpret_cast< RoboCompGenericBase::TBaseState(*)>(_a[3]))); break;
        case 8: { std::vector<int> _r = _t->AlgoritmoBug((*reinterpret_cast< QPointF(*)>(_a[1])),(*reinterpret_cast< QPointF(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< std::vector<int>*>(_a[0]) = std::move(_r); }  break;
        case 9: { bool _r = _t->checkPoint((*reinterpret_cast< const RoboCompLaser::TLaserData(*)>(_a[1])),(*reinterpret_cast< float(*)>(_a[2])),(*reinterpret_cast< float(*)>(_a[3])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 10: { int _r = _t->calcularDistanciaIzquierda((*reinterpret_cast< const RoboCompLaser::TLaserData(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 11: { int _r = _t->calcularDistanciaDerecha((*reinterpret_cast< const RoboCompLaser::TLaserData(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 12: _t->draw_laser((*reinterpret_cast< const RoboCompLaser::TLaserData(*)>(_a[1]))); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject SpecificWorker::staticMetaObject = { {
    &GenericWorker::staticMetaObject,
    qt_meta_stringdata_SpecificWorker.data,
    qt_meta_data_SpecificWorker,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *SpecificWorker::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *SpecificWorker::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_SpecificWorker.stringdata0))
        return static_cast<void*>(this);
    return GenericWorker::qt_metacast(_clname);
}

int SpecificWorker::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = GenericWorker::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 13)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 13;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 13)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 13;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
