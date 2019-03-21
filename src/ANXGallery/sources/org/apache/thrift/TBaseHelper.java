package org.apache.thrift;

import java.nio.ByteBuffer;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

public final class TBaseHelper {
    private static final Comparator comparator = new NestedStructureComparator();

    private static class NestedStructureComparator implements Comparator {
        private NestedStructureComparator() {
        }

        public int compare(Object oA, Object oB) {
            if (oA == null && oB == null) {
                return 0;
            }
            if (oA == null) {
                return -1;
            }
            if (oB == null) {
                return 1;
            }
            if (oA instanceof List) {
                return TBaseHelper.compareTo((List) oA, (List) oB);
            }
            if (oA instanceof Set) {
                return TBaseHelper.compareTo((Set) oA, (Set) oB);
            }
            if (oA instanceof Map) {
                return TBaseHelper.compareTo((Map) oA, (Map) oB);
            }
            if (oA instanceof byte[]) {
                return TBaseHelper.compareTo((byte[]) oA, (byte[]) oB);
            }
            return TBaseHelper.compareTo((Comparable) oA, (Comparable) oB);
        }
    }

    public static int compareTo(boolean a, boolean b) {
        return Boolean.valueOf(a).compareTo(Boolean.valueOf(b));
    }

    public static int compareTo(byte a, byte b) {
        if (a < b) {
            return -1;
        }
        if (b < a) {
            return 1;
        }
        return 0;
    }

    public static int compareTo(short a, short b) {
        if (a < b) {
            return -1;
        }
        if (b < a) {
            return 1;
        }
        return 0;
    }

    public static int compareTo(int a, int b) {
        if (a < b) {
            return -1;
        }
        if (b < a) {
            return 1;
        }
        return 0;
    }

    public static int compareTo(long a, long b) {
        if (a < b) {
            return -1;
        }
        if (b < a) {
            return 1;
        }
        return 0;
    }

    public static int compareTo(double a, double b) {
        if (a < b) {
            return -1;
        }
        if (b < a) {
            return 1;
        }
        return 0;
    }

    public static int compareTo(String a, String b) {
        return a.compareTo(b);
    }

    public static int compareTo(byte[] a, byte[] b) {
        int sizeCompare = compareTo(a.length, b.length);
        if (sizeCompare != 0) {
            return sizeCompare;
        }
        for (int i = 0; i < a.length; i++) {
            int byteCompare = compareTo(a[i], b[i]);
            if (byteCompare != 0) {
                return byteCompare;
            }
        }
        return 0;
    }

    public static int compareTo(Comparable a, Comparable b) {
        return a.compareTo(b);
    }

    public static int compareTo(List a, List b) {
        int lastComparison = compareTo(a.size(), b.size());
        if (lastComparison != 0) {
            return lastComparison;
        }
        for (int i = 0; i < a.size(); i++) {
            lastComparison = comparator.compare(a.get(i), b.get(i));
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        return 0;
    }

    public static int compareTo(Set a, Set b) {
        int lastComparison = compareTo(a.size(), b.size());
        if (lastComparison != 0) {
            return lastComparison;
        }
        SortedSet sortedA = new TreeSet(comparator);
        sortedA.addAll(a);
        SortedSet sortedB = new TreeSet(comparator);
        sortedB.addAll(b);
        Iterator iterA = sortedA.iterator();
        Iterator iterB = sortedB.iterator();
        while (iterA.hasNext() && iterB.hasNext()) {
            lastComparison = comparator.compare(iterA.next(), iterB.next());
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        return 0;
    }

    public static int compareTo(Map a, Map b) {
        int lastComparison = compareTo(a.size(), b.size());
        if (lastComparison != 0) {
            return lastComparison;
        }
        SortedMap sortedA = new TreeMap(comparator);
        sortedA.putAll(a);
        Iterator<Entry> iterA = sortedA.entrySet().iterator();
        SortedMap sortedB = new TreeMap(comparator);
        sortedB.putAll(b);
        Iterator<Entry> iterB = sortedB.entrySet().iterator();
        while (iterA.hasNext() && iterB.hasNext()) {
            Entry entryA = (Entry) iterA.next();
            Entry entryB = (Entry) iterB.next();
            lastComparison = comparator.compare(entryA.getKey(), entryB.getKey());
            if (lastComparison != 0) {
                return lastComparison;
            }
            lastComparison = comparator.compare(entryA.getValue(), entryB.getValue());
            if (lastComparison != 0) {
                return lastComparison;
            }
        }
        return 0;
    }

    public static void toString(ByteBuffer bb, StringBuilder sb) {
        int limit;
        byte[] buf = bb.array();
        int arrayOffset = bb.arrayOffset();
        int origLimit = bb.limit();
        if (origLimit - arrayOffset > 128) {
            limit = arrayOffset + 128;
        } else {
            limit = origLimit;
        }
        for (int i = arrayOffset; i < limit; i++) {
            if (i > arrayOffset) {
                sb.append(" ");
            }
            sb.append(paddedByteString(buf[i]));
        }
        if (origLimit != limit) {
            sb.append("...");
        }
    }

    public static String paddedByteString(byte b) {
        return Integer.toHexString((b | 256) & 511).toUpperCase().substring(1);
    }

    public static byte[] byteBufferToByteArray(ByteBuffer byteBuffer) {
        if (wrapsFullArray(byteBuffer)) {
            return byteBuffer.array();
        }
        byte[] target = new byte[byteBuffer.remaining()];
        byteBufferToByteArray(byteBuffer, target, 0);
        return target;
    }

    public static boolean wrapsFullArray(ByteBuffer byteBuffer) {
        return byteBuffer.hasArray() && byteBuffer.position() == 0 && byteBuffer.arrayOffset() == 0 && byteBuffer.remaining() == byteBuffer.capacity();
    }

    public static int byteBufferToByteArray(ByteBuffer byteBuffer, byte[] target, int offset) {
        int remaining = byteBuffer.remaining();
        System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), target, offset, remaining);
        return remaining;
    }

    public static ByteBuffer rightSize(ByteBuffer in) {
        return wrapsFullArray(in) ? in : ByteBuffer.wrap(byteBufferToByteArray(in));
    }
}
