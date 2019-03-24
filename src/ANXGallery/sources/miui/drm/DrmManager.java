package miui.drm;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import javax.xml.namespace.NamespaceContext;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import miui.content.res.ThemeResources;
import miui.telephony.TelephonyManagerUtil;
import miui.util.HashUtils;
import miui.util.RSAUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class DrmManager {
    private static final String ASSET_XPATH = "/o-ex:rights/o-ex:agreement/o-ex:asset/o-ex:context/o-dd:uid";
    private static final String DISPLAY_COUNT_XPATH = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:display/o-ex:constraint/o-dd:count";
    private static final String IMEI_EVERYONE = "-1";
    private static final String IMEI_PREFIX = "d";
    private static final String INDIVIDUAL_XPATH = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/oma-dd:individual/o-ex:context/o-dd:uid";
    private static final String ITEM_SEPARATOR = ",";
    private static final String O_EX_ID_CATEGORY = "o-ex:id";
    private static final String PAIR_SEPARATOR = ":";
    private static final String PUBLIC_KEY_E = "10001";
    private static final String PUBLIC_KEY_M = "a2ebd07cfae9a72345fc3c95d80cf5a21a55bf553fbab3025c82747ba4d53d1f9b02f46c20b5520585a910732698b165f0ecf7bd9ce5402e27c646cd0c5d34cff92b184d6a477e156a7d3503b756cc3e8531fb26c0da0ca051ab531c7f9f2a040a06642cadb698882c048630030b73edbbd62da73f7027065443c6e2558edfbd";
    private static final String SUPPORT_AD = "support_ad";
    public static final String TAG = "drm";
    private static final String TIME_END_XPATH = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:end";
    private static final String TIME_START_XPATH = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/o-dd:datetime/o-dd:start";
    private static final String USER_EVERYONE = "-1";
    private static final String USER_PREFIX = "m";
    private static Map<String, RightObjectCache> mRightsCache = new LinkedHashMap<String, RightObjectCache>(0, 0.75f, true) {
        private static final long serialVersionUID = 1;

        protected boolean removeEldestEntry(Entry<String, RightObjectCache> entry) {
            return size() > 50;
        }
    };

    private static class DrmNSContext implements NamespaceContext {
        private DrmNSContext() {
        }

        /* synthetic */ DrmNSContext(AnonymousClass1 x0) {
            this();
        }

        public String getNamespaceURI(String prefix) {
            if (prefix.equals("o-ex")) {
                return "http://odrl.net/1.1/ODRL-EX";
            }
            if (prefix.equals("o-dd")) {
                return "http://odrl.net/1.1/ODRL-DD";
            }
            if (prefix.equals("oma-dd")) {
                return "http://www.openmobilealliance.com/oma-dd";
            }
            return null;
        }

        public Iterator getPrefixes(String val) {
            return null;
        }

        public String getPrefix(String uri) {
            return null;
        }
    }

    public enum DrmResult {
        DRM_SUCCESS,
        DRM_ERROR_IMEI_NOT_MATCH,
        DRM_ERROR_ASSET_NOT_MATCH,
        DRM_ERROR_TIME_NOT_MATCH,
        DRM_ERROR_RIGHT_OBJECT_IS_NULL,
        DRM_ERROR_RIGHT_FILE_NOT_EXISTS,
        DRM_ERROR_UNKNOWN
    }

    private static class RightObject {
        public boolean adSupport;
        public List<String> assets;
        public long endTime;
        public List<String> imeis;
        public long startTime;
        public List<String> users;

        private RightObject() {
            this.assets = new ArrayList();
            this.imeis = new ArrayList();
            this.users = new ArrayList();
        }

        /* synthetic */ RightObject(AnonymousClass1 x0) {
            this();
        }
    }

    private static class RightObjectCache {
        public long lastModified;
        public RightObject ro;

        private RightObjectCache() {
        }

        /* synthetic */ RightObjectCache(AnonymousClass1 x0) {
            this();
        }
    }

    public static class TrialLimits {
        public long endTime;
        public long startTime;

        TrialLimits(long startTime, long endTime) {
            this.startTime = startTime;
            this.endTime = endTime;
        }
    }

    public static DrmResult getMorePreciseDrmResult(DrmResult r1, DrmResult r2) {
        return r1.compareTo(r2) < 0 ? r1 : r2;
    }

    public static boolean isSupportAd(Context context) {
        return System.getInt(context.getContentResolver(), SUPPORT_AD, 0) > 0;
    }

    public static void setSupportAd(Context context, boolean support) {
        System.putInt(context.getContentResolver(), SUPPORT_AD, support);
    }

    public static boolean isSupportAd(File rightsFile) {
        if (rightsFile.exists() && rightsFile.isFile()) {
            return parseRightsFile(rightsFile).adSupport;
        }
        return false;
    }

    public static DrmResult isLegal(Context context, File contentFile, File rightsFile) {
        return isLegal(context, HashUtils.getSHA1(contentFile), rightsFile);
    }

    public static DrmResult isLegal(Context context, String hash, File rightsFile) {
        if (!rightsFile.exists()) {
            return DrmResult.DRM_ERROR_RIGHT_FILE_NOT_EXISTS;
        }
        DrmResult ret = DrmResult.DRM_ERROR_UNKNOWN;
        if (rightsFile.isDirectory()) {
            for (File file : rightsFile.listFiles()) {
                String str = TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("checking asset ");
                stringBuilder.append(hash);
                stringBuilder.append(" with ");
                stringBuilder.append(file.getAbsolutePath());
                Log.d(str, stringBuilder.toString());
                DrmResult tempRet = isLegal(context, hash, parseRightsFile(file));
                if (tempRet == DrmResult.DRM_SUCCESS) {
                    return DrmResult.DRM_SUCCESS;
                }
                ret = getMorePreciseDrmResult(ret, tempRet);
            }
            return ret;
        }
        String str2 = TAG;
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("checking asset ");
        stringBuilder2.append(hash);
        stringBuilder2.append(" with ");
        stringBuilder2.append(rightsFile.getAbsolutePath());
        Log.d(str2, stringBuilder2.toString());
        return isLegal(context, hash, parseRightsFile(rightsFile));
    }

    private static DrmResult isLegal(Context context, String targetAsset, RightObject ro) {
        if (ro == null) {
            return DrmResult.DRM_ERROR_RIGHT_OBJECT_IS_NULL;
        }
        if (ro.startTime < 0 || ro.endTime < 0) {
            return DrmResult.DRM_ERROR_TIME_NOT_MATCH;
        }
        String asset;
        if (ro.endTime > 0) {
            long current = System.currentTimeMillis();
            if (current < ro.startTime || current > ro.endTime) {
                return DrmResult.DRM_ERROR_TIME_NOT_MATCH;
            }
        }
        boolean match = false;
        for (String asset2 : ro.assets) {
            if (asset2.equals(targetAsset)) {
                match = true;
                break;
            }
        }
        String str;
        if (!match) {
            str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("right object has no definition for asset ");
            stringBuilder.append(targetAsset);
            exportFatalLog(str, stringBuilder.toString());
            return DrmResult.DRM_ERROR_ASSET_NOT_MATCH;
        } else if (ro.imeis.size() == 0) {
            Log.d(TAG, "right object does not have any imeis");
            return DrmResult.DRM_SUCCESS;
        } else {
            str = getOriginImei(context);
            asset2 = getEncodedImei(context);
            if (TextUtils.isEmpty(str)) {
                exportFatalLog(TAG, "the imei retrieved is empty");
            } else if (TextUtils.isEmpty(asset2)) {
                exportFatalLog(TAG, "the imei encoded is empty");
            }
            for (String imei : ro.imeis) {
                if (imei.equals(str) || imei.equals(asset2) || imei.equals("-1")) {
                    Log.d(TAG, "right object has matched imei");
                    return DrmResult.DRM_SUCCESS;
                }
            }
            exportFatalLog(TAG, "right object does not have matched imei");
            return DrmResult.DRM_ERROR_IMEI_NOT_MATCH;
        }
    }

    public static boolean isPermanentRights(File rightsFile) {
        return isPermanentRights(parseRightsFile(rightsFile));
    }

    private static boolean isPermanentRights(RightObject ro) {
        return ro != null && ro.startTime == 0 && ro.endTime == 0;
    }

    private static RightObject parseRightsFile(File file) {
        ParserConfigurationException e;
        SAXException e2;
        IOException e3;
        XPathExpressionException e4;
        NumberFormatException e5;
        File file2;
        String path = file.getAbsolutePath();
        RightObjectCache cache = (RightObjectCache) mRightsCache.get(path);
        if (cache != null && file.lastModified() == cache.lastModified) {
            return cache.ro;
        }
        if (!isRightsFileLegal(file)) {
            return null;
        }
        RightObject ro = new RightObject();
        RightObjectCache cache2 = new RightObjectCache();
        cache2.ro = ro;
        cache2.lastModified = file.lastModified();
        mRightsCache.put(path, cache2);
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            boolean z = true;
            factory.setNamespaceAware(true);
            try {
                Document document = factory.newDocumentBuilder().parse(file);
                XPath xPath = XPathFactory.newInstance().newXPath();
                xPath.setNamespaceContext(new DrmNSContext());
                NodeList assetList = (NodeList) xPath.evaluate(ASSET_XPATH, document, XPathConstants.NODESET);
                int i = 0;
                if (assetList != null && assetList.getLength() > 0) {
                    int i2 = 0;
                    while (i2 < assetList.getLength()) {
                        String[] pair = ((Element) assetList.item(i2)).getTextContent().split(PAIR_SEPARATOR);
                        if (pair.length == z) {
                            ro.assets.addAll(Arrays.asList(pair[i].split(ITEM_SEPARATOR)));
                        } else if (pair.length == 2) {
                            ro.assets.add(pair[0]);
                            ro.assets.addAll(Arrays.asList(pair[1].split(ITEM_SEPARATOR)));
                        }
                        i2++;
                        z = true;
                        i = 0;
                    }
                }
                NodeList individualList = (NodeList) xPath.evaluate(INDIVIDUAL_XPATH, document, XPathConstants.NODESET);
                if (individualList != null && individualList.getLength() > 0) {
                    for (i = 0; i < individualList.getLength(); i++) {
                        String content = ((Element) individualList.item(i)).getTextContent();
                        if (content.startsWith("d")) {
                            ro.imeis.add(content.substring("d".length()));
                        } else if (content.startsWith(USER_PREFIX)) {
                            ro.users.add(content.substring(USER_PREFIX.length()));
                        }
                    }
                }
                NodeList timeStartList = (NodeList) xPath.evaluate(TIME_START_XPATH, document, XPathConstants.NODESET);
                if (timeStartList != null && timeStartList.getLength() > 0) {
                    ro.startTime = getTime(((Element) timeStartList.item(0)).getTextContent());
                }
                NodeList timeEndList = (NodeList) xPath.evaluate(TIME_END_XPATH, document, XPathConstants.NODESET);
                if (timeEndList != null && timeEndList.getLength() > 0) {
                    ro.endTime = getTime(((Element) timeEndList.item(0)).getTextContent());
                }
                NodeList displayCountList = (NodeList) xPath.evaluate(DISPLAY_COUNT_XPATH, document, XPathConstants.NODESET);
                if (displayCountList != null && displayCountList.getLength() > 0) {
                    ro.adSupport = Integer.valueOf(((Element) displayCountList.item(0)).getTextContent()).intValue() > 0;
                }
            } catch (ParserConfigurationException e6) {
                e = e6;
                e.printStackTrace();
                return ro;
            } catch (SAXException e7) {
                e2 = e7;
                e2.printStackTrace();
                return ro;
            } catch (IOException e8) {
                e3 = e8;
                e3.printStackTrace();
                return ro;
            } catch (XPathExpressionException e9) {
                e4 = e9;
                e4.printStackTrace();
                return ro;
            } catch (NumberFormatException e10) {
                e5 = e10;
                e5.printStackTrace();
                return ro;
            }
        } catch (ParserConfigurationException e11) {
            e = e11;
            file2 = file;
            e.printStackTrace();
            return ro;
        } catch (SAXException e12) {
            e2 = e12;
            file2 = file;
            e2.printStackTrace();
            return ro;
        } catch (IOException e13) {
            e3 = e13;
            file2 = file;
            e3.printStackTrace();
            return ro;
        } catch (XPathExpressionException e14) {
            e4 = e14;
            file2 = file;
            e4.printStackTrace();
            return ro;
        } catch (NumberFormatException e15) {
            e5 = e15;
            file2 = file;
            e5.printStackTrace();
            return ro;
        }
        return ro;
    }

    public static TrialLimits getTrialLimits(File rightsFile) {
        RightObject ro = parseRightsFile(rightsFile);
        if (ro != null) {
            return new TrialLimits(ro.startTime, ro.endTime);
        }
        return null;
    }

    private static long getTime(String rfc822) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ").parse(rfc822).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return -1;
        }
    }

    private static boolean isRightsFileLegal(File file) {
        try {
            Element root = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(file).getDocumentElement();
            String signaturePart = root.getAttribute(O_EX_ID_CATEGORY);
            NodeList nodes = root.getChildNodes();
            String contentPart = "";
            for (int i = 0; i < nodes.getLength(); i++) {
                Node node = nodes.item(i);
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(contentPart);
                stringBuilder.append(nodeToString(node));
                contentPart = stringBuilder.toString();
            }
            if (!(TextUtils.isEmpty(contentPart) || TextUtils.isEmpty(signaturePart))) {
                byte[] contentBytes = contentPart.getBytes();
                byte[] signatureBytes = convertHexStringToBytes(signaturePart);
                if (RSAUtils.verify(contentBytes, RSAUtils.getPublicKey(PUBLIC_KEY_M, PUBLIC_KEY_E), signatureBytes)) {
                    Log.i(TAG, "standard format rights file verify is legal");
                    return true;
                }
                boolean isLegal = RSAUtils.verify(contentPart.replaceAll("/>", " />").getBytes(), RSAUtils.getPublicKey(PUBLIC_KEY_M, PUBLIC_KEY_E), signatureBytes);
                String str = TAG;
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("old format rights file verify result : ");
                stringBuilder2.append(isLegal);
                Log.i(str, stringBuilder2.toString());
                return isLegal;
            }
        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        } catch (SAXException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        } catch (XPathExpressionException e4) {
            e4.printStackTrace();
        } catch (NumberFormatException e5) {
            e5.printStackTrace();
        } catch (Exception e6) {
            e6.printStackTrace();
        }
        return false;
    }

    private static String nodeToString(Node node) {
        StringWriter sw = new StringWriter();
        try {
            Transformer t = TransformerFactory.newInstance().newTransformer();
            t.setOutputProperty("omit-xml-declaration", "yes");
            t.transform(new DOMSource(node), new StreamResult(sw));
        } catch (TransformerException e) {
            e.printStackTrace();
        }
        return sw.toString();
    }

    private static byte[] convertHexStringToBytes(String hex) {
        byte[] data = new byte[(hex.length() / 2)];
        for (int i = 0; i < hex.length(); i += 2) {
            data[i / 2] = (byte) Integer.parseInt(hex.substring(i, i + 2), 16);
        }
        return data;
    }

    public static void exportFatalLog(String tag, String message) {
        Log.e(tag, message);
        BufferedWriter writer = null;
        try {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(ThemeResources.THEME_MAGIC_PATH);
            stringBuilder.append("drm.log");
            File file = new File(stringBuilder.toString());
            if (file.length() > 102400) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("recreate log file ");
                stringBuilder.append(file.getAbsolutePath());
                Log.i(tag, stringBuilder.toString());
                file.delete();
            }
            if (!file.exists()) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("create log file ");
                stringBuilder.append(file.getAbsolutePath());
                Log.i(tag, stringBuilder.toString());
                file.createNewFile();
            }
            stringBuilder = new StringBuilder();
            stringBuilder.append("export error message into ");
            stringBuilder.append(file.getAbsolutePath());
            Log.i(tag, stringBuilder.toString());
            writer = new BufferedWriter(new FileWriter(file, true));
            stringBuilder = new StringBuilder();
            stringBuilder.append(getContextInfo());
            stringBuilder.append(" ");
            stringBuilder.append(System.currentTimeMillis());
            stringBuilder.append(" ");
            stringBuilder.append(tag);
            stringBuilder.append(" ");
            stringBuilder.append(message);
            writer.append(stringBuilder.toString());
            writer.newLine();
            try {
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            if (writer != null) {
                writer.close();
            }
        } catch (Throwable th) {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
        }
    }

    private static String getContextInfo() {
        return String.format("%s %s_%s %s", new Object[]{Build.DEVICE, VERSION.RELEASE, VERSION.INCREMENTAL, DateFormat.getDateTimeInstance().format(new Date())});
    }

    public static String getEncodedImei(Context c) {
        String imei = getOriginImei(c);
        if (TextUtils.isEmpty(imei)) {
            return "";
        }
        return HashUtils.getMD5(imei);
    }

    private static String getOriginImei(Context c) {
        String imei = TelephonyManagerUtil.getDeviceId();
        if (TextUtils.isEmpty(imei)) {
            return "";
        }
        return imei;
    }
}
