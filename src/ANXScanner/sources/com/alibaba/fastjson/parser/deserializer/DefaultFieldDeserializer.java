package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.FieldInfo;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import mtopsdk.network.util.Constants.Protocol;

public class DefaultFieldDeserializer extends FieldDeserializer {
    protected ObjectDeserializer fieldValueDeserilizer;

    public DefaultFieldDeserializer(ParserConfig mapping, Class<?> clazz, FieldInfo fieldInfo) {
        super(clazz, fieldInfo);
    }

    public ObjectDeserializer getFieldValueDeserilizer(ParserConfig config) {
        if (this.fieldValueDeserilizer == null) {
            JSONField annotation = this.fieldInfo.getAnnotation();
            if (annotation == null || annotation.deserializeUsing() == Void.class) {
                this.fieldValueDeserilizer = config.getDeserializer(this.fieldInfo.fieldClass, this.fieldInfo.fieldType);
            } else {
                try {
                    this.fieldValueDeserilizer = (ObjectDeserializer) annotation.deserializeUsing().newInstance();
                } catch (Exception ex) {
                    throw new JSONException("create deserializeUsing ObjectDeserializer error", ex);
                }
            }
        }
        return this.fieldValueDeserilizer;
    }

    public void parseField(DefaultJSONParser parser, Object object, Type objectType, Map<String, Object> fieldValues) {
        Object deserialze;
        IOException ex;
        if (this.fieldValueDeserilizer == null) {
            getFieldValueDeserilizer(parser.getConfig());
        }
        ObjectDeserializer fieldValueDeserilizer = this.fieldValueDeserilizer;
        Type fieldType = this.fieldInfo.fieldType;
        if (objectType instanceof ParameterizedType) {
            ParseContext objContext = parser.getContext();
            if (objContext != null) {
                objContext.type = objectType;
            }
            if (fieldType != objectType) {
                fieldType = FieldInfo.getFieldType(this.clazz, objectType, fieldType);
                fieldValueDeserilizer = parser.getConfig().getDeserializer(fieldType);
            }
        }
        if ((fieldValueDeserilizer instanceof JavaBeanDeserializer) && this.fieldInfo.parserFeatures != 0) {
            deserialze = ((JavaBeanDeserializer) fieldValueDeserilizer).deserialze(parser, fieldType, this.fieldInfo.name, this.fieldInfo.parserFeatures);
        } else if (this.fieldInfo.format == null || !(fieldValueDeserilizer instanceof ContextObjectDeserializer)) {
            deserialze = fieldValueDeserilizer.deserialze(parser, fieldType, this.fieldInfo.name);
        } else {
            deserialze = ((ContextObjectDeserializer) fieldValueDeserilizer).deserialze(parser, fieldType, this.fieldInfo.name, this.fieldInfo.format, this.fieldInfo.parserFeatures);
        }
        if ((deserialze instanceof byte[]) && (Protocol.GZIP.equals(this.fieldInfo.format) || "gzip,base64".equals(this.fieldInfo.format))) {
            try {
                GZIPInputStream gzipIn = new GZIPInputStream(new ByteArrayInputStream((byte[]) deserialze));
                try {
                    ByteArrayOutputStream byteOut = new ByteArrayOutputStream();
                    while (true) {
                        byte[] buf = new byte[1024];
                        int len = gzipIn.read(buf);
                        if (len == -1) {
                            deserialze = byteOut.toByteArray();
                            break;
                        } else if (len > 0) {
                            byteOut.write(buf, 0, len);
                        }
                    }
                } catch (IOException e) {
                    ex = e;
                    GZIPInputStream gZIPInputStream = gzipIn;
                }
            } catch (IOException e2) {
                ex = e2;
                throw new JSONException("unzip bytes error.", ex);
            }
        }
        if (parser.getResolveStatus() == 1) {
            ResolveTask task = parser.getLastResolveTask();
            task.fieldDeserializer = this;
            task.ownerContext = parser.getContext();
            parser.setResolveStatus(0);
        } else if (object == null) {
            fieldValues.put(this.fieldInfo.name, deserialze);
        } else {
            setValue(object, deserialze);
        }
    }

    public int getFastMatchToken() {
        if (this.fieldValueDeserilizer != null) {
            return this.fieldValueDeserilizer.getFastMatchToken();
        }
        return 2;
    }

    public void parseFieldUnwrapped(DefaultJSONParser parser, Object object, Type objectType, Map<String, Object> map) {
        throw new JSONException("TODO");
    }
}
