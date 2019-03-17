package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import mtopsdk.common.util.SymbolExpUtil;

public class FieldSerializer implements Comparable<FieldSerializer> {
    protected boolean disableCircularReferenceDetect = false;
    private final String double_quoted_fieldPrefix;
    protected int features;
    protected BeanContext fieldContext;
    public final FieldInfo fieldInfo;
    private String format;
    protected boolean persistenceOneToMany = false;
    private RuntimeSerializerInfo runtimeInfo;
    protected boolean serializeUsing = false;
    private String single_quoted_fieldPrefix;
    private String un_quoted_fieldPrefix;
    protected boolean writeEnumUsingName = false;
    protected boolean writeEnumUsingToString = false;
    protected final boolean writeNull;

    static class RuntimeSerializerInfo {
        final ObjectSerializer fieldSerializer;
        final Class<?> runtimeFieldClass;

        public RuntimeSerializerInfo(ObjectSerializer fieldSerializer, Class<?> runtimeFieldClass) {
            this.fieldSerializer = fieldSerializer;
            this.runtimeFieldClass = runtimeFieldClass;
        }
    }

    public FieldSerializer(Class<?> beanType, FieldInfo fieldInfo) {
        SerializerFeature feature;
        int i = 0;
        this.fieldInfo = fieldInfo;
        this.fieldContext = new BeanContext(beanType, fieldInfo);
        if (beanType != null && fieldInfo.isEnum) {
            JSONType jsonType = (JSONType) beanType.getAnnotation(JSONType.class);
            if (jsonType != null) {
                for (SerializerFeature feature2 : jsonType.serialzeFeatures()) {
                    if (feature2 == SerializerFeature.WriteEnumUsingToString) {
                        this.writeEnumUsingToString = true;
                    } else if (feature2 == SerializerFeature.WriteEnumUsingName) {
                        this.writeEnumUsingName = true;
                    } else if (feature2 == SerializerFeature.DisableCircularReferenceDetect) {
                        this.disableCircularReferenceDetect = true;
                    }
                }
            }
        }
        fieldInfo.setAccessible();
        this.double_quoted_fieldPrefix = '\"' + fieldInfo.name + "\":";
        boolean writeNull = false;
        JSONField annotation = fieldInfo.getAnnotation();
        if (annotation != null) {
            for (SerializerFeature feature22 : annotation.serialzeFeatures()) {
                if ((feature22.getMask() & SerializerFeature.WRITE_MAP_NULL_FEATURES) != 0) {
                    writeNull = true;
                    break;
                }
            }
            this.format = annotation.format();
            if (this.format.trim().length() == 0) {
                this.format = null;
            }
            SerializerFeature[] serialzeFeatures = annotation.serialzeFeatures();
            int length = serialzeFeatures.length;
            while (i < length) {
                feature22 = serialzeFeatures[i];
                if (feature22 == SerializerFeature.WriteEnumUsingToString) {
                    this.writeEnumUsingToString = true;
                } else if (feature22 == SerializerFeature.WriteEnumUsingName) {
                    this.writeEnumUsingName = true;
                } else if (feature22 == SerializerFeature.DisableCircularReferenceDetect) {
                    this.disableCircularReferenceDetect = true;
                }
                i++;
            }
            this.features = SerializerFeature.of(annotation.serialzeFeatures());
        }
        this.writeNull = writeNull;
        this.persistenceOneToMany = TypeUtils.isAnnotationPresentOneToMany(fieldInfo.method);
    }

    public void writePrefix(JSONSerializer serializer) throws IOException {
        SerializeWriter out = serializer.out;
        if (!out.quoteFieldNames) {
            if (this.un_quoted_fieldPrefix == null) {
                this.un_quoted_fieldPrefix = this.fieldInfo.name + SymbolExpUtil.SYMBOL_COLON;
            }
            out.write(this.un_quoted_fieldPrefix);
        } else if (out.useSingleQuotes) {
            if (this.single_quoted_fieldPrefix == null) {
                this.single_quoted_fieldPrefix = '\'' + this.fieldInfo.name + "':";
            }
            out.write(this.single_quoted_fieldPrefix);
        } else {
            out.write(this.double_quoted_fieldPrefix);
        }
    }

    public Object getPropertyValueDirect(Object object) throws InvocationTargetException, IllegalAccessException {
        Object fieldValue = this.fieldInfo.get(object);
        if (this.persistenceOneToMany && TypeUtils.isHibernateInitialized(fieldValue)) {
            return null;
        }
        return fieldValue;
    }

    public Object getPropertyValue(Object object) throws InvocationTargetException, IllegalAccessException {
        Object propertyValue = this.fieldInfo.get(object);
        if (this.format == null || propertyValue == null || this.fieldInfo.fieldClass != Date.class) {
            return propertyValue;
        }
        SimpleDateFormat dateFormat = new SimpleDateFormat(this.format);
        dateFormat.setTimeZone(JSON.defaultTimeZone);
        return dateFormat.format(propertyValue);
    }

    public int compareTo(FieldSerializer o) {
        return this.fieldInfo.compareTo(o.fieldInfo);
    }

