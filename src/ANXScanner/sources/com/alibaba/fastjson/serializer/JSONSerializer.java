package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.IdentityHashMap;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.GZIPOutputStream;
import mtopsdk.network.util.Constants.Protocol;

public class JSONSerializer extends SerializeFilterable {
    protected final SerializeConfig config;
    protected SerialContext context;
    private DateFormat dateFormat;
    private String dateFormatPattern;
    private String indent;
    private int indentCount;
    protected Locale locale;
    public final SerializeWriter out;
    protected IdentityHashMap<Object, SerialContext> references;
    protected TimeZone timeZone;

    public JSONSerializer() {
        this(new SerializeWriter(), SerializeConfig.getGlobalInstance());
    }

    public JSONSerializer(SerializeWriter out) {
        this(out, SerializeConfig.getGlobalInstance());
    }

    public JSONSerializer(SerializeConfig config) {
        this(new SerializeWriter(), config);
    }

    public JSONSerializer(SerializeWriter out, SerializeConfig config) {
        this.indentCount = 0;
        this.indent = "\t";
        this.references = null;
        this.timeZone = JSON.defaultTimeZone;
        this.locale = JSON.defaultLocale;
        this.out = out;
        this.config = config;
    }

    public String getDateFormatPattern() {
        if (this.dateFormat instanceof SimpleDateFormat) {
            return ((SimpleDateFormat) this.dateFormat).toPattern();
        }
        return this.dateFormatPattern;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat == null && this.dateFormatPattern != null) {
            this.dateFormat = new SimpleDateFormat(this.dateFormatPattern, this.locale);
            this.dateFormat.setTimeZone(this.timeZone);
        }
        return this.dateFormat;
    }

    public void setDateFormat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
        if (this.dateFormatPattern != null) {
            this.dateFormatPattern = null;
        }
    }

    public void setDateFormat(String dateFormat) {
        this.dateFormatPattern = dateFormat;
        if (this.dateFormat != null) {
            this.dateFormat = null;
        }
    }

    public SerialContext getContext() {
        return this.context;
    }

    public void setContext(SerialContext context) {
        this.context = context;
    }

    public void setContext(SerialContext parent, Object object, Object fieldName, int features) {
        setContext(parent, object, fieldName, features, 0);
    }

    public void setContext(SerialContext parent, Object object, Object fieldName, int features, int fieldFeatures) {
        if (!this.out.disableCircularReferenceDetect) {
            this.context = new SerialContext(parent, object, fieldName, features, fieldFeatures);
            if (this.references == null) {
                this.references = new IdentityHashMap();
            }
            this.references.put(object, this.context);
        }
    }

    public void setContext(Object object, Object fieldName) {
        setContext(this.context, object, fieldName, 0);
    }

    public void popContext() {
        if (this.context != null) {
            this.context = this.context.parent;
        }
    }

    public final boolean isWriteClassName(Type fieldType, Object obj) {
        return this.out.isEnabled(SerializerFeature.WriteClassName) && !(fieldType == null && this.out.isEnabled(SerializerFeature.NotWriteRootClassName) && this.context.parent == null);
    }

    public boolean containsReference(Object value) {
        if (this.references == null) {
            return false;
        }
        SerialContext refContext = (SerialContext) this.references.get(value);
        if (refContext == null) {
            return false;
        }
        Object fieldName = refContext.fieldName;
        if (fieldName == null || (fieldName instanceof Integer) || (fieldName instanceof String)) {
            return true;
        }
        return false;
    }

    public void writeReference(Object object) {
        SerialContext context = this.context;
        if (object == context.object) {
            this.out.write("{\"$ref\":\"@\"}");
            return;
        }
        SerialContext parentContext = context.parent;
        if (parentContext == null || object != parentContext.object) {
            SerialContext rootContext = context;
            while (rootContext.parent != null) {
                rootContext = rootContext.parent;
            }
            if (object == rootContext.object) {
                this.out.write("{\"$ref\":\"$\"}");
                return;
            }
            this.out.write("{\"$ref\":\"");
            this.out.write(((SerialContext) this.references.get(object)).toString());
            this.out.write("\"}");
            return;
        }
        this.out.write("{\"$ref\":\"..\"}");
    }

    public boolean checkValue(SerializeFilterable filterable) {
        return (this.valueFilters != null && this.valueFilters.size() > 0) || ((this.contextValueFilters != null && this.contextValueFilters.size() > 0) || ((filterable.valueFilters != null && filterable.valueFilters.size() > 0) || ((filterable.contextValueFilters != null && filterable.contextValueFilters.size() > 0) || this.out.writeNonStringValueAsString)));
    }

    public boolean hasNameFilters(SerializeFilterable filterable) {
        return (this.nameFilters != null && this.nameFilters.size() > 0) || (filterable.nameFilters != null && filterable.nameFilters.size() > 0);
    }

    public int getIndentCount() {
        return this.indentCount;
    }

    public void incrementIndent() {
        this.indentCount++;
    }

    public void decrementIdent() {
        this.indentCount--;
    }

    public void println() {
        this.out.write(10);
        for (int i = 0; i < this.indentCount; i++) {
            this.out.write(this.indent);
        }
    }

    public SerializeWriter getWriter() {
        return this.out;
    }

    public String toString() {
        return this.out.toString();
    }

    public void config(SerializerFeature feature, boolean state) {
        this.out.config(feature, state);
    }

    public boolean isEnabled(SerializerFeature feature) {
        return this.out.isEnabled(feature);
    }

    public void writeNull() {
        this.out.writeNull();
    }

    public SerializeConfig getMapping() {
        return this.config;
    }

    public static void write(Writer out, Object object) {
        SerializeWriter writer = new SerializeWriter();
        try {
            new JSONSerializer(writer).write(object);
            writer.writeTo(out);
            writer.close();
        } catch (IOException ex) {
            throw new JSONException(ex.getMessage(), ex);
        } catch (Throwable th) {
            writer.close();
        }
    }

    public static void write(SerializeWriter out, Object object) {
        new JSONSerializer(out).write(object);
    }

    public final void write(Object object) {
        if (object == null) {
            this.out.writeNull();
            return;
        }
        try {
            getObjectWriter(object.getClass()).write(this, object, null, null, 0);
        } catch (IOException e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    public final void writeWithFieldName(Object object, Object fieldName) {
        writeWithFieldName(object, fieldName, null, 0);
    }

    protected final void writeKeyValue(char seperator, String key, Object value) {
        if (seperator != 0) {
            this.out.write((int) seperator);
        }
        this.out.writeFieldName(key);
        write(value);
    }

    public final void writeWithFieldName(Object object, Object fieldName, Type fieldType, int fieldFeatures) {
        if (object == null) {
            try {
                this.out.writeNull();
                return;
            } catch (IOException e) {
                throw new JSONException(e.getMessage(), e);
            }
        }
        getObjectWriter(object.getClass()).write(this, object, fieldName, fieldType, fieldFeatures);
    }

    public final void writeWithFormat(Object object, String format) {
        if (object instanceof Date) {
            DateFormat dateFormat = getDateFormat();
            if (dateFormat == null) {
                dateFormat = new SimpleDateFormat(format, this.locale);
                dateFormat.setTimeZone(this.timeZone);
            }
            this.out.writeString(dateFormat.format((Date) object));
        } else if (object instanceof byte[]) {
            byte[] bytes = (byte[]) object;
            if (Protocol.GZIP.equals(format) || "gzip,base64".equals(format)) {
                try {
                    GZIPOutputStream gzipOut;
                    ByteArrayOutputStream byteOut = new ByteArrayOutputStream();
                    if (bytes.length < 512) {
                        gzipOut = new GZIPOutputStream(byteOut, bytes.length);
                    } else {
                        gzipOut = new GZIPOutputStream(byteOut);
                    }
                    gzipOut.write(bytes);
                    gzipOut.finish();
                    this.out.writeByteArray(byteOut.toByteArray());
                    IOUtils.close(gzipOut);
                } catch (IOException ex) {
                    throw new JSONException("write gzipBytes error", ex);
                } catch (Throwable th) {
                    IOUtils.close(null);
                }
            } else if ("hex".equals(format)) {
                this.out.writeHex(bytes);
            } else {
                this.out.writeByteArray(bytes);
            }
        } else {
            write(object);
        }
    }

    public final void write(String text) {
        StringCodec.instance.write(this, text);
    }

    public ObjectSerializer getObjectWriter(Class<?> clazz) {
        return this.config.getObjectWriter(clazz);
    }

    public void close() {
        this.out.close();
    }
}
