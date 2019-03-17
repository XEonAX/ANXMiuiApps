package com.xiaomi.scanner.config.bean;

import java.util.List;
import java.util.Map;

public class ScanRuleListResult {
    public List<String> allCanPayRules;
    public List<String> scanAlipayRules;
    public List<String> scanMiBiPayRules;
    public List<String> scanMipayRules;
    public Map<String, String> scanTipMap;
    public List<String> wechatJumpRules;
}