    public void writeValue(JSONSerializer serializer, Object propertyValue) throws Exception {
        Class<?> runtimeFieldClass;
        ObjectSerializer fieldSerializer;
        if (this.runtimeInfo == null) {
            if (propertyValue == null) {
                runtimeFieldClass = this.fieldInfo.fieldClass;
            } else {
                runtimeFieldClass = propertyValue.getClass();
            }
            fieldSerializer = null;
            JSONField fieldAnnotation = this.fieldInfo.getAnnotation();
            if (fieldAnnotation == null || fieldAnnotation.serializeUsing() == Void.class) {
                if (this.format != null) {
                    if (runtimeFieldClass == Double.TYPE || runtimeFieldClass == Double.class) {
                        fieldSerializer = new DoubleSerializer(this.format);
                    } else if (runtimeFieldClass == Float.TYPE || runtimeFieldClass == Float.class) {
                        fieldSerializer = new FloatCodec(this.format);
                    }
                }
                if (fieldSerializer == null) {
                    fieldSerializer = serializer.getObjectWriter(runtimeFieldClass);
                }
            } else {
                fieldSerializer = (ObjectSerializer) fieldAnnotation.serializeUsing().newInstance();
                this.serializeUsing = true;
            }
            this.runtimeInfo = new RuntimeSerializerInfo(fieldSerializer, runtimeFieldClass);
        }
        RuntimeSerializerInfo runtimeInfo = this.runtimeInfo;
        int fieldFeatures = this.disableCircularReferenceDetect ? this.fieldInfo.serialzeFeatures | SerializerFeature.DisableCircularReferenceDetect.getMask() : this.fieldInfo.serialzeFeatures;
        if (propertyValue == null) {
            runtimeFieldClass = runtimeInfo.runtimeFieldClass;
            SerializeWriter out = serializer.out;
            if (Number.class.isAssignableFrom(runtimeFieldClass)) {
                out.writeNull(this.features, SerializerFeature.WriteNullNumberAsZero.mask);
                return;
            } else if (String.class == runtimeFieldClass) {
                out.writeNull(this.features, SerializerFeature.WriteNullStringAsEmpty.mask);
                return;
            } else if (Boolean.class == runtimeFieldClass) {
                out.writeNull(this.features, SerializerFeature.WriteNullBooleanAsFalse.mask);
                return;
            } else if (Collection.class.isAssignableFrom(runtimeFieldClass)) {
                out.writeNull(this.features, SerializerFeature.WriteNullListAsEmpty.mask);
                return;
            } else {
                fieldSerializer = runtimeInfo.fieldSerializer;
                if (out.isEnabled(SerializerFeature.WRITE_MAP_NULL_FEATURES) && (fieldSerializer instanceof JavaBeanSerializer)) {
                    out.writeNull();
                    return;
                } else {
                    fieldSerializer.write(serializer, null, this.fieldInfo.name, this.fieldInfo.fieldType, fieldFeatures);
                    return;
                }
            }
        }
        ObjectSerializer valueSerializer;
        if (this.fieldInfo.isEnum) {
            if (this.writeEnumUsingName) {
                serializer.out.writeString(((Enum) propertyValue).name());
                return;
            } else if (this.writeEnumUsingToString) {
                serializer.out.writeString(((Enum) propertyValue).toString());
                return;
            }
        }
        Class<?> valueClass = propertyValue.getClass();
        if (valueClass == runtimeInfo.runtimeFieldClass || this.serializeUsing) {
            valueSerializer = runtimeInfo.fieldSerializer;
        } else {
            valueSerializer = serializer.getObjectWriter(valueClass);
        }
        if (this.format == null || (valueSerializer instanceof DoubleSerializer) || (valueSerializer instanceof FloatCodec)) {
            if (this.fieldInfo.unwrapped) {
                if (valueSerializer instanceof JavaBeanSerializer) {
                    ((JavaBeanSerializer) valueSerializer).write(serializer, propertyValue, this.fieldInfo.name, this.fieldInfo.fieldType, fieldFeatures, true);
                    return;
                } else if (valueSerializer instanceof MapSerializer) {
                    ((MapSerializer) valueSerializer).write(serializer, propertyValue, this.fieldInfo.name, this.fieldInfo.fieldType, fieldFeatures, true);
                    return;
                }
            }
            if ((this.features & SerializerFeature.WriteClassName.mask) == 0 || valueClass == this.fieldInfo.fieldClass || !JavaBeanSerializer.class.isInstance(valueSerializer)) {
                valueSerializer.write(serializer, propertyValue, this.fieldInfo.name, this.fieldInfo.fieldType, fieldFeatures);
            } else {
                ((JavaBeanSerializer) valueSerializer).write(serializer, propertyValue, this.fieldInfo.name, this.fieldInfo.fieldType, fieldFeatures, false);
            }
        } else if (valueSerializer instanceof ContextObjectSerializer) {
            ((ContextObjectSerializer) valueSerializer).write(serializer, propertyValue, this.fieldContext);
        } else {
            serializer.writeWithFormat(propertyValue, this.format);
        }
    }
}
