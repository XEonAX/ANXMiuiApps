package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;

public class PrimitiveArraySerializer implements ObjectSerializer {
    public static PrimitiveArraySerializer instance = new PrimitiveArraySerializer();

    public final void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
        SerializeWriter out = serializer.out;
        int i;
        if (object == null) {
            out.writeNull(SerializerFeature.WriteNullListAsEmpty);
        } else if (object instanceof int[]) {
            int[] array = (int[]) object;
            out.write(91);
            for (i = 0; i < array.length; i++) {
                if (i != 0) {
                    out.write(44);
                }
                out.writeInt(array[i]);
            }
            out.write(93);
        } else if (object instanceof short[]) {
            short[] array2 = (short[]) object;
            out.write(91);
            for (i = 0; i < array2.length; i++) {
                if (i != 0) {
                    out.write(44);
                }
                out.writeInt(array2[i]);
            }
            out.write(93);
        } else if (object instanceof long[]) {
            long[] array3 = (long[]) object;
            out.write(91);
            for (i = 0; i < array3.length; i++) {
                if (i != 0) {
                    out.write(44);
                }
                out.writeLong(array3[i]);
            }
            out.write(93);
        } else if (object instanceof boolean[]) {
            boolean[] array4 = (boolean[]) object;
            out.write(91);
            for (i = 0; i < array4.length; i++) {
                if (i != 0) {
                    out.write(44);
                }
                out.write(array4[i]);
            }
            out.write(93);
        } else if (object instanceof float[]) {
            float[] array5 = (float[]) object;
            out.write(91);
            for (i = 0; i < array5.length; i++) {
                if (i != 0) {
                    out.write(44);
                }
                float item = array5[i];
                if (Float.isNaN(item)) {
                    out.writeNull();
                } else {
                    out.append(Float.toString(item));
                }
            }
            out.write(93);
        } else if (object instanceof double[]) {
            double[] array6 = (double[]) object;
            out.write(91);
            for (i = 0; i < array6.length; i++) {
                if (i != 0) {
                    out.write(44);
                }
                double item2 = array6[i];
                if (Double.isNaN(item2)) {
                    out.writeNull();
                } else {
                    out.append(Double.toString(item2));
                }
            }
            out.write(93);
        } else if (object instanceof byte[]) {
            out.writeByteArray((byte[]) object);
        } else {
            out.writeString(new String((char[]) object));
        }
    }
}
