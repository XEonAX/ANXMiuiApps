package miui.content.res;

import android.app.MiuiThemeHelper;
import android.content.res.MiuiResources;
import android.content.res.Resources;
import android.util.Log;
import com.android.internal.util.XmlUtils;
import com.miui.internal.content.res.ThemeDefinition.FallbackInfo;
import com.miui.internal.content.res.ThemeDefinition.NewDefaultValue;
import com.miui.internal.content.res.ThemeDefinition.ResourceType;
import com.miui.internal.content.res.ThemeToolUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import miui.util.IOUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ThemeValues {
    private static final String ATTR_NAME = "name";
    private static final String ATTR_PACKAGE = "package";
    private static final String DIVIDER = "|";
    private static final String TAG = "ThemeValues";
    private static final String TAG_ITEM = "item";
    private static final String TRUE = "true";
    public HashMap<Integer, int[]> mIntegerArrays = new HashMap();
    public HashMap<Integer, Integer> mIntegers = new HashMap();
    public HashMap<Integer, String[]> mStringArrays = new HashMap();
    public HashMap<Integer, String> mStrings = new HashMap();

    public void putAll(ThemeValues values) {
        this.mIntegers.putAll(values.mIntegers);
        this.mStrings.putAll(values.mStrings);
        this.mIntegerArrays.putAll(values.mIntegerArrays);
        this.mStringArrays.putAll(values.mStringArrays);
    }

    public boolean isEmpty() {
        return this.mIntegers.isEmpty() && this.mStrings.isEmpty() && this.mIntegerArrays.isEmpty() && this.mStringArrays.isEmpty();
    }

    public void mergeNewDefaultValueIfNeed(MiuiResources resource, String pkgName) {
        List<NewDefaultValue> list = ThemeCompatibility.getNewDefaultValueList(pkgName);
        if (list != null && isOldVersionComponentTheme(pkgName)) {
            try {
                String str;
                StringBuilder stringBuilder;
                StringBuilder notFoundBuilder = new StringBuilder();
                StringBuilder duplicateBuilder = new StringBuilder();
                for (NewDefaultValue tmp : list) {
                    int id = getIdentifier(resource, tmp.mResType, tmp.mResName, pkgName);
                    if (id <= 0) {
                        notFoundBuilder.append(DIVIDER);
                        notFoundBuilder.append(tmp.toString());
                    } else if (this.mStrings.containsKey(Integer.valueOf(id)) || this.mIntegers.containsKey(Integer.valueOf(id))) {
                        duplicateBuilder.append(DIVIDER);
                        duplicateBuilder.append(tmp.toString());
                    } else {
                        Object value = parseResourceNonArrayValue(tmp.mResType, tmp.mResValue);
                        if (value != null) {
                            if (tmp.mResType == ResourceType.STRING) {
                                this.mStrings.put(Integer.valueOf(id), (String) value);
                            } else {
                                this.mIntegers.put(Integer.valueOf(id), (Integer) value);
                            }
                        }
                    }
                }
                if (notFoundBuilder.length() != 0) {
                    str = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("can not find newDefValue: ");
                    stringBuilder.append(notFoundBuilder.toString());
                    Log.d(str, stringBuilder.toString());
                }
                if (duplicateBuilder.length() != 0) {
                    str = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("customized theme has contain this value: ");
                    stringBuilder.append(duplicateBuilder.toString());
                    Log.d(str, stringBuilder.toString());
                }
            } catch (Exception e) {
            }
        }
    }

    public static ThemeValues parseThemeValues(MiuiResources resource, InputStream is, String defPkgName) {
        Exception e;
        Throwable th;
        InputStream inputStream;
        ThemeValues ret = new ThemeValues();
        String str;
        MiuiResources miuiResources;
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            try {
                Document document = builder.parse(new BufferedInputStream(is, 8192));
                NodeList list = document.getDocumentElement().getChildNodes();
                short s = (short) 1;
                int index = list.getLength() - 1;
                while (index >= 0) {
                    DocumentBuilderFactory factory2;
                    DocumentBuilder builder2;
                    Document document2;
                    Node temp = list.item(index);
                    if (temp.getNodeType() == s) {
                        Element element = (Element) temp;
                        String name = element.getAttribute("name");
                        if (!ThemeToolUtils.isEmpty(name)) {
                            ResourceType resType = ResourceType.getType(element.getNodeName());
                            if (resType != ResourceType.NONE) {
                                str = defPkgName;
                                try {
                                    if (ignoreResourceValue(str, resType, name)) {
                                        miuiResources = resource;
                                        factory2 = factory;
                                        builder2 = builder;
                                        document2 = document;
                                        index--;
                                        factory = factory2;
                                        builder = builder2;
                                        document = document2;
                                        s = (short) 1;
                                    } else {
                                        String pkg = element.getAttribute("package");
                                        if (ThemeToolUtils.isEmpty(pkg)) {
                                            pkg = str;
                                        }
                                        try {
                                            factory2 = factory;
                                            List<Integer> idList = getIdentifierWithFallback(resource, resType, name, pkg);
                                            if (!idList.isEmpty()) {
                                                Map saveMap;
                                                Document value;
                                                builder2 = builder;
                                                if (resType == ResourceType.INTEGER_ARRAY) {
                                                    saveMap = ret.mIntegerArrays;
                                                    value = parseResourceArrayValue(resType, element);
                                                } else if (resType == ResourceType.STRING_ARRAY) {
                                                    saveMap = ret.mStringArrays;
                                                    value = parseResourceArrayValue(resType, element);
                                                } else if (resType == ResourceType.STRING) {
                                                    Map saveMap2 = ret.mStrings;
                                                    value = parseResourceNonArrayValue(resType, element.getTextContent());
                                                    saveMap = saveMap2;
                                                } else {
                                                    Map saveMap3 = ret.mIntegers;
                                                    value = parseResourceNonArrayValue(resType, element.getTextContent());
                                                    saveMap = saveMap3;
                                                }
                                                document2 = document;
                                                saveIdentifierMap(saveMap, idList, value);
                                                index--;
                                                factory = factory2;
                                                builder = builder2;
                                                document = document2;
                                                s = (short) 1;
                                            }
                                            builder2 = builder;
                                            document2 = document;
                                            index--;
                                            factory = factory2;
                                            builder = builder2;
                                            document = document2;
                                            s = (short) 1;
                                        } catch (Exception e2) {
                                            e = e2;
                                            try {
                                                e.printStackTrace();
                                                IOUtils.closeQuietly(is);
                                                return ret;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                IOUtils.closeQuietly(is);
                                                throw th;
                                            }
                                        }
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    miuiResources = resource;
                                    e.printStackTrace();
                                    IOUtils.closeQuietly(is);
                                    return ret;
                                } catch (Throwable th3) {
                                    th = th3;
                                    miuiResources = resource;
                                    IOUtils.closeQuietly(is);
                                    throw th;
                                }
                            }
                        }
                    }
                    miuiResources = resource;
                    str = defPkgName;
                    factory2 = factory;
                    builder2 = builder;
                    document2 = document;
                    index--;
                    factory = factory2;
                    builder = builder2;
                    document = document2;
                    s = (short) 1;
                }
                miuiResources = resource;
                str = defPkgName;
            } catch (Exception e4) {
                e = e4;
                miuiResources = resource;
                str = defPkgName;
                e.printStackTrace();
                IOUtils.closeQuietly(is);
                return ret;
            } catch (Throwable th4) {
                th = th4;
                miuiResources = resource;
                str = defPkgName;
                IOUtils.closeQuietly(is);
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            miuiResources = resource;
            inputStream = is;
            str = defPkgName;
            e.printStackTrace();
            IOUtils.closeQuietly(is);
            return ret;
        } catch (Throwable th5) {
            th = th5;
            miuiResources = resource;
            inputStream = is;
            str = defPkgName;
            IOUtils.closeQuietly(is);
            throw th;
        }
        IOUtils.closeQuietly(is);
        return ret;
    }

    private static Object parseResourceArrayValue(ResourceType resType, Element element) {
        NodeList arrayItems = element.getElementsByTagName(TAG_ITEM);
        if (arrayItems != null) {
            int length = arrayItems.getLength();
            int size = length;
            if (length != 0) {
                ArrayList<String> array = new ArrayList(size);
                int i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    array.add(arrayItems.item(i2).getTextContent());
                }
                if (resType == ResourceType.INTEGER_ARRAY) {
                    int[] integerArray = new int[size];
                    while (i < size) {
                        integerArray[i] = Integer.valueOf((String) array.get(i)).intValue();
                        i++;
                    }
                    return integerArray;
                } else if (resType == ResourceType.STRING_ARRAY) {
                    return array.toArray(new String[size]);
                } else {
                    return null;
                }
            }
        }
        return null;
    }

    private static Object parseResourceNonArrayValue(ResourceType resType, String value) {
        if (ThemeToolUtils.isEmpty(value)) {
            return null;
        }
        value = value.trim();
        Object ret = null;
        if (resType == ResourceType.BOOLEAN) {
            ret = Integer.valueOf(TRUE.equals(value));
        } else if (resType == ResourceType.COLOR || resType == ResourceType.INTEGER || resType == ResourceType.DRAWABLE) {
            ret = Integer.valueOf(XmlUtils.convertValueToUnsignedInt(value, 0));
        } else if (resType == ResourceType.DIMEN) {
            ret = MiuiThemeHelper.parseDimension(value);
        } else if (resType == ResourceType.STRING) {
            ret = value;
        }
        return ret;
    }

    private static void saveIdentifierMap(Map saveMap, List keyList, Object value) {
        if (value != null) {
            for (Object key : keyList) {
                saveMap.put(key, value);
            }
        }
    }

    private static int getIdentifier(Resources res, ResourceType resType, String resName, String pkgName) {
        String type;
        if (resType == ResourceType.INTEGER_ARRAY || resType == ResourceType.STRING_ARRAY) {
            type = "array";
        } else {
            type = resType.toString();
        }
        int id = res.getIdentifier(resName, type, pkgName);
        if (id != 0 || !"miui".equals(pkgName)) {
            return id;
        }
        id = res.getIdentifier(resName, type, "miui.system");
        if (id == 0) {
            return res.getIdentifier(resName, type, "android.miui");
        }
        return id;
    }

    private static List<Integer> getIdentifierWithFallback(Resources res, ResourceType resType, String resName, String pkgName) {
        List<Integer> ret = new ArrayList();
        int id = getIdentifier(res, resType, resName, pkgName);
        if (id > 0) {
            ret.add(Integer.valueOf(id));
        }
        List<FallbackInfo> fallbackList = ThemeCompatibility.getFallbackList(pkgName);
        if (fallbackList != null) {
            for (FallbackInfo fallback : fallbackList) {
                if (fallback.mResType == resType && fallback.mResFallbackPkgName == null && resName.equals(fallback.mResFallbackName)) {
                    id = getIdentifier(res, resType, fallback.mResOriginalName, pkgName);
                    if (id > 0) {
                        ret.add(Integer.valueOf(id));
                    }
                }
            }
        }
        return ret;
    }

    private static boolean ignoreResourceValue(String pkgName, ResourceType resType, String resName) {
        if (resType == ResourceType.COLOR && ThemeResources.FRAMEWORK_PACKAGE.equals(pkgName) && resName.startsWith("statusbar_content")) {
            return isOldVersionComponentTheme(pkgName);
        }
        return false;
    }

    private static boolean isOldVersionComponentTheme(String pkgName) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(ThemeResources.THEME_VERSION_COMPATIBILITY_PATH);
        stringBuilder.append(pkgName);
        return new File(stringBuilder.toString()).exists();
    }
}
