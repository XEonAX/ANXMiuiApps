package com.miui.gallery.provider.cache;

import android.text.TextUtils;
import com.miui.gallery.provider.cache.CacheItem.ColumnMapper;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

abstract class Filter<T extends CacheItem> {
    private static final Pattern COMPARATOR = Pattern.compile("(?i)(<(?!=)|<=|>(?!=)|>=|=(?!=)|==|!=|(?<=\\s)LIKE(?=\\s)|(?<=\\s)IN(?=\\s|\\()|(?<=\\s)NOT\\s+IN(?=\\s|\\()|(?<=\\s)IS\\s+NULL(?=\\s|$)|(?<=\\s)NOT\\s+NULL(?=\\s|$))");
    public static final CompareFilter<MediaItem> NOT_SUPPORTED_FILTER = new CompareFilter<MediaItem>(0, null, null) {
        public MediaItem filter(MediaItem item) {
            return null;
        }
    };

    public interface FilterFactory<T extends CacheItem> {
        CompareFilter<T> getFilter(int i, Comparator comparator, String str);

        ColumnMapper getMapper();
    }

    public static abstract class CompareFilter<T extends CacheItem> extends Filter<T> {
        protected String mArgument;
        protected Comparator mComparator;
        protected int mIndex;

        public CompareFilter(int column, Comparator comparator, String argument) {
            this.mIndex = column;
            this.mComparator = comparator;
            this.mArgument = argument;
        }

        public String toString() {
            return "CompareFilter{mIndex=" + this.mIndex + ", mComparator=" + this.mComparator + ", mArgument='" + this.mArgument + '\'' + '}';
        }
    }

    public enum Comparator {
        GREATER,
        GREATER_OR_EQUAL,
        LESS,
        LESS_OR_EQUAL,
        EQUALS,
        NOT_EQUALS,
        IN,
        NOT_IN,
        IS_NULL,
        NOT_NULL,
        LIKE;

        static Comparator from(String raw) {
            char prefix = raw.charAt(0);
            char suffix = raw.charAt(raw.length() - 1);
            if (prefix == '<' && suffix == '=') {
                return LESS_OR_EQUAL;
            }
            if (prefix == '<') {
                return LESS;
            }
            if (prefix == '>' && suffix == '=') {
                return GREATER_OR_EQUAL;
            }
            if (prefix == '>') {
                return GREATER;
            }
            if (prefix == '=') {
                return EQUALS;
            }
            if (prefix == '!') {
                return NOT_EQUALS;
            }
            if (suffix == 'n' || suffix == 'N') {
                if (raw.length() > 2) {
                    return NOT_IN;
                }
                return IN;
            } else if (suffix == 'l' || suffix == 'L') {
                if (prefix == 'i' || prefix == 'I') {
                    return IS_NULL;
                }
                return NOT_NULL;
            } else if ((prefix == 'l' || prefix == 'L') && (suffix == 'E' || suffix == 'e')) {
                return LIKE;
            } else {
                return null;
            }
        }
    }

    private enum Compound {
        AND,
        OR
    }

    private static class CompoundFilter<T extends CacheItem> extends Filter<T> {
        private Compound mCompound;
        private Filter<T> mLeft;
        private Filter<T> mRight;

        public CompoundFilter(String compound, Filter<T> left, Filter<T> right) {
            this.mLeft = left;
            this.mRight = right;
            this.mCompound = Compound.valueOf(compound);
        }

        public T filter(T item) {
            if (this.mCompound != Compound.AND) {
                return this.mLeft.filter(item) == null ? this.mRight.filter(item) : item;
            } else {
                if (this.mLeft.filter(item) == null) {
                    return null;
                }
                return this.mRight.filter(item);
            }
        }

        public String toString() {
            return "CompoundFilter{mFilters=[" + this.mLeft + ", " + this.mRight + "]" + ", mCompound=" + this.mCompound + '}';
        }
    }

    private static class DummyFilter<T extends CacheItem> extends Filter<T> {
        private DummyFilter() {
        }

        /* synthetic */ DummyFilter(AnonymousClass1 x0) {
            this();
        }

        public T filter(T item) {
            return item;
        }

        public String toString() {
            return "DummyFilter";
        }
    }

    public abstract T filter(T t);

    Filter() {
    }

    public static <T extends CacheItem> Filter<T> from(String selection, String[] args, FilterFactory<T> factory) {
        return build(insertArgs(selection, args), factory);
    }

