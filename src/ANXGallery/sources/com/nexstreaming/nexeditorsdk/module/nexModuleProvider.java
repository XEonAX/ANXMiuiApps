package com.nexstreaming.nexeditorsdk.module;

public interface nexModuleProvider {
    String auth();

    String description();

    String format();

    String name();

    UserField[] userFields();

    String uuid();

    int version();
}
