package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONScanner;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Date;

public class SqlDateDeserializer extends AbstractDateDeserializer implements ObjectDeserializer {
    public static final SqlDateDeserializer instance = new SqlDateDeserializer();
    public static final SqlDateDeserializer instance_timestamp = new SqlDateDeserializer(true);
    private boolean timestamp;

    public SqlDateDeserializer() {
        this.timestamp = false;
    }

    public SqlDateDeserializer(boolean timestmap) {
        this.timestamp = false;
        this.timestamp = true;
    }

    protected <T> T cast(DefaultJSONParser parser, Type clazz, Object fieldName, Object val) {
        if (this.timestamp) {
            return castTimestamp(parser, clazz, fieldName, val);
        }
        if (val == null) {
            return null;
        }
        T val2;
        if (val instanceof Date) {
            val2 = new java.sql.Date(((Date) val).getTime());
        } else if (val instanceof Number) {
            val2 = new java.sql.Date(((Number) val).longValue());
        } else if (val instanceof String) {
            String strVal = (String) val;
            if (strVal.length() == 0) {
                return null;
            }
            long longVal;
            JSONScanner dateLexer = new JSONScanner(strVal);
            try {
                if (dateLexer.scanISO8601DateIfMatch()) {
                    longVal = dateLexer.getCalendar().getTimeInMillis();
                } else {
                    T sqlDate = new java.sql.Date(parser.getDateFormat().parse(strVal).getTime());
                    dateLexer.close();
                    return sqlDate;
                }
            } catch (ParseException e) {
                longVal = Long.parseLong(strVal);
            } catch (Throwable th) {
                dateLexer.close();
            }
            dateLexer.close();
            return new java.sql.Date(longVal);
        } else {
            throw new JSONException("parse error : " + val);
        }
        return val2;
    }

    protected <T> T castTimestamp(DefaultJSONParser parser, Type clazz, Object fieldName, Object val) {
        if (val == null) {
            return null;
        }
        if (val instanceof Date) {
            return new Timestamp(((Date) val).getTime());
        }
        if (val instanceof Number) {
            return new Timestamp(((Number) val).longValue());
        }
        if (val instanceof String) {
            String strVal = (String) val;
            if (strVal.length() == 0) {
                return null;
            }
            long longVal;
            JSONScanner dateLexer = new JSONScanner(strVal);
            try {
                if (dateLexer.scanISO8601DateIfMatch()) {
                    longVal = dateLexer.getCalendar().getTimeInMillis();
                } else {
                    T sqlDate = new Timestamp(parser.getDateFormat().parse(strVal).getTime());
                    dateLexer.close();
                    return sqlDate;
                }
            } catch (ParseException e) {
                longVal = Long.parseLong(strVal);
            } catch (Throwable th) {
                dateLexer.close();
            }
            dateLexer.close();
            return new Timestamp(longVal);
        }
        throw new JSONException("parse error");
    }

    public int getFastMatchToken() {
        return 2;
    }
}
