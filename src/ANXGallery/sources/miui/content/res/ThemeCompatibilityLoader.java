package miui.content.res;

import android.util.Log;
import com.android.internal.util.XmlUtils;
import com.miui.internal.content.res.ThemeDefinition.CompatibilityInfo;
import com.miui.internal.content.res.ThemeDefinition.CompatibilityType;
import com.miui.internal.content.res.ThemeDefinition.FallbackInfo;
import com.miui.internal.content.res.ThemeDefinition.NewDefaultValue;
import com.miui.internal.content.res.ThemeDefinition.ResourceType;
import com.miui.internal.content.res.ThemeToolUtils;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.InputStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import miui.util.IOUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ThemeCompatibilityLoader {
    private static final String COMPATIBILITY_FILE_NAME = "theme_compatibility.xml";
    public static final String DATA_THEME_COMPATIBILITY_PATH = "/data/system/theme_config/theme_compatibility.xml";
    public static final String SYSTEM_THEME_COMPATIBILITY_PATH = "/system/media/theme/theme_compatibility.xml";
    private static final String TAG = "ThemeCompatibility";
    private static final String TAG_ITEM = "item";
    private static final String TAG_PACKAGE = "package";
    private static final String TAG_PROPERTY1 = "property1";
    private static final String TAG_PROPERTY2 = "property2";
    private static final String TAG_PROPERTY3 = "property3";
    private static final String TAG_PROPERTYEXTRA = "propertyExtra";
    private static final String TAG_RESOURCE_TYPE = "resourceType";
    private static final String TAG_VERSION = "version";
    private static int sVersionInt = -1;

    static List<CompatibilityInfo> loadConfig() {
        List<CompatibilityInfo> ret = new ArrayList();
        Log.d(TAG, "START loading theme compatibility config.");
        try {
            Document document = getConfigDocumentTree();
            if (document != null) {
                NodeList list = document.getDocumentElement().getChildNodes();
                for (int index = list.getLength() - 1; index >= 0; index--) {
                    Node temp = list.item(index);
                    if (temp.getNodeType() == (short) 1) {
                        Element element = (Element) temp;
                        String eleName = element.getNodeName();
                        if ("version".equals(eleName)) {
                            sVersionInt = XmlUtils.convertValueToUnsignedInt(element.getTextContent(), -1);
                            if (sVersionInt < 0) {
                                break;
                            }
                        } else {
                            CompatibilityType type = CompatibilityType.getType(eleName);
                            if (type != CompatibilityType.NONE) {
                                NodeList nodeList = element.getElementsByTagName(TAG_ITEM);
                                if (nodeList != null) {
                                    int size = nodeList.getLength();
                                    for (int i = 0; i < size; i++) {
                                        CompatibilityInfo info = parseCompatibilityInfo(type, nodeList.item(i));
                                        if (info != null) {
                                            ret.add(info);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Invalid item format: ");
            stringBuilder.append(e.toString());
            Log.d(str, stringBuilder.toString());
            e.printStackTrace();
        }
        if (sVersionInt < 0) {
            ret.clear();
        }
        String str2 = TAG;
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("END loading: version=");
        stringBuilder2.append(sVersionInt);
        stringBuilder2.append(" size=");
        stringBuilder2.append(ret.size());
        Log.d(str2, stringBuilder2.toString());
        return ret;
    }

    public static int getVersion(String path) {
        String sTag;
        Reader cin = null;
        try {
            sTag = "<version>";
            String eTag = "</version>";
            cin = new BufferedReader(new FileReader(path));
            while (true) {
                String readLine = cin.readLine();
                String line = readLine;
                if (readLine == null) {
                    break;
                }
                line = line.trim();
                if (line.startsWith("<version>") && line.endsWith("</version>")) {
                    int parseInt = Integer.parseInt(line.substring("<version>".length(), line.length() - "</version>".length()));
                    IOUtils.closeQuietly(cin);
                    return parseInt;
                }
            }
        } catch (Exception e) {
            sTag = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("getVersion(): ");
            stringBuilder.append(path);
            stringBuilder.append("  ");
            stringBuilder.append(e.toString());
            Log.d(sTag, stringBuilder.toString());
            e.printStackTrace();
        } catch (Throwable th) {
            IOUtils.closeQuietly(cin);
        }
        IOUtils.closeQuietly(cin);
        return -1;
    }

    private static Document getConfigDocumentTree() {
        int updateVersion = getVersion(DATA_THEME_COMPATIBILITY_PATH);
        int romVersion = getVersion(SYSTEM_THEME_COMPATIBILITY_PATH);
        String[] prefPath = new String[2];
        int i = 0;
        if (updateVersion > romVersion) {
            prefPath[0] = DATA_THEME_COMPATIBILITY_PATH;
            prefPath[1] = SYSTEM_THEME_COMPATIBILITY_PATH;
        } else {
            prefPath[0] = SYSTEM_THEME_COMPATIBILITY_PATH;
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("getConfigDocumentTree(): ");
        stringBuilder.append(romVersion);
        stringBuilder.append(" vs ");
        stringBuilder.append(updateVersion);
        Log.d(str, stringBuilder.toString());
        int length = prefPath.length;
        while (true) {
            InputStream is = null;
            if (i >= length) {
                return null;
            }
            String path = prefPath[i];
            try {
                String str2 = TAG;
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("    parse file: ");
                stringBuilder2.append(path);
                Log.d(str2, stringBuilder2.toString());
                DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
                is = new BufferedInputStream(new FileInputStream(path), 8192);
                Document parse = builder.parse(is);
                IOUtils.closeQuietly(is);
                return parse;
            } catch (Exception e) {
                String str3 = TAG;
                StringBuilder stringBuilder3 = new StringBuilder();
                stringBuilder3.append("    invalid file format: ");
                stringBuilder3.append(path);
                stringBuilder3.append(" -- ");
                stringBuilder3.append(e.toString());
                Log.d(str3, stringBuilder3.toString());
                e.printStackTrace();
                IOUtils.closeQuietly(is);
                i++;
            } catch (Throwable th) {
                IOUtils.closeQuietly(is);
                throw th;
            }
        }
    }

    private static CompatibilityInfo parseCompatibilityInfo(CompatibilityType type, Node item) {
        String pkg = null;
        String resourceType = null;
        String property1 = null;
        String property2 = null;
        String property3 = null;
        String propertyExtra = null;
        NamedNodeMap attrMap = item.getAttributes();
        for (int i = attrMap.getLength() - 1; i >= 0; i--) {
            Node tmp = attrMap.item(i);
            if ("package".equals(tmp.getNodeName())) {
                pkg = tmp.getNodeValue();
            } else if (TAG_RESOURCE_TYPE.equals(tmp.getNodeName())) {
                resourceType = tmp.getNodeValue();
            } else if (TAG_PROPERTY1.equals(tmp.getNodeName())) {
                property1 = tmp.getNodeValue();
            } else if (TAG_PROPERTY2.equals(tmp.getNodeName())) {
                property2 = tmp.getNodeValue();
            } else if (TAG_PROPERTY3.equals(tmp.getNodeName())) {
                property3 = tmp.getNodeValue();
            } else if (TAG_PROPERTYEXTRA.equals(tmp.getNodeName())) {
                propertyExtra = tmp.getNodeValue();
            }
        }
        CompatibilityInfo ret = null;
        CompatibilityInfo tmp2;
        if (type == CompatibilityType.FALLBACK) {
            tmp2 = new FallbackInfo();
            tmp2.mResPkgName = pkg;
            tmp2.mResType = ResourceType.getType(resourceType);
            tmp2.mResOriginalName = property1;
            tmp2.mResFallbackName = property2;
            String str = (ThemeToolUtils.isEmpty(property3) || property3.equals(pkg)) ? null : property3;
            tmp2.mResFallbackPkgName = str;
            List<String> pList = splitItemString(propertyExtra);
            if (!pList.isEmpty()) {
                String[] pConfig = new String[Math.min(5, pList.size())];
                for (int i2 = 0; i2 < pConfig.length; i2++) {
                    pConfig[i2] = (String) pList.get(i2);
                }
                tmp2.mResPreferredConfigs = pConfig;
            }
            ret = tmp2;
        } else if (type == CompatibilityType.NEW_DEF_VALUE) {
            tmp2 = new NewDefaultValue();
            tmp2.mResPkgName = pkg;
            tmp2.mResType = ResourceType.getType(resourceType);
            tmp2.mResName = property1;
            tmp2.mResValue = property2;
            ret = tmp2;
        }
        if (ret == null || ret.isValid()) {
            return ret;
        }
        String str2 = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Invalid compatibility info: ");
        stringBuilder.append(ret.toString());
        Log.d(str2, stringBuilder.toString());
        return null;
    }

    private static List<String> splitItemString(String item) {
        List<String> ret = new ArrayList();
        item = item != null ? item.trim() : null;
        if (!(item == null || item.startsWith("#"))) {
            for (String tmp : item.split(" |\t")) {
                String tmp2;
                if (tmp2 != null) {
                    tmp2 = tmp2.trim();
                    if (!tmp2.isEmpty()) {
                        ret.add(tmp2);
                    }
                }
            }
        }
        return ret;
    }
}
