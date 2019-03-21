package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class HighLevelEncoder {
    private static final int[][] CHAR_MAP = ((int[][]) Array.newInstance(Integer.TYPE, new int[]{5, 256}));
    static final int[][] LATCH_TABLE;
    static final String[] MODE_NAMES = new String[]{"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};
    static final int[][] SHIFT_TABLE = ((int[][]) Array.newInstance(Integer.TYPE, new int[]{6, 6}));
    private final byte[] text;

    static {
        int c;
        int i;
        r5 = new int[5][];
        int[] iArr = new int[]{327708, 327710, 327709, 656318, iArr};
        iArr = new int[]{590318, 327710, 327709, 656318, iArr};
        iArr = new int[]{262158, 590300, 590301, 932798, iArr};
        iArr = new int[]{327709, 327708, 656318, 327710, iArr};
        iArr = new int[]{327711, 656380, 656382, 656381, iArr};
        LATCH_TABLE = r5;
        CHAR_MAP[0][32] = 1;
        for (c = 65; c <= 90; c++) {
            CHAR_MAP[0][c] = (c - 65) + 2;
        }
        CHAR_MAP[1][32] = 1;
        for (c = 97; c <= 122; c++) {
            CHAR_MAP[1][c] = (c - 97) + 2;
        }
        CHAR_MAP[2][32] = 1;
        for (c = 48; c <= 57; c++) {
            CHAR_MAP[2][c] = (c - 48) + 2;
        }
        CHAR_MAP[2][44] = 12;
        CHAR_MAP[2][46] = 13;
        int[] mixedTable = new int[28];
        mixedTable[1] = 32;
        mixedTable[2] = 1;
        mixedTable[3] = 2;
        mixedTable[4] = 3;
        mixedTable[5] = 4;
        mixedTable[6] = 5;
        mixedTable[7] = 6;
        mixedTable[8] = 7;
        mixedTable[9] = 8;
        mixedTable[10] = 9;
        mixedTable[11] = 10;
        mixedTable[12] = 11;
        mixedTable[13] = 12;
        mixedTable[14] = 13;
        mixedTable[15] = 27;
        mixedTable[16] = 28;
        mixedTable[17] = 29;
        mixedTable[18] = 30;
        mixedTable[19] = 31;
        mixedTable[20] = 64;
        mixedTable[21] = 92;
        mixedTable[22] = 94;
        mixedTable[23] = 95;
        mixedTable[24] = 96;
        mixedTable[25] = BaiduSceneResult.PIER;
        mixedTable[26] = BaiduSceneResult.ID_CARD;
        mixedTable[27] = BaiduSceneResult.BANK_CARD;
        for (i = 0; i < mixedTable.length; i++) {
            CHAR_MAP[3][mixedTable[i]] = i;
        }
        int[] punctTable = new int[31];
        punctTable[1] = 13;
        punctTable[6] = 33;
        punctTable[7] = 39;
        punctTable[8] = 35;
        punctTable[9] = 36;
        punctTable[10] = 37;
        punctTable[11] = 38;
        punctTable[12] = 39;
        punctTable[13] = 40;
        punctTable[14] = 41;
        punctTable[15] = 42;
        punctTable[16] = 43;
        punctTable[17] = 44;
        punctTable[18] = 45;
        punctTable[19] = 46;
        punctTable[20] = 47;
        punctTable[21] = 58;
        punctTable[22] = 59;
        punctTable[23] = 60;
        punctTable[24] = 61;
        punctTable[25] = 62;
        punctTable[26] = 63;
        punctTable[27] = 91;
        punctTable[28] = 93;
        punctTable[29] = BaiduSceneResult.TRAIN;
        punctTable[30] = BaiduSceneResult.TRAVEL_OTHER;
        for (i = 0; i < punctTable.length; i++) {
            if (punctTable[i] > 0) {
                CHAR_MAP[4][punctTable[i]] = i;
            }
        }
        for (int[] table : SHIFT_TABLE) {
            Arrays.fill(table, -1);
        }
        SHIFT_TABLE[0][4] = 0;
        SHIFT_TABLE[1][4] = 0;
        SHIFT_TABLE[1][0] = 28;
        SHIFT_TABLE[3][4] = 0;
        SHIFT_TABLE[2][4] = 0;
        SHIFT_TABLE[2][0] = 15;
    }

    public HighLevelEncoder(byte[] text) {
        this.text = text;
    }

    public BitArray encode() {
        Collection<State> states = Collections.singletonList(State.INITIAL_STATE);
        int index = 0;
        while (index < this.text.length) {
            int nextChar;
            int pairCode;
            if (index + 1 < this.text.length) {
                nextChar = this.text[index + 1];
            } else {
                nextChar = 0;
            }
            switch (this.text[index]) {
                case (byte) 13:
                    if (nextChar != 10) {
                        pairCode = 0;
                        break;
                    }
                    pairCode = 2;
                    break;
                case (byte) 44:
                    if (nextChar != 32) {
                        pairCode = 0;
                        break;
                    }
                    pairCode = 4;
                    break;
                case (byte) 46:
                    if (nextChar != 32) {
                        pairCode = 0;
                        break;
                    }
                    pairCode = 3;
                    break;
                case (byte) 58:
                    if (nextChar != 32) {
                        pairCode = 0;
                        break;
                    }
                    pairCode = 5;
                    break;
                default:
                    pairCode = 0;
                    break;
            }
            if (pairCode > 0) {
                states = updateStateListForPair(states, index, pairCode);
                index++;
            } else {
                states = updateStateListForChar(states, index);
            }
            index++;
        }
        return ((State) Collections.min(states, new Comparator<State>() {
            public int compare(State a, State b) {
                return a.getBitCount() - b.getBitCount();
            }
        })).toBitArray(this.text);
    }

    private Collection<State> updateStateListForChar(Iterable<State> states, int index) {
        Collection<State> result = new LinkedList();
        for (State state : states) {
            updateStateForChar(state, index, result);
        }
        return simplifyStates(result);
    }

    private void updateStateForChar(State state, int index, Collection<State> result) {
        char ch = (char) (this.text[index] & 255);
        boolean charInCurrentTable = CHAR_MAP[state.getMode()][ch] > 0;
        State stateNoBinary = null;
        int mode = 0;
        while (mode <= 4) {
            int charInMode = CHAR_MAP[mode][ch];
            if (charInMode > 0) {
                if (stateNoBinary == null) {
                    stateNoBinary = state.endBinaryShift(index);
                }
                if (!charInCurrentTable || mode == state.getMode() || mode == 2) {
                    result.add(stateNoBinary.latchAndAppend(mode, charInMode));
                }
                if (!charInCurrentTable && SHIFT_TABLE[state.getMode()][mode] >= 0) {
                    result.add(stateNoBinary.shiftAndAppend(mode, charInMode));
                }
            }
            mode++;
        }
        if (state.getBinaryShiftByteCount() > 0 || CHAR_MAP[state.getMode()][ch] == 0) {
            result.add(state.addBinaryShiftChar(index));
        }
    }

    private static Collection<State> updateStateListForPair(Iterable<State> states, int index, int pairCode) {
        Collection<State> result = new LinkedList();
        for (State state : states) {
            updateStateForPair(state, index, pairCode, result);
        }
        return simplifyStates(result);
    }

    private static void updateStateForPair(State state, int index, int pairCode, Collection<State> result) {
        State stateNoBinary = state.endBinaryShift(index);
        result.add(stateNoBinary.latchAndAppend(4, pairCode));
        if (state.getMode() != 4) {
            result.add(stateNoBinary.shiftAndAppend(4, pairCode));
        }
        if (pairCode == 3 || pairCode == 4) {
            result.add(stateNoBinary.latchAndAppend(2, 16 - pairCode).latchAndAppend(2, 1));
        }
        if (state.getBinaryShiftByteCount() > 0) {
            result.add(state.addBinaryShiftChar(index).addBinaryShiftChar(index + 1));
        }
    }

    private static Collection<State> simplifyStates(Iterable<State> states) {
        List<State> result = new LinkedList();
        for (State newState : states) {
            boolean add = true;
            Iterator<State> iterator = result.iterator();
            while (iterator.hasNext()) {
                State oldState = (State) iterator.next();
                if (oldState.isBetterThanOrEqualTo(newState)) {
                    add = false;
                    break;
                } else if (newState.isBetterThanOrEqualTo(oldState)) {
                    iterator.remove();
                }
            }
            if (add) {
                result.add(newState);
            }
        }
        return result;
    }
}
