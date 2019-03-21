package org.apache.thrift.protocol;

import org.apache.thrift.TException;

public class TProtocolUtil {
    private static int maxSkipDepth = Integer.MAX_VALUE;

    public static void skip(TProtocol prot, byte type) throws TException {
        skip(prot, type, maxSkipDepth);
    }

    public static void skip(TProtocol prot, byte type, int maxDepth) throws TException {
        if (maxDepth <= 0) {
            throw new TException("Maximum skip depth exceeded");
        }
        int i;
        switch (type) {
            case (byte) 2:
                prot.readBool();
                return;
            case (byte) 3:
                prot.readByte();
                return;
            case (byte) 4:
                prot.readDouble();
                return;
            case (byte) 6:
                prot.readI16();
                return;
            case (byte) 8:
                prot.readI32();
                return;
            case (byte) 10:
                prot.readI64();
                return;
            case (byte) 11:
                prot.readBinary();
                return;
            case (byte) 12:
                prot.readStructBegin();
                while (true) {
                    TField field = prot.readFieldBegin();
                    if (field.type == (byte) 0) {
                        prot.readStructEnd();
                        return;
                    } else {
                        skip(prot, field.type, maxDepth - 1);
                        prot.readFieldEnd();
                    }
                }
            case (byte) 13:
                TMap map = prot.readMapBegin();
                for (i = 0; i < map.size; i++) {
                    skip(prot, map.keyType, maxDepth - 1);
                    skip(prot, map.valueType, maxDepth - 1);
                }
                prot.readMapEnd();
                return;
            case (byte) 14:
                TSet set = prot.readSetBegin();
                for (i = 0; i < set.size; i++) {
                    skip(prot, set.elemType, maxDepth - 1);
                }
                prot.readSetEnd();
                return;
            case (byte) 15:
                TList list = prot.readListBegin();
                for (i = 0; i < list.size; i++) {
                    skip(prot, list.elemType, maxDepth - 1);
                }
                prot.readListEnd();
                return;
            default:
                return;
        }
    }
}
