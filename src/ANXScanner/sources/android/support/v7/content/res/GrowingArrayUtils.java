package android.support.v7.content.res;

import java.lang.reflect.Array;

final class GrowingArrayUtils {
    static final /* synthetic */ boolean $assertionsDisabled = (!GrowingArrayUtils.class.desiredAssertionStatus());

    public static <T> T[] append(T[] array, int currentSize, T element) {
        if ($assertionsDisabled || currentSize <= array.length) {
            if (currentSize + 1 > array.length) {
                T[] newArray = (Object[]) ((Object[]) Array.newInstance(array.getClass().getComponentType(), growSize(currentSize)));
                System.arraycopy(array, 0, newArray, 0, currentSize);
                array = newArray;
            }
            array[currentSize] = element;
            return array;
        }
        throw new AssertionError();
    }

    public static int[] append(int[] array, int currentSize, int element) {
        if ($assertionsDisabled || currentSize <= array.length) {
            if (currentSize + 1 > array.length) {
                int[] newArray = new int[growSize(currentSize)];
                System.arraycopy(array, 0, newArray, 0, currentSize);
                array = newArray;
            }
            array[currentSize] = element;
            return array;
        }
        throw new AssertionError();
    }

    public static long[] append(long[] array, int currentSize, long element) {
        if ($assertionsDisabled || currentSize <= array.length) {
            if (currentSize + 1 > array.length) {
                long[] newArray = new long[growSize(currentSize)];
                System.arraycopy(array, 0, newArray, 0, currentSize);
                array = newArray;
            }
            array[currentSize] = element;
            return array;
        }
        throw new AssertionError();
    }

    public static boolean[] append(boolean[] array, int currentSize, boolean element) {
        if ($assertionsDisabled || currentSize <= array.length) {
            if (currentSize + 1 > array.length) {
                boolean[] newArray = new boolean[growSize(currentSize)];
                System.arraycopy(array, 0, newArray, 0, currentSize);
                array = newArray;
            }
            array[currentSize] = element;
            return array;
        }
        throw new AssertionError();
    }

    public static <T> T[] insert(T[] array, int currentSize, int index, T element) {
        if (!$assertionsDisabled && currentSize > array.length) {
            throw new AssertionError();
        } else if (currentSize + 1 <= array.length) {
            System.arraycopy(array, index, array, index + 1, currentSize - index);
            array[index] = element;
            return array;
        } else {
            T[] newArray = (Object[]) ((Object[]) Array.newInstance(array.getClass().getComponentType(), growSize(currentSize)));
            System.arraycopy(array, 0, newArray, 0, index);
            newArray[index] = element;
            System.arraycopy(array, index, newArray, index + 1, array.length - index);
            return newArray;
        }
    }

    public static int[] insert(int[] array, int currentSize, int index, int element) {
        if (!$assertionsDisabled && currentSize > array.length) {
            throw new AssertionError();
        } else if (currentSize + 1 <= array.length) {
            System.arraycopy(array, index, array, index + 1, currentSize - index);
            array[index] = element;
            return array;
        } else {
            int[] newArray = new int[growSize(currentSize)];
            System.arraycopy(array, 0, newArray, 0, index);
            newArray[index] = element;
            System.arraycopy(array, index, newArray, index + 1, array.length - index);
            return newArray;
        }
    }

    public static long[] insert(long[] array, int currentSize, int index, long element) {
        if (!$assertionsDisabled && currentSize > array.length) {
            throw new AssertionError();
        } else if (currentSize + 1 <= array.length) {
            System.arraycopy(array, index, array, index + 1, currentSize - index);
            array[index] = element;
            return array;
        } else {
            long[] newArray = new long[growSize(currentSize)];
            System.arraycopy(array, 0, newArray, 0, index);
            newArray[index] = element;
            System.arraycopy(array, index, newArray, index + 1, array.length - index);
            return newArray;
        }
    }

    public static boolean[] insert(boolean[] array, int currentSize, int index, boolean element) {
        if (!$assertionsDisabled && currentSize > array.length) {
            throw new AssertionError();
        } else if (currentSize + 1 <= array.length) {
            System.arraycopy(array, index, array, index + 1, currentSize - index);
            array[index] = element;
            return array;
        } else {
            boolean[] newArray = new boolean[growSize(currentSize)];
            System.arraycopy(array, 0, newArray, 0, index);
            newArray[index] = element;
            System.arraycopy(array, index, newArray, index + 1, array.length - index);
            return newArray;
        }
    }

    public static int growSize(int currentSize) {
        return currentSize <= 4 ? 8 : currentSize * 2;
    }

    private GrowingArrayUtils() {
    }
}
