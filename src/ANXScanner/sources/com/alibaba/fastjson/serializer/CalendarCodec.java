package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.IOUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

public class CalendarCodec implements ObjectSerializer, ObjectDeserializer {
    public static final CalendarCodec instance = new CalendarCodec();
    private DatatypeFactory dateFactory;

    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
        SerializeWriter out = serializer.out;
        if (object == null) {
            out.writeNull();
            return;
        }
        Calendar calendar;
        if (object instanceof XMLGregorianCalendar) {
            calendar = ((XMLGregorianCalendar) object).toGregorianCalendar();
        } else {
            calendar = (Calendar) object;
        }
        if (out.isEnabled(SerializerFeature.UseISO8601DateFormat)) {
            char[] buf;
            char quote = out.isEnabled(SerializerFeature.UseSingleQuotes) ? '\'' : '\"';
            out.append(quote);
            int year = calendar.get(1);
            int month = calendar.get(2) + 1;
            int day = calendar.get(5);
            int hour = calendar.get(11);
            int minute = calendar.get(12);
            int second = calendar.get(13);
            int millis = calendar.get(14);
            if (millis != 0) {
                buf = "0000-00-00T00:00:00.000".toCharArray();
                IOUtils.getChars(millis, 23, buf);
                IOUtils.getChars(second, 19, buf);
                IOUtils.getChars(minute, 16, buf);
                IOUtils.getChars(hour, 13, buf);
                IOUtils.getChars(day, 10, buf);
                IOUtils.getChars(month, 7, buf);
                IOUtils.getChars(year, 4, buf);
            } else if (second == 0 && minute == 0 && hour == 0) {
                buf = "0000-00-00".toCharArray();
                IOUtils.getChars(day, 10, buf);
                IOUtils.getChars(month, 7, buf);
                IOUtils.getChars(year, 4, buf);
            } else {
                buf = "0000-00-00T00:00:00".toCharArray();
                IOUtils.getChars(second, 19, buf);
                IOUtils.getChars(minute, 16, buf);
                IOUtils.getChars(hour, 13, buf);
                IOUtils.getChars(day, 10, buf);
                IOUtils.getChars(month, 7, buf);
                IOUtils.getChars(year, 4, buf);
            }
            out.write(buf);
            int timeZone = calendar.getTimeZone().getRawOffset() / 3600000;
            if (timeZone == 0) {
                out.append((CharSequence) "Z");
            } else if (timeZone > 0) {
                out.append((CharSequence) "+").append(String.format("%02d", new Object[]{Integer.valueOf(timeZone)})).append((CharSequence) ":00");
            } else {
                out.append((CharSequence) "-").append(String.format("%02d", new Object[]{Integer.valueOf(-timeZone)})).append((CharSequence) ":00");
            }
            out.append(quote);
            return;
        }
        serializer.write(calendar.getTime());
    }

    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        Date value = DateCodec.instance.deserialze(parser, type, fieldName);
        if (value instanceof Calendar) {
            return value;
        }
        Date date = value;
        if (date == null) {
            return null;
        }
        JSONLexer lexer = parser.lexer;
        Calendar calendar = Calendar.getInstance(lexer.getTimeZone(), lexer.getLocale());
        calendar.setTime(date);
        return type == XMLGregorianCalendar.class ? createXMLGregorianCalendar((GregorianCalendar) calendar) : calendar;
    }

    public XMLGregorianCalendar createXMLGregorianCalendar(Calendar calendar) {
        if (this.dateFactory == null) {
            try {
                this.dateFactory = DatatypeFactory.newInstance();
            } catch (DatatypeConfigurationException e) {
                throw new IllegalStateException("Could not obtain an instance of DatatypeFactory.", e);
            }
        }
        return this.dateFactory.newXMLGregorianCalendar((GregorianCalendar) calendar);
    }

    public int getFastMatchToken() {
        return 2;
    }
}
