package miui.util;

import java.io.BufferedOutputStream;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class DirectIndexedFile {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "DensityIndexFile: ";

    public static class Builder {
        private FileHeader HB;
        private ArrayList<IndexData> HC;
        private IndexData HD;
        private int HE;

        private class DataItemHolder {
            private HashMap<Object, Integer> HF;
            private ArrayList<Object> HG;

            private DataItemHolder() {
                this.HF = new HashMap();
                this.HG = new ArrayList();
            }

            private Integer e(Object obj) {
                Integer num = (Integer) this.HF.get(obj);
                if (num != null) {
                    return num;
                }
                num = Integer.valueOf(this.HG.size());
                this.HF.put(obj, num);
                this.HG.add(obj);
                return num;
            }

            private int size() {
                return this.HG.size();
            }

            private ArrayList<Object> dn() {
                return this.HG;
            }
        }

        private static class IndexData {
            private Item HI;
            private HashMap<Integer, Item> HJ;
            private ArrayList<ArrayList<Item>> HL;
            private ArrayList<DataItemHolder> HM;
            private DataItemDescriptor[] HO;
            private IndexGroupDescriptor[] HP;

            private IndexData(int i) {
                this.HJ = new HashMap();
                this.HM = new ArrayList();
                this.HL = new ArrayList();
                this.HO = new DataItemDescriptor[i];
            }
        }

        private class Item implements Comparable<Item> {
            private Object[] HQ;
            private int mIndex;

            private Item(int i, Object[] objArr) {
                this.mIndex = i;
                this.HQ = objArr;
            }

            public int hashCode() {
                return this.mIndex;
            }

            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if ((obj instanceof Item) && this.mIndex == ((Item) obj).mIndex) {
                    return true;
                }
                return false;
            }

            /* renamed from: a */
            public int compareTo(Item item) {
                return this.mIndex - item.mIndex;
            }
        }

        private Builder(int i) {
            this.HC = new ArrayList();
            this.HE = i;
        }

        public void addKind(Object... objArr) {
            this.HD = new IndexData(objArr.length);
            this.HC.add(this.HD);
            for (int i = 0; i < objArr.length; i++) {
                Type type;
                this.HD.HM.add(new DataItemHolder());
                byte b = (byte) 1;
                if (objArr[i] instanceof Byte) {
                    type = Type.BYTE;
                    ((DataItemHolder) this.HD.HM.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof Short) {
                    type = Type.SHORT;
                    b = (byte) 2;
                    ((DataItemHolder) this.HD.HM.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof Integer) {
                    type = Type.INTEGER;
                    b = (byte) 4;
                    ((DataItemHolder) this.HD.HM.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof Long) {
                    type = Type.LONG;
                    b = (byte) 8;
                    ((DataItemHolder) this.HD.HM.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof String) {
                    type = Type.STRING;
                    objArr[i] = ((DataItemHolder) this.HD.HM.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof byte[]) {
                    type = Type.BYTE_ARRAY;
                    objArr[i] = ((DataItemHolder) this.HD.HM.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof short[]) {
                    type = Type.SHORT_ARRAY;
                    objArr[i] = ((DataItemHolder) this.HD.HM.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof int[]) {
                    type = Type.INTEGER_ARRAY;
                    objArr[i] = ((DataItemHolder) this.HD.HM.get(i)).e(objArr[i]);
                } else if (objArr[i] instanceof long[]) {
                    type = Type.LONG_ARRAY;
                    objArr[i] = ((DataItemHolder) this.HD.HM.get(i)).e(objArr[i]);
                } else {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Unsupported type of the [");
                    stringBuilder.append(i);
                    stringBuilder.append("] argument");
                    throw new IllegalArgumentException(stringBuilder.toString());
                }
                this.HD.HO[i] = new DataItemDescriptor(type, b, (byte) 0, (byte) 0, 0);
            }
            this.HD.HI = new Item(-1, objArr);
        }

        public void newGroup() {
            if (this.HD.HL.size() == 0 || ((ArrayList) this.HD.HL.get(this.HD.HL.size() - 1)).size() != 0) {
                this.HD.HL.add(new ArrayList());
            }
        }

        public void addGroup(int[] iArr, Object[][] objArr) {
            dl();
            if (iArr.length == objArr.length) {
                newGroup();
                for (int i = 0; i < iArr.length; i++) {
                    add(iArr[i], objArr[i]);
                }
                return;
            }
            throw new IllegalArgumentException("Different number between indexes and objects");
        }

        public void add(int i, Object... objArr) {
            dm();
            StringBuilder stringBuilder;
            if (this.HD.HO.length == objArr.length) {
                for (int i2 = 0; i2 < objArr.length; i2++) {
                    switch (this.HD.HO[i2].HY) {
                        case STRING:
                            if (objArr[i2] instanceof String) {
                                objArr[i2] = ((DataItemHolder) this.HD.HM.get(i2)).e(objArr[i2]);
                                this.HD.HO[i2].HZ = DataItemDescriptor.Y(((DataItemHolder) this.HD.HM.get(i2)).size());
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be String");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case BYTE_ARRAY:
                            if (objArr[i2] instanceof byte[]) {
                                objArr[i2] = ((DataItemHolder) this.HD.HM.get(i2)).e(objArr[i2]);
                                this.HD.HO[i2].HZ = DataItemDescriptor.Y(((DataItemHolder) this.HD.HM.get(i2)).size());
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be byte[]");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case SHORT_ARRAY:
                            if (objArr[i2] instanceof short[]) {
                                objArr[i2] = ((DataItemHolder) this.HD.HM.get(i2)).e(objArr[i2]);
                                this.HD.HO[i2].HZ = DataItemDescriptor.Y(((DataItemHolder) this.HD.HM.get(i2)).size());
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be short[]");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case INTEGER_ARRAY:
                            if (objArr[i2] instanceof int[]) {
                                objArr[i2] = ((DataItemHolder) this.HD.HM.get(i2)).e(objArr[i2]);
                                this.HD.HO[i2].HZ = DataItemDescriptor.Y(((DataItemHolder) this.HD.HM.get(i2)).size());
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be int[]");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case LONG_ARRAY:
                            if (objArr[i2] instanceof long[]) {
                                objArr[i2] = ((DataItemHolder) this.HD.HM.get(i2)).e(objArr[i2]);
                                this.HD.HO[i2].HZ = DataItemDescriptor.Y(((DataItemHolder) this.HD.HM.get(i2)).size());
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be long[]");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case BYTE:
                            if (objArr[i2] instanceof Byte) {
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be byte");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case SHORT:
                            if (objArr[i2] instanceof Short) {
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be short");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case INTEGER:
                            if (objArr[i2] instanceof Integer) {
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be int");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        case LONG:
                            if (objArr[i2] instanceof Long) {
                                break;
                            }
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Object[");
                            stringBuilder.append(i2);
                            stringBuilder.append("] should be long");
                            throw new IllegalArgumentException(stringBuilder.toString());
                        default:
                            stringBuilder = new StringBuilder();
                            stringBuilder.append("Unsupported type of objects ");
                            stringBuilder.append(i2);
                            stringBuilder.append(", ");
                            stringBuilder.append(this.HD.HO[i2].HY);
                            stringBuilder.append(" expected");
                            throw new IllegalArgumentException(stringBuilder.toString());
                    }
                }
                Item item = new Item(i, objArr);
                this.HD.HJ.put(Integer.valueOf(i), item);
                ((ArrayList) this.HD.HL.get(this.HD.HL.size() - 1)).add(item);
                return;
            }
            stringBuilder = new StringBuilder();
            stringBuilder.append("Different number of objects inputted, ");
            stringBuilder.append(this.HD.HO.length);
            stringBuilder.append(" data expected");
            throw new IllegalArgumentException(stringBuilder.toString());
        }

        /* JADX WARNING: Removed duplicated region for block: B:11:0x0027  */
        /* JADX WARNING: Removed duplicated region for block: B:14:0x0036  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void write(String str) throws IOException {
            Throwable th;
            build();
            DataOutputStream dataOutputStream = null;
            try {
                DataOutputStream dataOutputStream2 = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(str)));
                try {
                    a(dataOutputStream2);
                    dataOutputStream2.close();
                } catch (Throwable th2) {
                    DataOutputStream dataOutputStream3 = dataOutputStream2;
                    th = th2;
                    dataOutputStream = dataOutputStream3;
                    if (dataOutputStream != null) {
                    }
                    if (new File(str).delete()) {
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                if (dataOutputStream != null) {
                    dataOutputStream.close();
                }
                if (new File(str).delete()) {
                    PrintStream printStream = System.err;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Cannot delete file ");
                    stringBuilder.append(str);
                    printStream.println(stringBuilder.toString());
                }
                throw th;
            }
        }

        private void dl() {
            if (this.HD == null) {
                throw new IllegalArgumentException("Please add a data kind before adding group");
            }
        }

        private void dm() {
            dl();
            if (this.HD.HL.size() == 0) {
                throw new IllegalArgumentException("Please add a data group before adding data");
            }
        }

        private void build() {
            int size = this.HC.size();
            this.HB = new FileHeader(size, this.HE);
            for (int i = 0; i < size; i++) {
                IndexData indexData = (IndexData) this.HC.get(i);
                this.HB.Ir[i] = new DescriptionPair(0, 0);
                int i2 = 0;
                while (i2 < indexData.HL.size() && ((ArrayList) indexData.HL.get(i2)).size() != 0) {
                    i2++;
                }
                indexData.HP = new IndexGroupDescriptor[i2];
                for (i2 = 0; i2 < indexData.HP.length; i2++) {
                    ArrayList arrayList = (ArrayList) indexData.HL.get(i2);
                    Collections.sort(arrayList);
                    indexData.HP[i2] = new IndexGroupDescriptor(((Item) arrayList.get(0)).mIndex, ((Item) arrayList.get(arrayList.size() - 1)).mIndex + 1, 0);
                }
            }
            try {
                a(null);
            } catch (IOException e) {
            }
        }

        private int a(DataOutput dataOutput) throws IOException {
            int i = 0;
            int i2 = i;
            while (i < this.HB.Ir.length) {
                i2 += this.HB.b(dataOutput);
                this.HB.Ir[i].In = (long) i2;
                IndexData indexData = (IndexData) this.HC.get(i);
                if (dataOutput != null) {
                    dataOutput.writeInt(indexData.HP.length);
                }
                int i3 = i2 + 4;
                for (IndexGroupDescriptor a : indexData.HP) {
                    i3 += a.b(dataOutput);
                }
                this.HB.Ir[i].Io = (long) i3;
                if (dataOutput != null) {
                    dataOutput.writeInt(indexData.HO.length);
                }
                i3 += 4;
                for (DataItemDescriptor a2 : indexData.HO) {
                    i3 += a2.b(dataOutput);
                }
                for (i2 = 0; i2 < indexData.HO.length; i2++) {
                    indexData.HO[i2].Ic = (long) i3;
                    i3 += indexData.HO[i2].b(dataOutput, ((DataItemHolder) indexData.HM.get(i2)).dn());
                }
                for (i2 = 0; i2 < indexData.HP.length; i2++) {
                    indexData.HP[i2].Ic = (long) i3;
                    int i4;
                    if (dataOutput == null) {
                        i4 = 0;
                        int i5 = i4;
                        while (i4 < indexData.HO.length) {
                            i5 += indexData.HO[i4].HZ;
                            i4++;
                        }
                        i3 += (indexData.HP[i2].Iu - indexData.HP[i2].It) * i5;
                    } else {
                        i4 = indexData.HP[i2].It;
                        while (i4 < indexData.HP[i2].Iu) {
                            Item item = (Item) indexData.HJ.get(Integer.valueOf(i4));
                            if (item == null) {
                                item = indexData.HI;
                            }
                            int i6 = i3;
                            for (i3 = 0; i3 < indexData.HO.length; i3++) {
                                if (indexData.HO[i3].HZ == (byte) 1) {
                                    dataOutput.writeByte(((Integer) item.HQ[i3]).intValue());
                                } else if (indexData.HO[i3].HZ == (byte) 2) {
                                    dataOutput.writeShort(((Integer) item.HQ[i3]).intValue());
                                } else if (indexData.HO[i3].HZ == (byte) 4) {
                                    dataOutput.writeInt(((Integer) item.HQ[i3]).intValue());
                                } else if (indexData.HO[i3].HZ == (byte) 8) {
                                    dataOutput.writeLong(((Long) item.HQ[i3]).longValue());
                                }
                                i6 += indexData.HO[i3].HZ;
                            }
                            i4++;
                            i3 = i6;
                        }
                    }
                }
                i++;
                i2 = i3;
            }
            return i2;
        }
    }

    private interface InputFile extends DataInput {
        void close() throws IOException;

        long getFilePointer() throws IOException;

        void seek(long j) throws IOException;
    }

    private static class DataInputRandom implements InputFile {
        private RandomAccessFile HS;

        DataInputRandom(RandomAccessFile randomAccessFile) {
            this.HS = randomAccessFile;
        }

        public boolean readBoolean() throws IOException {
            return this.HS.readBoolean();
        }

        public byte readByte() throws IOException {
            return this.HS.readByte();
        }

        public char readChar() throws IOException {
            return this.HS.readChar();
        }

        public double readDouble() throws IOException {
            return this.HS.readDouble();
        }

        public float readFloat() throws IOException {
            return this.HS.readFloat();
        }

        public void readFully(byte[] bArr) throws IOException {
            this.HS.readFully(bArr);
        }

        public void readFully(byte[] bArr, int i, int i2) throws IOException {
            this.HS.readFully(bArr, i, i2);
        }

        public int readInt() throws IOException {
            return this.HS.readInt();
        }

        public String readLine() throws IOException {
            return this.HS.readLine();
        }

        public long readLong() throws IOException {
            return this.HS.readLong();
        }

        public short readShort() throws IOException {
            return this.HS.readShort();
        }

        public int readUnsignedByte() throws IOException {
            return this.HS.readUnsignedByte();
        }

        public int readUnsignedShort() throws IOException {
            return this.HS.readUnsignedShort();
        }

        public String readUTF() throws IOException {
            return this.HS.readUTF();
        }

        public int skipBytes(int i) throws IOException {
            return this.HS.skipBytes(i);
        }

        public void seek(long j) throws IOException {
            this.HS.seek(j);
        }

        public void close() throws IOException {
            this.HS.close();
        }

        public long getFilePointer() throws IOException {
            return this.HS.getFilePointer();
        }
    }

    private static class DataInputStream implements InputFile {
        private InputStream HV;
        private long HW = 0;

        DataInputStream(InputStream inputStream) {
            this.HV = inputStream;
            this.HV.mark(0);
        }

        public boolean readBoolean() throws IOException {
            this.HW++;
            return this.HV.read() != 0;
        }

        public byte readByte() throws IOException {
            this.HW++;
            return (byte) this.HV.read();
        }

        public char readChar() throws IOException {
            byte[] bArr = new byte[2];
            this.HW += 2;
            if (this.HV.read(bArr) == 2) {
                return (char) (((char) (bArr[1] & 255)) | ((bArr[0] << 8) & 65280));
            }
            return 0;
        }

        public double readDouble() throws IOException {
            throw new IOException();
        }

        public float readFloat() throws IOException {
            throw new IOException();
        }

        public void readFully(byte[] bArr) throws IOException {
            this.HW += (long) this.HV.read(bArr);
        }

        public void readFully(byte[] bArr, int i, int i2) throws IOException {
            this.HW += (long) this.HV.read(bArr, i, i2);
        }

        public int readInt() throws IOException {
            byte[] bArr = new byte[4];
            this.HW += 4;
            if (this.HV.read(bArr) == 4) {
                return (((bArr[3] & 255) | ((bArr[2] << 8) & 65280)) | ((bArr[1] << 16) & 16711680)) | ((bArr[0] << 24) & -16777216);
            }
            return 0;
        }

        public String readLine() throws IOException {
            throw new IOException();
        }

        public long readLong() throws IOException {
            byte[] bArr = new byte[8];
            this.HW += 8;
            if (this.HV.read(bArr) != 8) {
                return 0;
            }
            return ((((long) bArr[0]) << 56) & -72057594037927936L) | ((((((((long) (bArr[7] & 255)) | (((long) (bArr[6] << 8)) & 65280)) | (((long) (bArr[5] << 16)) & 16711680)) | (((long) (bArr[4] << 24)) & 4278190080L)) | ((((long) bArr[3]) << 32) & 1095216660480L)) | ((((long) bArr[2]) << 40) & 280375465082880L)) | ((((long) bArr[1]) << 48) & 71776119061217280L));
        }

        public short readShort() throws IOException {
            byte[] bArr = new byte[2];
            this.HW += 2;
            if (this.HV.read(bArr) == 2) {
                return (short) (((short) (bArr[1] & 255)) | ((bArr[0] << 8) & 65280));
            }
            return (short) 0;
        }

        public int readUnsignedByte() throws IOException {
            this.HW++;
            return (byte) this.HV.read();
        }

        public int readUnsignedShort() throws IOException {
            byte[] bArr = new byte[2];
            this.HW += 2;
            if (this.HV.read(bArr) == 2) {
                return (short) (((short) (bArr[1] & 255)) | ((bArr[0] << 8) & 65280));
            }
            return 0;
        }

        public String readUTF() throws IOException {
            throw new IOException();
        }

        public int skipBytes(int i) throws IOException {
            i = (int) this.HV.skip((long) i);
            this.HW += (long) i;
            return i;
        }

        public void seek(long j) throws IOException {
            this.HV.reset();
            if (this.HV.skip(j) == j) {
                this.HW = j;
                return;
            }
            throw new IOException("Skip failed");
        }

        public void close() throws IOException {
            this.HV.close();
        }

        public long getFilePointer() throws IOException {
            return this.HW;
        }
    }

    private static class DataItemDescriptor {
        private static byte[] HX = new byte[1024];
        private Type HY;
        private byte HZ;
        private byte Ia;
        private byte Ib;
        private long Ic;

        private enum Type {
            BYTE,
            SHORT,
            INTEGER,
            LONG,
            STRING,
            BYTE_ARRAY,
            SHORT_ARRAY,
            INTEGER_ARRAY,
            LONG_ARRAY
        }

        private static byte[] X(int i) {
            byte[] bArr;
            synchronized (DataItemDescriptor.class) {
                if (HX == null || HX.length < i) {
                    HX = new byte[i];
                }
                bArr = HX;
                HX = null;
            }
            return bArr;
        }

        private static void b(byte[] bArr) {
            synchronized (DataItemDescriptor.class) {
                if (bArr != null) {
                    if (HX == null || HX.length < bArr.length) {
                        HX = bArr;
                    }
                }
            }
        }

        private DataItemDescriptor(Type type, byte b, byte b2, byte b3, long j) {
            this.HY = type;
            this.HZ = b;
            this.Ia = b2;
            this.Ib = b3;
            this.Ic = j;
        }

        private static DataItemDescriptor a(DataInput dataInput) throws IOException {
            return new DataItemDescriptor(Type.values()[dataInput.readByte()], dataInput.readByte(), dataInput.readByte(), dataInput.readByte(), dataInput.readLong());
        }

        private int b(DataOutput dataOutput) throws IOException {
            if (dataOutput != null) {
                dataOutput.writeByte(this.HY.ordinal());
                dataOutput.writeByte(this.HZ);
                dataOutput.writeByte(this.Ia);
                dataOutput.writeByte(this.Ib);
                dataOutput.writeLong(this.Ic);
            }
            return 12;
        }

        private int a(DataOutput dataOutput, List<Object> list) throws IOException {
            int size;
            if (dataOutput == null || this.Ib == (byte) 0 || this.Ia == (byte) 0) {
                size = list.size() * 4;
                int i = size;
                size = 0;
                for (Object next : list) {
                    int length;
                    switch (this.HY) {
                        case STRING:
                            length = ((String) next).getBytes().length;
                            i += length;
                            break;
                        case BYTE_ARRAY:
                            length = ((byte[]) next).length;
                            i += length;
                            break;
                        case SHORT_ARRAY:
                            length = ((short[]) next).length;
                            i += 2 * length;
                            break;
                        case INTEGER_ARRAY:
                            length = ((int[]) next).length;
                            i += 4 * length;
                            break;
                        case LONG_ARRAY:
                            length = ((long[]) next).length;
                            i += 8 * length;
                            break;
                        default:
                            length = 0;
                            break;
                    }
                    if (size < length) {
                        size = length;
                    }
                }
                this.Ia = Y(size);
                this.Ib = Y(i + (this.Ia * list.size()));
            }
            size = this.Ib * list.size();
            if (dataOutput != null) {
                int i2 = size;
                for (Object next2 : list) {
                    a(dataOutput, this.Ib, (long) i2);
                    switch (this.HY) {
                        case STRING:
                            i2 += this.Ia + ((String) next2).getBytes().length;
                            break;
                        case BYTE_ARRAY:
                            i2 += this.Ia + ((byte[]) next2).length;
                            break;
                        case SHORT_ARRAY:
                            i2 += this.Ia + (((short[]) next2).length * 2);
                            break;
                        case INTEGER_ARRAY:
                            i2 += this.Ia + (((int[]) next2).length * 4);
                            break;
                        case LONG_ARRAY:
                            i2 += this.Ia + (((long[]) next2).length * 8);
                            break;
                        default:
                            break;
                    }
                }
            }
            return size;
        }

        private int b(DataOutput dataOutput, List<Object> list) throws IOException {
            int i = 4;
            Iterator it;
            int i2;
            byte[] bytes;
            switch (this.HY) {
                case STRING:
                    if (dataOutput != null) {
                        dataOutput.writeInt(list.size());
                    }
                    i = 4 + a(dataOutput, (List) list);
                    it = list.iterator();
                    i2 = i;
                    while (it.hasNext()) {
                        bytes = ((String) it.next()).getBytes();
                        if (dataOutput != null) {
                            a(dataOutput, this.Ia, (long) bytes.length);
                            for (byte writeByte : bytes) {
                                dataOutput.writeByte(writeByte);
                            }
                        }
                        i2 += this.Ia + bytes.length;
                    }
                    return i2;
                case BYTE_ARRAY:
                    if (dataOutput != null) {
                        dataOutput.writeInt(list.size());
                    }
                    i = 4 + a(dataOutput, (List) list);
                    it = list.iterator();
                    i2 = i;
                    while (it.hasNext()) {
                        bytes = (byte[]) it.next();
                        if (dataOutput != null) {
                            a(dataOutput, this.Ia, (long) bytes.length);
                            dataOutput.write(bytes);
                        }
                        i2 += this.Ia + bytes.length;
                    }
                    return i2;
                case SHORT_ARRAY:
                    if (dataOutput != null) {
                        dataOutput.writeInt(list.size());
                    }
                    i = 4 + a(dataOutput, (List) list);
                    it = list.iterator();
                    while (it.hasNext()) {
                        short[] sArr = (short[]) it.next();
                        if (dataOutput != null) {
                            a(dataOutput, this.Ia, (long) sArr.length);
                            for (short writeShort : sArr) {
                                dataOutput.writeShort(writeShort);
                            }
                        }
                        i += this.Ia + (sArr.length * 2);
                    }
                    break;
                case INTEGER_ARRAY:
                    if (dataOutput != null) {
                        dataOutput.writeInt(list.size());
                    }
                    int a = a(dataOutput, (List) list) + 4;
                    it = list.iterator();
                    i2 = a;
                    while (it.hasNext()) {
                        int[] iArr = (int[]) it.next();
                        if (dataOutput != null) {
                            a(dataOutput, this.Ia, (long) iArr.length);
                            for (int writeInt : iArr) {
                                dataOutput.writeInt(writeInt);
                            }
                        }
                        i2 += this.Ia + (iArr.length * 4);
                    }
                    return i2;
                case LONG_ARRAY:
                    if (dataOutput != null) {
                        dataOutput.writeInt(list.size());
                    }
                    i = 4 + a(dataOutput, (List) list);
                    it = list.iterator();
                    i2 = i;
                    while (it.hasNext()) {
                        long[] jArr = (long[]) it.next();
                        if (dataOutput != null) {
                            a(dataOutput, this.Ia, (long) jArr.length);
                            for (long writeLong : jArr) {
                                dataOutput.writeLong(writeLong);
                            }
                        }
                        i2 += this.Ia + (jArr.length * 8);
                    }
                    return i2;
                case BYTE:
                    if (dataOutput != null) {
                        dataOutput.writeByte(((Byte) list.get(0)).byteValue());
                    }
                    return 1;
                case SHORT:
                    if (dataOutput == null) {
                        return 2;
                    }
                    dataOutput.writeShort(((Short) list.get(0)).shortValue());
                    return 2;
                case INTEGER:
                    if (dataOutput != null) {
                        dataOutput.writeInt(((Integer) list.get(0)).intValue());
                        break;
                    }
                    break;
                case LONG:
                    if (dataOutput != null) {
                        dataOutput.writeLong(((Long) list.get(0)).longValue());
                    }
                    return 8;
                default:
                    return 0;
            }
            return i;
        }

        private Object a(InputFile inputFile, int i) throws IOException {
            Object str;
            long filePointer = inputFile.getFilePointer();
            if (i != 0) {
                inputFile.seek(((long) (this.Ib * i)) + filePointer);
            }
            inputFile.seek(filePointer + a((DataInput) inputFile, this.Ib));
            byte[] bArr = null;
            int i2 = 0;
            switch (this.HY) {
                case STRING:
                    i = (int) a((DataInput) inputFile, this.Ia);
                    bArr = X(i);
                    inputFile.readFully(bArr, 0, i);
                    str = new String(bArr, 0, i);
                    break;
                case BYTE_ARRAY:
                    str = new byte[((int) a((DataInput) inputFile, this.Ia))];
                    inputFile.readFully(str);
                    break;
                case SHORT_ARRAY:
                    str = new short[((int) a((DataInput) inputFile, this.Ia))];
                    while (i2 < str.length) {
                        str[i2] = inputFile.readShort();
                        i2++;
                    }
                    break;
                case INTEGER_ARRAY:
                    str = new int[((int) a((DataInput) inputFile, this.Ia))];
                    while (i2 < str.length) {
                        str[i2] = inputFile.readInt();
                        i2++;
                    }
                    break;
                case LONG_ARRAY:
                    str = new long[((int) a((DataInput) inputFile, this.Ia))];
                    while (i2 < str.length) {
                        str[i2] = inputFile.readLong();
                        i2++;
                    }
                    break;
                default:
                    str = null;
                    break;
            }
            b(bArr);
            return str;
        }

        private Object[] a(InputFile inputFile) throws IOException {
            switch (this.HY) {
                case STRING:
                case BYTE_ARRAY:
                case SHORT_ARRAY:
                case INTEGER_ARRAY:
                case LONG_ARRAY:
                    Object[] objArr = new Object[inputFile.readInt()];
                    objArr[0] = a(inputFile, 0);
                    return objArr;
                case BYTE:
                    return new Object[]{Byte.valueOf(inputFile.readByte())};
                case SHORT:
                    return new Object[]{Short.valueOf(inputFile.readShort())};
                case INTEGER:
                    return new Object[]{Integer.valueOf(inputFile.readInt())};
                case LONG:
                    return new Object[]{Long.valueOf(inputFile.readLong())};
                default:
                    return null;
            }
        }

        private static void a(DataOutput dataOutput, int i, long j) throws IOException {
            if (i == 4) {
                dataOutput.writeInt((int) j);
            } else if (i != 8) {
                switch (i) {
                    case 1:
                        dataOutput.writeByte((int) j);
                        return;
                    case 2:
                        dataOutput.writeShort((int) j);
                        return;
                    default:
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("Unsuppoert size ");
                        stringBuilder.append(i);
                        throw new IllegalArgumentException(stringBuilder.toString());
                }
            } else {
                dataOutput.writeLong(j);
            }
        }

        private static long a(DataInput dataInput, int i) throws IOException {
            if (i == 4) {
                return (long) dataInput.readInt();
            }
            if (i == 8) {
                return dataInput.readLong();
            }
            switch (i) {
                case 1:
                    return (long) dataInput.readByte();
                case 2:
                    return (long) dataInput.readShort();
                default:
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Unsuppoert size ");
                    stringBuilder.append(i);
                    throw new IllegalArgumentException(stringBuilder.toString());
            }
        }

        private static byte Y(int i) {
            byte b = (byte) 0;
            for (long j = (long) (2 * i); j > 0; j >>= 8) {
                b = (byte) (b + 1);
            }
            if (b == (byte) 3) {
                return (byte) 4;
            }
            return (b <= (byte) 4 || b >= (byte) 8) ? b : (byte) 8;
        }
    }

    private static class DescriptionPair {
        private long In;
        private long Io;

        private DescriptionPair(long j, long j2) {
            this.In = j;
            this.Io = j2;
        }

        private static DescriptionPair c(DataInput dataInput) throws IOException {
            return new DescriptionPair(dataInput.readLong(), dataInput.readLong());
        }

        private int b(DataOutput dataOutput) throws IOException {
            if (dataOutput != null) {
                dataOutput.writeLong(this.In);
                dataOutput.writeLong(this.Io);
            }
            return 16;
        }
    }

    private static class FileHeader {
        private static final byte[] Ip = new byte[]{(byte) 73, (byte) 68, (byte) 70, (byte) 32};
        private static final int Iq = 2;
        private DescriptionPair[] Ir;
        private int Is;

        private FileHeader(int i, int i2) {
            this.Ir = new DescriptionPair[i];
            this.Is = i2;
        }

        private static FileHeader e(DataInput dataInput) throws IOException {
            int i = 0;
            byte[] bArr = new byte[Ip.length];
            for (int i2 = 0; i2 < bArr.length; i2++) {
                bArr[i2] = dataInput.readByte();
            }
            if (!Arrays.equals(bArr, Ip)) {
                throw new IOException("File tag unmatched, file may be corrupt");
            } else if (dataInput.readInt() == 2) {
                int readInt = dataInput.readInt();
                FileHeader fileHeader = new FileHeader(readInt, dataInput.readInt());
                while (i < readInt) {
                    fileHeader.Ir[i] = DescriptionPair.c(dataInput);
                    i++;
                }
                return fileHeader;
            } else {
                throw new IOException("File version unmatched, please upgrade your reader");
            }
        }

        private int b(DataOutput dataOutput) throws IOException {
            int length = ((Ip.length + 4) + 4) + 4;
            if (dataOutput != null) {
                dataOutput.write(Ip);
                dataOutput.writeInt(2);
                dataOutput.writeInt(this.Ir.length);
                dataOutput.writeInt(this.Is);
            }
            for (DescriptionPair a : this.Ir) {
                length += a.b(dataOutput);
            }
            return length;
        }
    }

    private static class IndexGroupDescriptor {
        long Ic;
        int It;
        int Iu;

        private IndexGroupDescriptor(int i, int i2, long j) {
            this.It = i;
            this.Iu = i2;
            this.Ic = j;
        }

        private static IndexGroupDescriptor g(DataInput dataInput) throws IOException {
            return new IndexGroupDescriptor(dataInput.readInt(), dataInput.readInt(), dataInput.readLong());
        }

        private int b(DataOutput dataOutput) throws IOException {
            if (dataOutput != null) {
                dataOutput.writeInt(this.It);
                dataOutput.writeInt(this.Iu);
                dataOutput.writeLong(this.Ic);
            }
            return 16;
        }
    }

    public static class Reader {
        private InputFile Iv;
        private FileHeader Iw;
        private IndexData[] Ix;

        private static class IndexData {
            private DataItemDescriptor[] HO;
            private IndexGroupDescriptor[] HP;
            private Object[][] Iy;
            private int Iz;

            private IndexData() {
            }

            static /* synthetic */ int b(IndexData indexData, int i) {
                int i2 = indexData.Iz + i;
                indexData.Iz = i2;
                return i2;
            }
        }

        private Reader(InputStream inputStream) throws IOException {
            this.Iv = new DataInputStream(inputStream);
            L("assets");
        }

        private Reader(String str) throws IOException {
            this.Iv = new DataInputRandom(new RandomAccessFile(str, "r"));
            L(str);
        }

        private void L(String str) throws IOException {
            System.currentTimeMillis();
            try {
                this.Iv.seek(0);
                this.Iw = FileHeader.e(this.Iv);
                this.Ix = new IndexData[this.Iw.Ir.length];
                for (int i = 0; i < this.Iw.Ir.length; i++) {
                    int i2;
                    this.Ix[i] = new IndexData();
                    this.Iv.seek(this.Iw.Ir[i].In);
                    int readInt = this.Iv.readInt();
                    this.Ix[i].HP = new IndexGroupDescriptor[readInt];
                    for (i2 = 0; i2 < readInt; i2++) {
                        this.Ix[i].HP[i2] = IndexGroupDescriptor.g(this.Iv);
                    }
                    this.Iv.seek(this.Iw.Ir[i].Io);
                    readInt = this.Iv.readInt();
                    this.Ix[i].Iz = 0;
                    this.Ix[i].HO = new DataItemDescriptor[readInt];
                    for (i2 = 0; i2 < readInt; i2++) {
                        this.Ix[i].HO[i2] = DataItemDescriptor.a(this.Iv);
                        IndexData.b(this.Ix[i], this.Ix[i].HO[i2].HZ);
                    }
                    this.Ix[i].Iy = new Object[readInt][];
                    for (i2 = 0; i2 < readInt; i2++) {
                        this.Iv.seek(this.Ix[i].HO[i2].Ic);
                        this.Ix[i].Iy[i2] = this.Ix[i].HO[i2].a(this.Iv);
                    }
                }
            } catch (IOException e) {
                close();
                throw e;
            }
        }

        public int getDataVersion() {
            if (this.Iw == null) {
                return -1;
            }
            return this.Iw.Is;
        }

        public synchronized Object get(int i, int i2, int i3) {
            Object obj;
            StringBuilder stringBuilder;
            if (this.Iv == null) {
                throw new IllegalStateException("Get data from a corrupt file");
            } else if (i < 0 || i >= this.Ix.length) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("Kind ");
                stringBuilder.append(i);
                stringBuilder.append(" out of range[0, ");
                stringBuilder.append(this.Ix.length);
                stringBuilder.append(")");
                throw new IllegalArgumentException(stringBuilder.toString());
            } else if (i3 < 0 || i3 >= this.Ix[i].HO.length) {
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("DataIndex ");
                stringBuilder2.append(i3);
                stringBuilder2.append(" out of range[0, ");
                stringBuilder2.append(this.Ix[i].HO.length);
                stringBuilder2.append(")");
                throw new IllegalArgumentException(stringBuilder2.toString());
            } else {
                System.currentTimeMillis();
                long l = l(i, i2);
                Long l2 = null;
                int i4 = 0;
                if (l < 0) {
                    obj = this.Ix[i].Iy[i3][0];
                } else {
                    try {
                        this.Iv.seek(l);
                        while (i4 <= i3) {
                            switch (this.Ix[i].HO[i4].HY) {
                                case STRING:
                                case BYTE_ARRAY:
                                case SHORT_ARRAY:
                                case INTEGER_ARRAY:
                                case LONG_ARRAY:
                                    int b = (int) DataItemDescriptor.a(this.Iv, this.Ix[i].HO[i4].HZ);
                                    if (i4 != i3) {
                                        break;
                                    }
                                    l2 = e(i, i3, b);
                                    break;
                                case BYTE:
                                    l2 = Byte.valueOf(this.Iv.readByte());
                                    break;
                                case SHORT:
                                    l2 = Short.valueOf(this.Iv.readShort());
                                    break;
                                case INTEGER:
                                    l2 = Integer.valueOf(this.Iv.readInt());
                                    break;
                                case LONG:
                                    l2 = Long.valueOf(this.Iv.readLong());
                                    break;
                                default:
                                    stringBuilder = new StringBuilder();
                                    stringBuilder.append("Unknown type ");
                                    stringBuilder.append(this.Ix[i].HO[i4].HY);
                                    throw new IllegalStateException(stringBuilder.toString());
                            }
                            i4++;
                        }
                        obj = l2;
                    } catch (Throwable e) {
                        throw new IllegalStateException("File may be corrupt due to invalid data index size", e);
                    } catch (Throwable e2) {
                        throw new IllegalStateException("Seek data from a corrupt file", e2);
                    }
                }
            }
            return obj;
        }

        public synchronized Object[] get(int i, int i2) {
            StringBuilder stringBuilder;
            if (this.Iv == null) {
                throw new IllegalStateException("Get data from a corrupt file");
            } else if (i < 0 || i >= this.Ix.length) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("Cannot get data kind ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
            } else {
                System.currentTimeMillis();
                long l = l(i, i2);
                Object[] objArr = new Object[this.Ix[i].HO.length];
                int i3 = 0;
                int i4;
                if (l < 0) {
                    for (i4 = 0; i4 < objArr.length; i4++) {
                        objArr[i4] = this.Ix[i].Iy[i4][0];
                    }
                    return objArr;
                }
                try {
                    this.Iv.seek(l);
                    while (i3 < objArr.length) {
                        switch (this.Ix[i].HO[i3].HY) {
                            case STRING:
                            case BYTE_ARRAY:
                            case SHORT_ARRAY:
                            case INTEGER_ARRAY:
                            case LONG_ARRAY:
                                i4 = (int) DataItemDescriptor.a(this.Iv, this.Ix[i].HO[i3].HZ);
                                long filePointer = this.Iv.getFilePointer();
                                objArr[i3] = e(i, i3, i4);
                                this.Iv.seek(filePointer);
                                break;
                            case BYTE:
                                objArr[i3] = Byte.valueOf(this.Iv.readByte());
                                break;
                            case SHORT:
                                objArr[i3] = Short.valueOf(this.Iv.readShort());
                                break;
                            case INTEGER:
                                objArr[i3] = Integer.valueOf(this.Iv.readInt());
                                break;
                            case LONG:
                                objArr[i3] = Long.valueOf(this.Iv.readLong());
                                break;
                            default:
                                stringBuilder = new StringBuilder();
                                stringBuilder.append("Unknown type ");
                                stringBuilder.append(this.Ix[i].HO[i3].HY);
                                throw new IllegalStateException(stringBuilder.toString());
                        }
                        i3++;
                    }
                    return objArr;
                } catch (Throwable e) {
                    throw new IllegalStateException("File may be corrupt due to invalid data index size", e);
                } catch (Throwable e2) {
                    throw new IllegalStateException("Seek data from a corrupt file", e2);
                }
            }
        }

        public synchronized void close() {
            if (this.Iv != null) {
                try {
                    this.Iv.close();
                } catch (IOException e) {
                }
            }
            this.Iv = null;
            this.Iw = null;
            this.Ix = null;
        }

        private Object e(int i, int i2, int i3) throws IOException {
            if (this.Ix[i].Iy[i2][i3] == null) {
                this.Iv.seek(this.Ix[i].HO[i2].Ic + 4);
                this.Ix[i].Iy[i2][i3] = this.Ix[i].HO[i2].a(this.Iv, i3);
            }
            return this.Ix[i].Iy[i2][i3];
        }

        private long l(int i, int i2) {
            IndexGroupDescriptor indexGroupDescriptor;
            int i3 = 0;
            int length = this.Ix[i].HP.length;
            while (i3 < length) {
                int i4 = (length + i3) / 2;
                if (this.Ix[i].HP[i4].It <= i2) {
                    if (this.Ix[i].HP[i4].Iu > i2) {
                        indexGroupDescriptor = this.Ix[i].HP[i4];
                        break;
                    }
                    i3 = i4 + 1;
                } else {
                    length = i4;
                }
            }
            indexGroupDescriptor = null;
            if (indexGroupDescriptor != null) {
                return indexGroupDescriptor.Ic + ((long) ((i2 - indexGroupDescriptor.It) * this.Ix[i].Iz));
            }
            return -1;
        }
    }

    protected DirectIndexedFile() throws InstantiationException {
        throw new InstantiationException("Cannot instantiate utility class");
    }

    public static Builder build(int i) {
        return new Builder(i);
    }

    public static Reader open(String str) throws IOException {
        return new Reader(str, null);
    }

    public static Reader open(InputStream inputStream) throws IOException {
        return new Reader(inputStream, null);
    }
}
