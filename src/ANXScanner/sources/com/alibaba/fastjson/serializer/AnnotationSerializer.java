package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Map.Entry;
import sun.reflect.annotation.AnnotationType;

public class AnnotationSerializer implements ObjectSerializer {
    public static AnnotationSerializer instance = new AnnotationSerializer();

    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
        Class[] interfaces = object.getClass().getInterfaces();
        if (interfaces.length == 1 && interfaces[0].isAnnotation()) {
            Map<String, Method> members = AnnotationType.getInstance(interfaces[0]).members();
            Object json = new JSONObject(members.size());
            Object obj = null;
            for (Entry<String, Method> entry : members.entrySet()) {
                try {
                    obj = ((Method) entry.getValue()).invoke(object, new Object[0]);
                } catch (IllegalAccessException e) {
                } catch (InvocationTargetException e2) {
                }
                json.put((String) entry.getKey(), JSON.toJSON(obj));
            }
            serializer.write(json);
        }
    }
}
