package com.google.gson_nex;

import java.lang.reflect.Field;

public interface FieldNamingStrategy {
    String translateName(Field field);
}
