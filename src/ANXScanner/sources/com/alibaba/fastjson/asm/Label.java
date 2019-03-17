package com.alibaba.fastjson.asm;

public class Label {
    int inputStackTop;
    Label next;
    int outputStackMax;
    int position;
    private int referenceCount;
    private int[] srcAndRefPositions;
    int status;
    Label successor;

    void put(MethodWriter owner, ByteVector out, int source) {
        if ((this.status & 2) == 0) {
            addReference(source, out.length);
            out.putShort(-1);
            return;
        }
        out.putShort(this.position - source);
    }

    private void addReference(int sourcePosition, int referencePosition) {
        if (this.srcAndRefPositions == null) {
            this.srcAndRefPositions = new int[6];
        }
        if (this.referenceCount >= this.srcAndRefPositions.length) {
            int[] a = new int[(this.srcAndRefPositions.length + 6)];
            System.arraycopy(this.srcAndRefPositions, 0, a, 0, this.srcAndRefPositions.length);
            this.srcAndRefPositions = a;
        }
        int[] iArr = this.srcAndRefPositions;
        int i = this.referenceCount;
        this.referenceCount = i + 1;
        iArr[i] = sourcePosition;
        iArr = this.srcAndRefPositions;
        i = this.referenceCount;
        this.referenceCount = i + 1;
        iArr[i] = referencePosition;
    }

    void resolve(MethodWriter owner, int position, byte[] data) {
        this.status |= 2;
        this.position = position;
        int i = 0;
        while (i < this.referenceCount) {
            int i2 = i + 1;
            int source = this.srcAndRefPositions[i];
            i = i2 + 1;
            int i3 = this.srcAndRefPositions[i2];
            int offset = position - source;
            int reference = i3 + 1;
            data[i3] = (byte) (offset >>> 8);
            data[reference] = (byte) offset;
        }
    }
}
