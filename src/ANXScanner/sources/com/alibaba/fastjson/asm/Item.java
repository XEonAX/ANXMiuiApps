package com.alibaba.fastjson.asm;

final class Item {
    int hashCode;
    int index;
    int intVal;
    long longVal;
    Item next;
    String strVal1;
    String strVal2;
    String strVal3;
    int type;

    Item() {
    }

    Item(int index, Item i) {
        this.index = index;
        this.type = i.type;
        this.intVal = i.intVal;
        this.longVal = i.longVal;
        this.strVal1 = i.strVal1;
        this.strVal2 = i.strVal2;
        this.strVal3 = i.strVal3;
        this.hashCode = i.hashCode;
    }

    void set(int type, String strVal1, String strVal2, String strVal3) {
        this.type = type;
        this.strVal1 = strVal1;
        this.strVal2 = strVal2;
        this.strVal3 = strVal3;
        switch (type) {
            case 1:
            case 7:
            case 8:
            case 13:
                this.hashCode = (strVal1.hashCode() + type) & ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                return;
            case 12:
                this.hashCode = ((strVal1.hashCode() * strVal2.hashCode()) + type) & ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                return;
            default:
                this.hashCode = (((strVal1.hashCode() * strVal2.hashCode()) * strVal3.hashCode()) + type) & ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                return;
        }
    }

    void set(int intVal) {
        this.type = 3;
        this.intVal = intVal;
        this.hashCode = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED & (this.type + intVal);
    }

    boolean isEqualTo(Item i) {
        switch (this.type) {
            case 1:
            case 7:
            case 8:
            case 13:
                return i.strVal1.equals(this.strVal1);
            case 3:
            case 4:
                if (i.intVal != this.intVal) {
                    return false;
                }
                return true;
            case 5:
            case 6:
            case 15:
                if (i.longVal != this.longVal) {
                    return false;
                }
                return true;
            case 12:
                if (i.strVal1.equals(this.strVal1) && i.strVal2.equals(this.strVal2)) {
                    return true;
                }
                return false;
            default:
                if (i.strVal1.equals(this.strVal1) && i.strVal2.equals(this.strVal2) && i.strVal3.equals(this.strVal3)) {
                    return true;
                }
                return false;
        }
    }
}
