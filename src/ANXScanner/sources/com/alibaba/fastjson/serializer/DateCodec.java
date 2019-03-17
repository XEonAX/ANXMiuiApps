package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONScanner;
import com.alibaba.fastjson.parser.deserializer.AbstractDateDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.fastjson.util.TypeUtils;
import com.alibaba.wireless.security.SecExceptionCode;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

public class DateCodec extends AbstractDateDeserializer implements ObjectSerializer, ObjectDeserializer {
    public static final DateCodec instance = new DateCodec();

    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType, int features) throws IOException {
        SerializeWriter out = serializer.out;
        if (object == null) {
            out.writeNull();
            return;
        }
        Date date;
        if (object instanceof Date) {
            date = (Date) object;
        } else {
            date = TypeUtils.castToDate(object);
        }
        if (out.isEnabled(SerializerFeature.WriteDateUseDateFormat)) {
            DateFormat format = serializer.getDateFormat();
            if (format == null) {
                format = new SimpleDateFormat(JSON.DEFFAULT_DATE_FORMAT, serializer.locale);
                format.setTimeZone(serializer.timeZone);
            }
            out.writeString(format.format(date));
        } else if (!out.isEnabled(SerializerFeature.WriteClassName) || object.getClass() == fieldType) {
            long time = date.getTime();
            if (out.isEnabled(SerializerFeature.UseISO8601DateFormat)) {
                char[] buf;
                int quote = out.isEnabled(SerializerFeature.UseSingleQuotes) ? '\'' : '\"';
                out.write(quote);
                Calendar calendar = Calendar.getInstance(serializer.timeZone, serializer.locale);
                calendar.setTimeInMillis(time);
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
                    out.write(90);
                } else {
                    if (timeZone > 0) {
                        out.append('+').append(String.format("%02d", new Object[]{Integer.valueOf(timeZone)}));
                    } else {
                        out.append('-').append(String.format("%02d", new Object[]{Integer.valueOf(-timeZone)}));
                    }
                    out.append((CharSequence) ":00");
                }
                out.write(quote);
                return;
            }
            out.writeLong(time);
        } else if (object.getClass() == Date.class) {
            out.write("new Date(");
            out.writeLong(((Date) object).getTime());
            out.write(41);
        } else {
            out.write(SecExceptionCode.SEC_ERROR_INIT_INCORRECT_DATA_FILE);
            out.writeFieldName(JSON.DEFAULT_TYPE_KEY);
            serializer.write(object.getClass().getName());
            out.writeFieldValue(',', "val", ((Date) object).getTime());
            out.write(SecExceptionCode.SEC_ERROR_INIT_PARSE_USER_CONFIG_ERROR);
        }
    }

    protected <T> T cast(DefaultJSONParser parser, Type clazz, Object fieldName, Object val) {
        if (val == null) {
            return null;
        }
        if (val instanceof Date) {
            return val;
        }
        if (val instanceof Number) {
            return new Date(((Number) val).longValue());
        }
        if (val instanceof String) {
            String strVal = (String) val;
            if (strVal.length() == 0) {
                return null;
            }
            JSONScanner dateLexer = new JSONScanner(strVal);
            try {
                T calendar;
                if (dateLexer.scanISO8601DateIfMatch(false)) {
                    calendar = dateLexer.getCalendar();
                    if (clazz == Calendar.class) {
                        return calendar;
                    }
                    calendar = calendar.getTime();
                    dateLexer.close();
                    return calendar;
                }
                dateLexer.close();
                if (strVal.length() == parser.getDateFomartPattern().length()) {
                    try {
                        return parser.getDateFormat().parse(strVal);
                    } catch (ParseException e) {
                    }
                }
                if (strVal.startsWith("/Date(") && strVal.endsWith(")/")) {
                    strVal = strVal.substring(6, strVal.length() - 2);
                }
                if ("0000-00-00".equals(strVal) || "0000-00-00T00:00:00".equalsIgnoreCase(strVal) || "0001-01-01T00:00:00+08:00".equalsIgnoreCase(strVal)) {
                    return null;
                }
                int index = strVal.lastIndexOf(SecExceptionCode.SEC_ERROR_INIT_LOW_VERSION_DATA);
                if (index > 20) {
                    TimeZone timeZone = TimeZone.getTimeZone(strVal.substring(index + 1));
                    if (!"GMT".equals(timeZone.getID())) {
                        dateLexer = new JSONScanner(strVal.substring(0, index));
                        try {
                            if (dateLexer.scanISO8601DateIfMatch(false)) {
                                calendar = dateLexer.getCalendar();
                                calendar.setTimeZone(timeZone);
                                if (clazz == Calendar.class) {
                                    return calendar;
                                }
                                calendar = calendar.getTime();
                                dateLexer.close();
                                return calendar;
                            }
                            dateLexer.close();
                        } finally {
                            dateLexer.close();
                        }
                    }
                }
                return new Date(Long.parseLong(strVal));
            } finally {
                dateLexer.close();
            }
        } else {
            throw new JSONException("parse error");
        }
    }

    public int getFastMatchToken() {
        return 2;
    }
}