    private static <T extends CacheItem> Filter<T> build(String selection, FilterFactory<T> factory) {
        if (TextUtils.isEmpty(selection)) {
            return new DummyFilter(null);
        }
        String[][] splits = split(selection);
        String[] filters = splits[0];
        String[] compounds = splits[1];
        int indexOfGroup = 0;
        Filter<T> output = null;
        int length = filters.length;
        int i = 0;
        while (true) {
            Object output2 = output;
            if (i < length) {
                Filter<T> filter;
                Object raw = filters[i].trim();
                Log.d(".provider.cache.Filter", "build for %s", raw);
                if (inBracket(raw)) {
                    filter = build(raw.substring(1, raw.length() - 1), factory);
                } else {
                    Matcher matcher = COMPARATOR.matcher(raw);
                    if (matcher.find()) {
                        int index = factory.getMapper().getIndex(raw.substring(0, matcher.start()).trim());
                        if (index < 0) {
                            Log.w(".provider.cache.Filter", "Found a unrecognized column");
                        }
                        FilterFactory<T> filterFactory = factory;
                        filter = filterFactory.getFilter(index, Comparator.from(matcher.group()), translateParams(raw.substring(matcher.end(), raw.length()).trim()));
                    } else {
                        Log.w(".provider.cache.Filter", "Found a unrecognized operation");
                        filter = factory.getFilter(-1, null, null);
                    }
                }
                if (output2 == null) {
                    output = filter;
                } else {
                    indexOfGroup++;
                    output = new CompoundFilter(compounds[indexOfGroup - 1], output2, filter);
                }
                i++;
            } else {
                Log.d(".provider.cache.Filter", "filter build finish: %s", output2);
                return output2;
            }
        }
    }

    private static String translateParams(String params) {
        if (params.length() > 1 && params.charAt(0) == '\'' && params.charAt(params.length() - 1) == '\'') {
            return params.substring(1, params.length() - 1);
        }
        return params;
    }

    private static String[][] split(String selection) {
        Stack<Integer> brackets = new Stack();
        ArrayList<String> filters = new ArrayList();
        ArrayList<String> compounds = new ArrayList();
        int startPos = 0;
        int i = 0;
        while (i < selection.length()) {
            char c = selection.charAt(i);
            if (!isIdentifier(c)) {
                if (c == '(') {
                    brackets.push(Integer.valueOf(i));
                } else {
                    if (selection.charAt(i) == ')') {
                        brackets.pop();
                    }
                    if (brackets.isEmpty()) {
                        Compound compound = findCompound(i, selection);
                        if (compound != null) {
                            filters.add(selection.substring(startPos, i));
                            compounds.add(compound.toString());
                            if (compound == Compound.AND) {
                                i += 3;
                            } else {
                                i += 2;
                            }
                            startPos = i + 1;
                        }
                    }
                }
            }
            i++;
        }
        filters.add(selection.substring(startPos, selection.length()));
        String[] filter = (String[]) filters.toArray(new String[filters.size()]);
        String[] compound2 = (String[]) compounds.toArray(new String[compounds.size()]);
        return new String[][]{filter, compound2};
    }

    private static boolean isIdentifier(char c) {
        return c == '_' || Character.isLetterOrDigit(c);
    }

    private static Compound findCompound(int pos, String selection) {
        if (pos + 4 >= selection.length()) {
            return null;
        }
        if ((selection.charAt(pos + 1) == 'a' || selection.charAt(pos + 1) == 'A') && ((selection.charAt(pos + 2) == 'n' || selection.charAt(pos + 2) == 'N') && ((selection.charAt(pos + 3) == 'd' || selection.charAt(pos + 3) == 'D') && (Character.isSpaceChar(selection.charAt(pos + 4)) || selection.charAt(pos + 4) == '(')))) {
            return Compound.AND;
        }
        if (selection.charAt(pos + 1) != 'o' && selection.charAt(pos + 1) != 'O') {
            return null;
        }
        if (selection.charAt(pos + 2) != 'r' && selection.charAt(pos + 2) != 'R') {
            return null;
        }
        if (Character.isSpaceChar(selection.charAt(pos + 3)) || selection.charAt(pos + 3) == '(') {
            return Compound.OR;
        }
        return null;
    }

    private static boolean inBracket(String selection) {
        return selection.charAt(0) == '(' && selection.charAt(selection.length() - 1) == ')';
    }

    private static String insertArgs(String selection, String[] args) {
        if (args == null || args.length < 1) {
            return selection;
        }
        int i = 0;
        StringBuilder builder = new StringBuilder();
        for (int pos = 0; pos < selection.length(); pos++) {
            char c = selection.charAt(pos);
            if (c == '?') {
                int i2 = i + 1;
                builder.append(args[i]);
                i = i2;
            } else {
                builder.append(c);
            }
        }
        return builder.toString();
    }
}
