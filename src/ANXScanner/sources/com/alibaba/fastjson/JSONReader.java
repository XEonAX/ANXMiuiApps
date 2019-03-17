package com.alibaba.fastjson;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONReaderScanner;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.Closeable;
import java.io.Reader;
import java.lang.reflect.Type;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public class JSONReader implements Closeable {
    private JSONStreamContext context;
    private final DefaultJSONParser parser;

    public JSONReader(Reader reader) {
        this(reader, new Feature[0]);
    }

    public JSONReader(Reader reader, Feature... features) {
        this(new JSONReaderScanner(reader));
        for (Feature feature : features) {
            config(feature, true);
        }
    }

    public JSONReader(JSONLexer lexer) {
        this(new DefaultJSONParser(lexer));
    }

    public JSONReader(DefaultJSONParser parser) {
        this.parser = parser;
    }

    public void setTimzeZone(TimeZone timezone) {
        this.parser.lexer.setTimeZone(timezone);
    }

    public void setLocale(Locale locale) {
        this.parser.lexer.setLocale(locale);
    }

    public void config(Feature feature, boolean state) {
        this.parser.config(feature, state);
    }

    public Locale getLocal() {
        return this.parser.lexer.getLocale();
    }

    public TimeZone getTimzeZone() {
        return this.parser.lexer.getTimeZone();
    }

    public void startObject() {
        if (this.context == null) {
            this.context = new JSONStreamContext(null, 1001);
        } else {
            startStructure();
            this.context = new JSONStreamContext(this.context, 1001);
        }
        this.parser.accept(12, 18);
    }

    public void endObject() {
        this.parser.accept(13);
        endStructure();
    }

    public void startArray() {
        if (this.context == null) {
            this.context = new JSONStreamContext(null, 1004);
        } else {
            startStructure();
            this.context = new JSONStreamContext(this.context, 1004);
        }
        this.parser.accept(14);
    }

    public void endArray() {
        this.parser.accept(15);
        endStructure();
    }

    private void startStructure() {
        switch (this.context.state) {
            case 1001:
            case 1004:
                return;
            case 1002:
                this.parser.accept(17);
                return;
            case 1003:
            case 1005:
                this.parser.accept(16);
                return;
            default:
                throw new JSONException("illegal state : " + this.context.state);
        }
    }

    private void endStructure() {
        this.context = this.context.parent;
        if (this.context != null) {
            int newState = -1;
            switch (this.context.state) {
                case 1001:
                case 1003:
                    newState = 1002;
                    break;
                case 1002:
                    newState = 1003;
                    break;
                case 1004:
                    newState = 1005;
                    break;
            }
            if (newState != -1) {
                this.context.state = newState;
            }
        }
    }

    public boolean hasNext() {
        if (this.context == null) {
            throw new JSONException("context is null");
        }
        int token = this.parser.lexer.token();
        int state = this.context.state;
        switch (state) {
            case 1001:
            case 1003:
                if (token == 13) {
                    return false;
                }
                return true;
            case 1004:
            case 1005:
                if (token != 15) {
                    return true;
                }
                return false;
            default:
                throw new JSONException("illegal state : " + state);
        }
    }

    public int peek() {
        return this.parser.lexer.token();
    }

    public void close() {
        this.parser.close();
    }

    public Integer readInteger() {
        Object object;
        if (this.context == null) {
            object = this.parser.parse();
        } else {
            readBefore();
            object = this.parser.parse();
            readAfter();
        }
        return TypeUtils.castToInt(object);
    }

    public Long readLong() {
        Object object;
        if (this.context == null) {
            object = this.parser.parse();
        } else {
            readBefore();
            object = this.parser.parse();
            readAfter();
        }
        return TypeUtils.castToLong(object);
    }

    public String readString() {
        Object object;
        if (this.context == null) {
            object = this.parser.parse();
        } else {
            readBefore();
            JSONLexer lexer = this.parser.lexer;
            if (this.context.state == 1001 && lexer.token() == 18) {
                object = lexer.stringVal();
                lexer.nextToken();
            } else {
                object = this.parser.parse();
            }
            readAfter();
        }
        return TypeUtils.castToString(object);
    }

    public <T> T readObject(TypeReference<T> typeRef) {
        return readObject(typeRef.getType());
    }

    public <T> T readObject(Type type) {
        if (this.context == null) {
            return this.parser.parseObject(type);
        }
        readBefore();
        T object = this.parser.parseObject(type);
        readAfter();
        return object;
    }

    public <T> T readObject(Class<T> type) {
        if (this.context == null) {
            return this.parser.parseObject((Class) type);
        }
        readBefore();
        T object = this.parser.parseObject((Class) type);
        readAfter();
        return object;
    }

    public void readObject(Object object) {
        if (this.context == null) {
            this.parser.parseObject(object);
            return;
        }
        readBefore();
        this.parser.parseObject(object);
        readAfter();
    }

    public Object readObject() {
        if (this.context == null) {
            return this.parser.parse();
        }
        Object object;
        readBefore();
        switch (this.context.state) {
            case 1001:
            case 1003:
                object = this.parser.parseKey();
                break;
            default:
                object = this.parser.parse();
                break;
        }
        readAfter();
        return object;
    }

    public Object readObject(Map object) {
        if (this.context == null) {
            return this.parser.parseObject(object);
        }
        readBefore();
        Object value = this.parser.parseObject(object);
        readAfter();
        return value;
    }

    private void readBefore() {
        int state = this.context.state;
        switch (state) {
            case 1001:
            case 1004:
                return;
            case 1002:
                this.parser.accept(17);
                return;
            case 1003:
                this.parser.accept(16, 18);
                return;
            case 1005:
                this.parser.accept(16);
                return;
            default:
                throw new JSONException("illegal state : " + state);
        }
    }

    private void readAfter() {
        int state = this.context.state;
        int newStat = -1;
        switch (state) {
            case 1001:
                newStat = 1002;
                break;
            case 1002:
                newStat = 1003;
                break;
            case 1003:
                newStat = 1002;
                break;
            case 1004:
                newStat = 1005;
                break;
            case 1005:
                break;
            default:
                throw new JSONException("illegal state : " + state);
        }
        if (newStat != -1) {
            this.context.state = newStat;
        }
    }
}
