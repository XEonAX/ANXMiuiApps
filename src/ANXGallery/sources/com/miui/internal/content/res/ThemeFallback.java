package com.miui.internal.content.res;

import android.content.res.MiuiResources;
import com.miui.internal.content.res.ThemeDefinition.FallbackInfo;
import com.miui.internal.content.res.ThemeDefinition.ResourceType;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.util.HashMap;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import miui.util.IOUtils;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ThemeFallback {
    private static final String ATTR_NAME = "name";
    private static final String ATTR_PACKAGE = "package";
    public HashMap<String, FallbackInfo> mFallbackInfoMap = new HashMap();

    public static ThemeFallback parseThemeFallback(MiuiResources resource, InputStream is, String defPkgName) {
        Exception e;
        Throwable th;
        InputStream inputStream;
        ThemeFallback ret = new ThemeFallback();
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            try {
                NodeList list = builder.parse(new BufferedInputStream(is, 8192)).getDocumentElement().getChildNodes();
                short s = (short) 1;
                int index = list.getLength() - 1;
                while (index >= 0) {
                    DocumentBuilder builder2;
                    DocumentBuilderFactory factory2;
                    Node temp = list.item(index);
                    if (temp.getNodeType() == s) {
                        Element element = (Element) temp;
                        String name = element.getAttribute("name");
                        if (!ThemeToolUtils.isEmpty(name)) {
                            ResourceType resType = ResourceType.getType(element.getNodeName());
                            if (resType != ResourceType.NONE) {
                                String pkg = element.getAttribute("package");
                                if (ThemeToolUtils.isEmpty(pkg)) {
                                    pkg = defPkgName;
                                }
                                if (resType == ResourceType.DRAWABLE) {
                                    String value = element.getTextContent();
                                    if (!ThemeToolUtils.isEmpty(value)) {
                                        FallbackInfo f = new FallbackInfo();
                                        builder2 = builder;
                                        f.mResPkgName = defPkgName;
                                        factory2 = factory;
                                        f.mResType = ResourceType.DRAWABLE;
                                        f.mResOriginalName = name.trim();
                                        f.mResFallbackName = value.trim();
                                        f.mResFallbackPkgName = pkg;
                                        ret.mFallbackInfoMap.put(f.mResOriginalName, f);
                                        index--;
                                        builder = builder2;
                                        factory = factory2;
                                        s = (short) 1;
                                    }
                                }
                                factory2 = factory;
                                builder2 = builder;
                                index--;
                                builder = builder2;
                                factory = factory2;
                                s = (short) 1;
                            }
                        }
                    }
                    factory2 = factory;
                    builder2 = builder;
                    index--;
                    builder = builder2;
                    factory = factory2;
                    s = (short) 1;
                }
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
        } catch (Exception e3) {
            e = e3;
            inputStream = is;
            e.printStackTrace();
            IOUtils.closeQuietly(is);
            return ret;
        } catch (Throwable th3) {
            th = th3;
            inputStream = is;
            IOUtils.closeQuietly(is);
            throw th;
        }
        IOUtils.closeQuietly(is);
        return ret;
    }
}
