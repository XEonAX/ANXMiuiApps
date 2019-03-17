package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.ParameterizedTypeImpl;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public class ArrayListTypeFieldDeserializer extends FieldDeserializer {
    private ObjectDeserializer deserializer;
    private int itemFastMatchToken;
    private final Type itemType;

    public ArrayListTypeFieldDeserializer(ParserConfig mapping, Class<?> clazz, FieldInfo fieldInfo) {
        super(clazz, fieldInfo);
        if (fieldInfo.fieldType instanceof ParameterizedType) {
            Type argType = ((ParameterizedType) fieldInfo.fieldType).getActualTypeArguments()[0];
            if (argType instanceof WildcardType) {
                Type[] upperBounds = ((WildcardType) argType).getUpperBounds();
                if (upperBounds.length == 1) {
                    argType = upperBounds[0];
                }
            }
            this.itemType = argType;
            return;
        }
        this.itemType = Object.class;
    }

    public int getFastMatchToken() {
        return 14;
    }

    public void parseField(DefaultJSONParser parser, Object object, Type objectType, Map<String, Object> fieldValues) {
        JSONLexer lexer = parser.lexer;
        int token = lexer.token();
        if (token == 8 || (token == 4 && lexer.stringVal().length() == 0)) {
            setValue(object, null);
            return;
        }
        ArrayList list = new ArrayList();
        ParseContext context = parser.getContext();
        parser.setContext(context, object, this.fieldInfo.name);
        parseArray(parser, objectType, list);
        parser.setContext(context);
        if (object == null) {
            fieldValues.put(this.fieldInfo.name, list);
        } else {
            setValue(object, (Object) list);
        }
    }

    public final void parseArray(DefaultJSONParser parser, Type objectType, Collection array) {
        int i;
        Type itemType = this.itemType;
        ObjectDeserializer itemTypeDeser = this.deserializer;
        if (objectType instanceof ParameterizedType) {
            TypeVariable typeVar;
            ParameterizedType paramType;
            Class<?> objectClass;
            int paramIndex;
            int size;
            if (itemType instanceof TypeVariable) {
                typeVar = (TypeVariable) itemType;
                paramType = (ParameterizedType) objectType;
                objectClass = null;
                if (paramType.getRawType() instanceof Class) {
                    objectClass = (Class) paramType.getRawType();
                }
                paramIndex = -1;
                if (objectClass != null) {
                    size = objectClass.getTypeParameters().length;
                    for (i = 0; i < size; i++) {
                        if (objectClass.getTypeParameters()[i].getName().equals(typeVar.getName())) {
                            paramIndex = i;
                            break;
                        }
                    }
                }
                if (paramIndex != -1) {
                    itemType = paramType.getActualTypeArguments()[paramIndex];
                    if (!itemType.equals(this.itemType)) {
                        itemTypeDeser = parser.getConfig().getDeserializer(itemType);
                    }
                }
            } else if (itemType instanceof ParameterizedType) {
                ParameterizedType parameterizedItemType = (ParameterizedType) itemType;
                Type[] itemActualTypeArgs = parameterizedItemType.getActualTypeArguments();
                if (itemActualTypeArgs.length == 1 && (itemActualTypeArgs[0] instanceof TypeVariable)) {
                    typeVar = (TypeVariable) itemActualTypeArgs[0];
                    paramType = (ParameterizedType) objectType;
                    objectClass = null;
                    if (paramType.getRawType() instanceof Class) {
                        objectClass = (Class) paramType.getRawType();
                    }
                    paramIndex = -1;
                    if (objectClass != null) {
                        size = objectClass.getTypeParameters().length;
                        for (i = 0; i < size; i++) {
                            if (objectClass.getTypeParameters()[i].getName().equals(typeVar.getName())) {
                                paramIndex = i;
                                break;
                            }
                        }
                    }
                    if (paramIndex != -1) {
                        itemActualTypeArgs[0] = paramType.getActualTypeArguments()[paramIndex];
                        itemType = new ParameterizedTypeImpl(itemActualTypeArgs, parameterizedItemType.getOwnerType(), parameterizedItemType.getRawType());
                    }
                }
            }
        }
        JSONLexer lexer = parser.lexer;
        if (lexer.token() == 14) {
            if (itemTypeDeser == null) {
                itemTypeDeser = parser.getConfig().getDeserializer(itemType);
                this.deserializer = itemTypeDeser;
                this.itemFastMatchToken = this.deserializer.getFastMatchToken();
            }
            lexer.nextToken(this.itemFastMatchToken);
            i = 0;
            while (true) {
                if (lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    while (lexer.token() == 16) {
                        lexer.nextToken();
                    }
                }
                if (lexer.token() == 15) {
                    lexer.nextToken(16);
                    return;
                }
                array.add(itemTypeDeser.deserialze(parser, itemType, Integer.valueOf(i)));
                parser.checkListResolve(array);
                if (lexer.token() == 16) {
                    lexer.nextToken(this.itemFastMatchToken);
                }
                i++;
            }
        } else {
            if (itemTypeDeser == null) {
                itemTypeDeser = parser.getConfig().getDeserializer(itemType);
                this.deserializer = itemTypeDeser;
            }
            array.add(itemTypeDeser.deserialze(parser, itemType, Integer.valueOf(0)));
            parser.checkListResolve(array);
        }
    }
}
