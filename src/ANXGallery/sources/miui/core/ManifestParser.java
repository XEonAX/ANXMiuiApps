package miui.core;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.Log;
import com.miui.internal.util.PackageConstants;
import com.miui.internal.util.ResourcesUtils;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import miui.R;
import miui.module.Dependency;
import miui.module.Dependency.Level;
import miui.module.Module;
import org.xmlpull.v1.XmlPullParserException;

public class ManifestParser {
    private static final String ELEMENT_DEPENDENCIES = "dependencies";
    private static final String ELEMENT_DEPENDENCY = "dependency";
    private static final String fR = "com.miui.sdk.manifest";
    private static final String xE = "miui_manifest";
    private static final String xF = "manifest";
    private static final String xG = "uses-sdk";
    private static final String xH = "modules";
    private static final String xI = "module";
    private static final Map<String, String> xJ = new HashMap(3);
    private XmlResourceParser ge;
    private Resources nY;

    static {
        xJ.put(PackageConstants.PACKAGE_NAME, "miui");
        xJ.put("com.miui.system", "miui.system");
        xJ.put("com.miui.rom", "android.miui");
    }

    private ManifestParser(Resources resources, XmlResourceParser xmlResourceParser) {
        this.nY = resources;
        this.ge = xmlResourceParser;
    }

    public static ManifestParser create(Context context) {
        Bundle bundle;
        try {
            bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            bundle = null;
        }
        return createFromResources(context.getResources(), context.getPackageName(), bundle);
    }

    public static ManifestParser createFromResId(Context context, int i) {
        Resources resources = context.getResources();
        return createFromXmlParser(resources, i == 0 ? null : resources.getXml(i));
    }

    public static ManifestParser createFromArchive(PackageManager packageManager, String str) {
        ApplicationInfo applicationInfo = packageManager.getPackageArchiveInfo(str, 128).applicationInfo;
        return createFromResources(ResourcesUtils.createResources(str), applicationInfo.packageName, applicationInfo.metaData);
    }

    public static ManifestParser createFromPackage(PackageManager packageManager, String str) {
        try {
            return createFromResources(ResourcesUtils.createResources(packageManager.getApplicationInfo(str, 128).sourceDir), str, packageManager.getApplicationInfo(str, 128).metaData);
        } catch (NameNotFoundException e) {
            String str2 = PackageConstants.LOG_TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("cannot find package ");
            stringBuilder.append(str);
            Log.w(str2, stringBuilder.toString());
            return createFromXmlParser(null, null);
        }
    }

    public static ManifestParser createFromResources(Resources resources, String str, Bundle bundle) {
        int i;
        if (bundle != null) {
            i = bundle.getInt(fR);
        } else {
            i = 0;
        }
        if (i == 0) {
            String str2 = (String) xJ.get(str);
            if (str2 != null) {
                str = str2;
            }
            i = resources.getIdentifier(xE, "xml", str);
        }
        return createFromXmlParser(resources, i == 0 ? null : resources.getXml(i));
    }

    public static ManifestParser createFromXmlParser(Resources resources, XmlResourceParser xmlResourceParser) {
        return new ManifestParser(resources, xmlResourceParser);
    }

    public Manifest parse(Map<String, Object> map) {
        if (map == null) {
            HashMap hashMap = new HashMap();
        }
        Manifest manifest = new Manifest();
        if (this.ge != null) {
            try {
                Resources resources = this.nY;
                XmlResourceParser xmlResourceParser = this.ge;
                while (true) {
                    int next = xmlResourceParser.next();
                    if (next == 2 || next == 1) {
                    }
                }
                if (xF.equals(xmlResourceParser.getName())) {
                    a(manifest, resources, xmlResourceParser);
                }
            } catch (XmlPullParserException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            } catch (Throwable th) {
                this.ge.close();
            }
            this.ge.close();
        }
        return a(manifest);
    }

