package com.alibaba.fastjson.asm;

public class MethodCollector {
    private int currentParameter = 0;
    protected boolean debugInfoPresent;
    private final int ignoreCount;
    private final int paramCount;
    private final StringBuffer result = new StringBuffer();

    protected MethodCollector(int ignoreCount, int paramCount) {
        boolean z = false;
        this.ignoreCount = ignoreCount;
        this.paramCount = paramCount;
        if (paramCount == 0) {
            z = true;
        }
        this.debugInfoPresent = z;
    }

    protected void visitLocalVariable(String name, int index) {
        if (index >= this.ignoreCount && index < this.ignoreCount + this.paramCount) {
            if (!name.equals("arg" + this.currentParameter)) {
                this.debugInfoPresent = true;
            }
            this.result.append(',');
            this.result.append(name);
            this.currentParameter++;
        }
    }

    protected String getResult() {
        return this.result.length() != 0 ? this.result.substring(1) : "";
    }
}
