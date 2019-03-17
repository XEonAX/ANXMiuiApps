package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONPObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexerBase;
import java.lang.reflect.Type;
import mtopsdk.common.util.SymbolExpUtil;

public class JSONPDeserializer implements ObjectDeserializer {
    public static final JSONPDeserializer instance = new JSONPDeserializer();

    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        JSONLexerBase lexer = (JSONLexerBase) parser.getLexer();
        String funcName = lexer.scanSymbolUnQuoted(parser.getSymbolTable());
        lexer.nextToken();
        int tok = lexer.token();
        if (tok == 25) {
            funcName = (funcName + SymbolExpUtil.SYMBOL_DOT) + lexer.scanSymbolUnQuoted(parser.getSymbolTable());
            lexer.nextToken();
            tok = lexer.token();
        }
        JSONPObject jsonp = new JSONPObject(funcName);
        if (tok != 10) {
            throw new JSONException("illegal jsonp : " + lexer.info());
        }
        lexer.nextToken();
        while (true) {
            jsonp.addParameter(parser.parse());
            tok = lexer.token();
            if (tok != 16) {
                break;
            }
            lexer.nextToken();
        }
        if (tok == 11) {
            lexer.nextToken();
            if (lexer.token() == 24) {
                lexer.nextToken();
            }
            return jsonp;
        }
        throw new JSONException("illegal jsonp : " + lexer.info());
    }

    public int getFastMatchToken() {
        return 0;
    }
}
