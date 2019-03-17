package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.Date;

public class SimpleDateFormatSerializer implements ObjectSerializer {
    private final String pattern;

    public SimpleDateFormatSerializer(String pattern) {
        this.pattern = pattern;
    }

    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
        if (object == null) {
            serializer.out.writeNull();
            return;
        }
        Date date = (Date) object;
        SimpleDateFormat format = new SimpleDateFormat(this.pattern, serializer.locale);
        format.setTimeZone(serializer.timeZone);
        serializer.write(format.format(date));
    }
}
