package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitMatrix;

public final class AztecCode {
    private int codeWords;
    private boolean compact;
    private int layers;
    private BitMatrix matrix;
    private int size;

    public void setCompact(boolean compact) {
        this.compact = compact;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public void setLayers(int layers) {
        this.layers = layers;
    }

    public void setCodeWords(int codeWords) {
        this.codeWords = codeWords;
    }

    public BitMatrix getMatrix() {
        return this.matrix;
    }

    public void setMatrix(BitMatrix matrix) {
        this.matrix = matrix;
    }
}
