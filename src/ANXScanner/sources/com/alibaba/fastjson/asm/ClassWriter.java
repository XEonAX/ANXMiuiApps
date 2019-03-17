package com.alibaba.fastjson.asm;

public class ClassWriter {
    private int access;
    FieldWriter firstField;
    MethodWriter firstMethod;
    int index;
    private int interfaceCount;
    private int[] interfaces;
    Item[] items;
    final Item key;
    final Item key2;
    final Item key3;
    FieldWriter lastField;
    MethodWriter lastMethod;
    private int name;
    final ByteVector pool;
    private int superName;
    String thisName;
    int threshold;
    Item[] typeTable;
    int version;

    public ClassWriter() {
        this(0);
    }

    private ClassWriter(int flags) {
        this.index = 1;
        this.pool = new ByteVector();
        this.items = new Item[256];
        this.threshold = (int) (0.75d * ((double) this.items.length));
        this.key = new Item();
        this.key2 = new Item();
        this.key3 = new Item();
    }

    public void visit(int version, int access, String name, String superName, String[] interfaces) {
        this.version = version;
        this.access = access;
        this.name = newClassItem(name).index;
        this.thisName = name;
        this.superName = superName == null ? 0 : newClassItem(superName).index;
        if (interfaces != null && interfaces.length > 0) {
            this.interfaceCount = interfaces.length;
            this.interfaces = new int[this.interfaceCount];
            for (int i = 0; i < this.interfaceCount; i++) {
                this.interfaces[i] = newClassItem(interfaces[i]).index;
            }
        }
    }

    public byte[] toByteArray() {
        FieldWriter fb;
        MethodWriter mb;
        int size = (this.interfaceCount * 2) + 24;
        int nbFields = 0;
        for (fb = this.firstField; fb != null; fb = fb.next) {
            nbFields++;
            size += fb.getSize();
        }
        int nbMethods = 0;
        for (mb = this.firstMethod; mb != null; mb = mb.next) {
            nbMethods++;
            size += mb.getSize();
        }
        ByteVector out = new ByteVector(size + this.pool.length);
        out.putInt(-889275714).putInt(this.version);
        out.putShort(this.index).putByteArray(this.pool.data, 0, this.pool.length);
        out.putShort(this.access & -393217).putShort(this.name).putShort(this.superName);
        out.putShort(this.interfaceCount);
        for (int i = 0; i < this.interfaceCount; i++) {
            out.putShort(this.interfaces[i]);
        }
        out.putShort(nbFields);
        for (fb = this.firstField; fb != null; fb = fb.next) {
            fb.put(out);
        }
        out.putShort(nbMethods);
        for (mb = this.firstMethod; mb != null; mb = mb.next) {
            mb.put(out);
        }
        out.putShort(0);
        return out.data;
    }

    Item newConstItem(Object cst) {
        if (cst instanceof Integer) {
            int val = ((Integer) cst).intValue();
            this.key.set(val);
            Item result = get(this.key);
            if (result != null) {
                return result;
            }
            this.pool.putByte(3).putInt(val);
            int i = this.index;
            this.index = i + 1;
            result = new Item(i, this.key);
            put(result);
            return result;
        } else if (cst instanceof String) {
            return newString((String) cst);
        } else {
            if (cst instanceof Type) {
                Type t = (Type) cst;
                return newClassItem(t.sort == 10 ? t.getInternalName() : t.getDescriptor());
            }
            throw new IllegalArgumentException("value " + cst);
        }
    }

    public int newUTF8(String value) {
        this.key.set(1, value, null, null);
        Item result = get(this.key);
        if (result == null) {
            this.pool.putByte(1).putUTF8(value);
            int i = this.index;
            this.index = i + 1;
            result = new Item(i, this.key);
            put(result);
        }
        return result.index;
    }

    public Item newClassItem(String value) {
        this.key2.set(7, value, null, null);
        Item result = get(this.key2);
        if (result != null) {
            return result;
        }
        this.pool.put12(7, newUTF8(value));
        int i = this.index;
        this.index = i + 1;
        result = new Item(i, this.key2);
        put(result);
        return result;
    }

    Item newFieldItem(String owner, String name, String desc) {
        this.key3.set(9, owner, name, desc);
        Item result = get(this.key3);
        if (result != null) {
            return result;
        }
        int s1 = newClassItem(owner).index;
        this.pool.put12(9, s1).putShort(newNameTypeItem(name, desc).index);
        int i = this.index;
        this.index = i + 1;
        result = new Item(i, this.key3);
        put(result);
        return result;
    }

    Item newMethodItem(String owner, String name, String desc, boolean itf) {
        int type = itf ? 11 : 10;
        this.key3.set(type, owner, name, desc);
        Item result = get(this.key3);
        if (result != null) {
            return result;
        }
        this.pool.put12(type, newClassItem(owner).index).putShort(newNameTypeItem(name, desc).index);
        int i = this.index;
        this.index = i + 1;
        result = new Item(i, this.key3);
        put(result);
        return result;
    }

    private Item newString(String value) {
        this.key2.set(8, value, null, null);
        Item result = get(this.key2);
        if (result != null) {
            return result;
        }
        this.pool.put12(8, newUTF8(value));
        int i = this.index;
        this.index = i + 1;
        result = new Item(i, this.key2);
        put(result);
        return result;
    }

    public Item newNameTypeItem(String name, String desc) {
        this.key2.set(12, name, desc, null);
        Item result = get(this.key2);
        if (result != null) {
            return result;
        }
        int s1 = newUTF8(name);
        this.pool.put12(12, s1).putShort(newUTF8(desc));
        int i = this.index;
        this.index = i + 1;
        result = new Item(i, this.key2);
        put(result);
        return result;
    }

    private Item get(Item key) {
        Item i = this.items[key.hashCode % this.items.length];
        while (i != null && (i.type != key.type || !key.isEqualTo(i))) {
            i = i.next;
        }
        return i;
    }

    private void put(Item i) {
        int index;
        if (this.index > this.threshold) {
            int ll = this.items.length;
            int nl = (ll * 2) + 1;
            Item[] newItems = new Item[nl];
            for (int l = ll - 1; l >= 0; l--) {
                Item j = this.items[l];
                while (j != null) {
                    index = j.hashCode % newItems.length;
                    Item k = j.next;
                    j.next = newItems[index];
                    newItems[index] = j;
                    j = k;
                }
            }
            this.items = newItems;
            this.threshold = (int) (((double) nl) * 0.75d);
        }
        index = i.hashCode % this.items.length;
        i.next = this.items[index];
        this.items[index] = i;
    }
}
