package com.miui.internal.log.util;

import java.io.IOException;
import java.util.Formatter;
import java.util.Locale;

public class AppendableFormatter {
    private Formatter hs;
    private AppendableWrapper ht;

    private static class AppendableWrapper implements Appendable {
        private Appendable hu;

        private AppendableWrapper() {
        }

        public void setAppendable(Appendable appendable) {
            this.hu = appendable;
        }

        public Appendable append(char c) throws IOException {
            this.hu.append(c);
            return this;
        }

        public Appendable append(CharSequence charSequence) throws IOException {
            this.hu.append(charSequence);
            return this;
        }

        public Appendable append(CharSequence charSequence, int i, int i2) throws IOException {
            this.hu.append(charSequence, i, i2);
            return this;
        }
    }

    public AppendableFormatter() {
        this(Locale.US);
    }

    public AppendableFormatter(Locale locale) {
        this.ht = new AppendableWrapper();
        this.hs = new Formatter(this.ht, locale);
    }

    public void setAppendable(Appendable appendable) {
        this.ht.setAppendable(appendable);
    }

    public AppendableFormatter format(String str, Object... objArr) {
        this.hs.format(str, objArr);
        return this;
    }

    public AppendableFormatter format(Locale locale, String str, Object... objArr) {
        this.hs.format(locale, str, objArr);
        return this;
    }
}
