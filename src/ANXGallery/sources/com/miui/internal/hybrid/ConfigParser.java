package com.miui.internal.hybrid;

import java.util.Map;

public interface ConfigParser {
    Config parse(Map<String, Object> map) throws HybridException;
}