    private void a(Manifest manifest, Resources resources, XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.MiuiManifest);
        Module module = new Module();
        module.setName(obtainAttributes.getString(R.styleable.MiuiManifest_name));
        module.setLevel(obtainAttributes.getInteger(R.styleable.MiuiManifest_level, 0));
        module.setContent(obtainAttributes.getInteger(R.styleable.MiuiManifest_moduleContent, 0));
        manifest.setModule(module);
        obtainAttributes.recycle();
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlResourceParser.getDepth() <= depth) {
                return;
            }
            if (next != 3) {
                if (next != 4) {
                    String name = xmlResourceParser.getName();
                    if (xG.equals(name)) {
                        b(manifest, resources, xmlResourceParser);
                    } else if (xH.equals(name)) {
                        c(manifest, resources, xmlResourceParser);
                    } else if (ELEMENT_DEPENDENCIES.equals(name)) {
                        e(manifest, resources, xmlResourceParser);
                    }
                }
            }
        }
    }

    private void b(Manifest manifest, Resources resources, XmlResourceParser xmlResourceParser) {
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.MiuiManifestUsesSdk);
        Level level = new Level();
        level.setMinLevel(obtainAttributes.getInteger(R.styleable.MiuiManifestUsesSdk_minLevel, b(level)));
        level.setTargetLevel(obtainAttributes.getInteger(R.styleable.MiuiManifestUsesSdk_targetLevel, c(level)));
        level.setMaxLevel(obtainAttributes.getInteger(R.styleable.MiuiManifestUsesSdk_maxLevel, d(level)));
        manifest.setSdkDependency(a(level));
        obtainAttributes.recycle();
    }

    private void c(Manifest manifest, Resources resources, XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlResourceParser.getDepth() <= depth) {
                return;
            }
            if (next != 3) {
                if (next != 4) {
                    if (xI.equals(xmlResourceParser.getName())) {
                        d(manifest, resources, xmlResourceParser);
                    }
                }
            }
        }
    }

    private void d(Manifest manifest, Resources resources, XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.MiuiManifestModule);
        String string = obtainAttributes.getString(R.styleable.MiuiManifestModule_name);
        Dependency dependency = new Dependency();
        dependency.setName(string);
        dependency.setType(obtainAttributes.getInt(R.styleable.MiuiManifestModule_dependencyType, 0));
        Level level = new Level();
        level.setMinLevel(obtainAttributes.getInteger(R.styleable.MiuiManifestModule_minLevel, b(level)));
        level.setTargetLevel(obtainAttributes.getInteger(R.styleable.MiuiManifestModule_targetLevel, c(level)));
        level.setMaxLevel(obtainAttributes.getInteger(R.styleable.MiuiManifestModule_maxLevel, d(level)));
        dependency.setLevel(level);
        manifest.addDependency(string, dependency);
        obtainAttributes.recycle();
    }

    private void e(Manifest manifest, Resources resources, XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlResourceParser.getDepth() <= depth) {
                return;
            }
            if (next != 3) {
                if (next != 4) {
                    if (ELEMENT_DEPENDENCY.equals(xmlResourceParser.getName())) {
                        f(manifest, resources, xmlResourceParser);
                    }
                }
            }
        }
    }

    private void f(Manifest manifest, Resources resources, XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.MiuiManifestModule);
        String string = obtainAttributes.getString(R.styleable.MiuiManifestModule_name);
        Dependency dependency = new Dependency();
        dependency.setName(string);
        dependency.setType(2);
        Level level = new Level();
        level.setMinLevel(obtainAttributes.getInteger(R.styleable.MiuiManifestModule_minLevel, b(level)));
        level.setTargetLevel(obtainAttributes.getInteger(R.styleable.MiuiManifestModule_targetLevel, c(level)));
        level.setMaxLevel(obtainAttributes.getInteger(R.styleable.MiuiManifestModule_maxLevel, d(level)));
        dependency.setLevel(level);
        manifest.addDependency(string, dependency);
        obtainAttributes.recycle();
    }

    private Manifest a(Manifest manifest) {
        if (manifest.getModule() == null) {
            manifest.setModule(new Module());
        }
        if (manifest.getSdkDependency() == null) {
            Level level = new Level();
            level.setMinLevel(b(level));
            level.setTargetLevel(c(level));
            level.setMaxLevel(d(level));
            manifest.setSdkDependency(a(level));
        }
        return manifest;
    }

    private Dependency a(Level level) {
        Dependency dependency = new Dependency();
        dependency.setName(PackageConstants.PACKAGE_NAME);
        dependency.setType(2);
        dependency.setLevel(level);
        return dependency;
    }

    private int b(Level level) {
        return 1;
    }

    private int c(Level level) {
        return level.getMinLevel();
    }

    private int d(Level level) {
        return Integer.MAX_VALUE;
    }
}
