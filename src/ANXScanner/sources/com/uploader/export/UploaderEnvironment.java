package com.uploader.export;

public abstract class UploaderEnvironment implements IUploaderEnvironment {
    private final int instanceType;

    @Deprecated
    public abstract int getEnvironment();

    public UploaderEnvironment(int instanceType) {
        this.instanceType = instanceType;
    }

    public final int getInstanceType() {
        return this.instanceType;
    }

    public EnvironmentElement getCurrentElement() {
        return UploaderGlobal.getElement(getEnvironment(), getInstanceType());
    }

    @Deprecated
    public final String getAppKey() {
        return getCurrentElement().appKey;
    }

    @Deprecated
    public final String getDomain() {
        return getCurrentElement().host;
    }
}
