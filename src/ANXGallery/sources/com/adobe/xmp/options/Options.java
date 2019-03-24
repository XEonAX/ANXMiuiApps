package com.adobe.xmp.options;

import com.adobe.xmp.XMPException;
import java.util.Map;

public abstract class Options {
    private Map optionNames = null;
    private int options = 0;

    protected abstract int getValidOptions();

    public Options(int options) throws XMPException {
        assertOptionsValid(options);
        setOptions(options);
    }

    protected boolean getOption(int optionBit) {
        return (this.options & optionBit) != 0;
    }

    public void setOption(int optionBits, boolean value) {
        this.options = value ? this.options | optionBits : this.options & (optionBits ^ -1);
    }

    public int getOptions() {
        return this.options;
    }

    public void setOptions(int options) throws XMPException {
        assertOptionsValid(options);
        this.options = options;
    }

    public boolean equals(Object obj) {
        return getOptions() == ((Options) obj).getOptions();
    }

    public int hashCode() {
        return getOptions();
    }

    public String toString() {
        return "0x" + Integer.toHexString(this.options);
    }

    protected void assertConsistency(int options) throws XMPException {
    }

    private void assertOptionsValid(int options) throws XMPException {
        int invalidOptions = options & (getValidOptions() ^ -1);
        if (invalidOptions == 0) {
            assertConsistency(options);
            return;
        }
        throw new XMPException("The option bit(s) 0x" + Integer.toHexString(invalidOptions) + " are invalid!", 103);
    }
}
