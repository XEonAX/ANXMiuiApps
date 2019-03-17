package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import java.lang.reflect.Type;
import java.util.Arrays;

public class EnumDeserializer implements ObjectDeserializer {
    private final Class<?> enumClass;
    protected long[] enumNameHashCodes = new long[this.ordinalEnums.length];
    protected final Enum[] enums;
    protected final Enum[] ordinalEnums;

    public EnumDeserializer(Class<?> enumClass) {
        int i;
        int j;
        this.enumClass = enumClass;
        this.ordinalEnums = (Enum[]) enumClass.getEnumConstants();
        long[] enumNameHashCodes = new long[this.ordinalEnums.length];
        for (i = 0; i < this.ordinalEnums.length; i++) {
            String name = this.ordinalEnums[i].name();
            long hash = -3750763034362895579L;
            for (j = 0; j < name.length(); j++) {
                hash = (hash ^ ((long) name.charAt(j))) * 1099511628211L;
            }
            enumNameHashCodes[i] = hash;
            this.enumNameHashCodes[i] = hash;
        }
        Arrays.sort(this.enumNameHashCodes);
        this.enums = new Enum[this.ordinalEnums.length];
        for (i = 0; i < this.enumNameHashCodes.length; i++) {
            for (j = 0; j < enumNameHashCodes.length; j++) {
                if (this.enumNameHashCodes[i] == enumNameHashCodes[j]) {
                    this.enums[i] = this.ordinalEnums[j];
                    break;
                }
            }
        }
    }

    public Enum getEnumByHashCode(long hashCode) {
        if (this.enums == null) {
            return null;
        }
        int enumIndex = Arrays.binarySearch(this.enumNameHashCodes, hashCode);
        if (enumIndex >= 0) {
            return this.enums[enumIndex];
        }
        return null;
    }

    public Enum<?> valueOf(int ordinal) {
        return this.ordinalEnums[ordinal];
    }

    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        try {
            JSONLexer lexer = parser.lexer;
            int token = lexer.token();
            if (token == 2) {
                int intValue = lexer.intValue();
                lexer.nextToken(16);
                if (intValue >= 0 && intValue <= this.ordinalEnums.length) {
                    return this.ordinalEnums[intValue];
                }
                throw new JSONException("parse enum " + this.enumClass.getName() + " error, value : " + intValue);
            } else if (token == 4) {
                String strVal = lexer.stringVal();
                lexer.nextToken(16);
                if (strVal.length() != 0) {
                    return Enum.valueOf(this.enumClass, strVal);
                }
                return null;
            } else if (token == 8) {
                lexer.nextToken(16);
                return null;
            } else {
                throw new JSONException("parse enum " + this.enumClass.getName() + " error, value : " + parser.parse());
            }
        } catch (JSONException e) {
            throw e;
        } catch (Exception e2) {
            throw new JSONException(e2.getMessage(), e2);
        }
    }

    public int getFastMatchToken() {
        return 2;
    }
}
