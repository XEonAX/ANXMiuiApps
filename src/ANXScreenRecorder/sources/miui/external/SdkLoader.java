package miui.external;

import android.content.Context;
import android.os.Build.VERSION;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexClassLoader;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Field;

class SdkLoader {
    private static final String DEX_ELEMENTS_FIELD_NAME = "dexElements";
    private static final String DEX_ELEMENT_TYPE_NAME = "dalvik.system.DexPathList$Element";
    private static final String DEX_PATH_LIST_CLASS_NAME = "dalvik.system.DexPathList";
    private static final String LIB_ELEMENTS_FIELD_NAME = "nativeLibraryPathElements";
    private static final String LIB_ELEMENT_TYPE_NAME = (VERSION.SDK_INT < 26 ? DEX_ELEMENT_TYPE_NAME : "dalvik.system.DexPathList$NativeLibraryElement");

    SdkLoader() {
    }

    public static boolean load(String dexPath, String optimizedDirectoryPath, String libraryPath, ClassLoader loader) {
        return load(dexPath, optimizedDirectoryPath, libraryPath, loader, null);
    }

    static boolean load(String dexPath, String optimizedDirectoryPath, String libraryPath, ClassLoader loader, Context context) {
        if (dexPath == null && (libraryPath == null || context == null)) {
            return false;
        }
        try {
            ClassLoader oneShotLoader;
            Object dexPathList = getDexPathListVariable(loader);
            String apkPath = dexPath;
            if (dexPath == null) {
                if (VERSION.SDK_INT < 23) {
                    loadLibBeforeAndroidM(dexPathList, libraryPath);
                    return true;
                }
                apkPath = context.getApplicationInfo().sourceDir;
                optimizedDirectoryPath = null;
            }
            if (optimizedDirectoryPath == null) {
                oneShotLoader = new PathClassLoader(apkPath, libraryPath, loader.getParent());
            } else {
                oneShotLoader = new DexClassLoader(apkPath, optimizedDirectoryPath, libraryPath, loader.getParent());
            }
            Object oneShotDexPathList = getDexPathListVariable(oneShotLoader);
            if (dexPath != null) {
                loadDex(dexPathList, oneShotDexPathList);
            }
            if (libraryPath != null) {
                loadLibrary(dexPathList, oneShotDexPathList, libraryPath);
            }
            return true;
        } catch (IllegalArgumentException e) {
            return false;
        } catch (IllegalAccessException e2) {
            return false;
        } catch (ClassNotFoundException e3) {
            return false;
        } catch (NoSuchFieldException e4) {
            return false;
        }
    }

    private static Object getDexPathListVariable(ClassLoader loader) throws NoSuchFieldException {
        if (loader instanceof BaseDexClassLoader) {
            Field[] declaredFields = BaseDexClassLoader.class.getDeclaredFields();
            int length = declaredFields.length;
            int i = 0;
            while (i < length) {
                Field field = declaredFields[i];
                if (DEX_PATH_LIST_CLASS_NAME.equals(field.getType().getName())) {
                    field.setAccessible(true);
                    try {
                        return field.get(loader);
                    } catch (IllegalArgumentException e) {
                    } catch (IllegalAccessException e2) {
                    }
                } else {
                    i++;
                }
            }
        }
        throw new NoSuchFieldException("dexPathList field not found.");
    }

    private static void loadDex(Object dexPathList, Object oneShotDexPathList) throws NoSuchFieldException, IllegalAccessException, ClassNotFoundException {
        replaceElement(dexPathList, oneShotDexPathList, DEX_ELEMENTS_FIELD_NAME, DEX_ELEMENT_TYPE_NAME);
    }

    private static void loadLibrary(Object dexPathList, Object oneShotDexPathList, String libPath) throws NoSuchFieldException, IllegalAccessException, ClassNotFoundException {
        if (VERSION.SDK_INT >= 23) {
            replaceElement(dexPathList, oneShotDexPathList, LIB_ELEMENTS_FIELD_NAME, LIB_ELEMENT_TYPE_NAME);
        } else {
            loadLibBeforeAndroidM(dexPathList, libPath);
        }
    }

    private static void replaceElement(Object dexPathList, Object oneShotDexPathList, String fieldName, String fieldType) throws NoSuchFieldException, IllegalAccessException, ClassNotFoundException {
        Object[] oneShotDexElements = (Object[]) getElementsField(oneShotDexPathList, fieldName, fieldType).get(oneShotDexPathList);
        Field dexElementsField = getElementsField(dexPathList, fieldName, fieldType);
        Object[] dexElements = (Object[]) dexElementsField.get(dexPathList);
        Object[] newElements = (Object[]) Array.newInstance(Class.forName(fieldType), dexElements.length + 1);
        newElements[0] = oneShotDexElements[0];
        System.arraycopy(dexElements, 0, newElements, 1, dexElements.length);
        dexElementsField.set(dexPathList, newElements);
    }

    private static Field getElementsField(Object dexPathList, String fieldName, String fieldType) throws NoSuchFieldException {
        for (Field field : dexPathList.getClass().getDeclaredFields()) {
            if (field.getName().equals(fieldName)) {
                Class<?> type = field.getType();
                if (type.isArray() && fieldType.equals(type.getComponentType().getName())) {
                    field.setAccessible(true);
                    return field;
                }
            }
        }
        throw new NoSuchFieldException(fieldName + " field not found.");
    }

    private static void loadLibBeforeAndroidM(Object dexPathList, String libraryPath) throws NoSuchFieldException, IllegalAccessException {
        Field nativeLibraryDirField = getNativeLibraryDirectoriesField(dexPathList);
        File[] files = (File[]) nativeLibraryDirField.get(dexPathList);
        File[] newFiles = new File[(files.length + 1)];
        newFiles[0] = new File(libraryPath);
        System.arraycopy(files, 0, newFiles, 1, files.length);
        nativeLibraryDirField.set(dexPathList, newFiles);
    }

    private static Field getNativeLibraryDirectoriesField(Object dexPathList) throws NoSuchFieldException {
        for (Field field : dexPathList.getClass().getDeclaredFields()) {
            Class<?> type = field.getType();
            if (type.isArray() && type.getComponentType() == File.class) {
                field.setAccessible(true);
                return field;
            }
        }
        throw new NoSuchFieldException("nativeLibraryDirectories field not found.");
    }
}
