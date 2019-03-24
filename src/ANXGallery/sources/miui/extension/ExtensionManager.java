package miui.extension;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import com.miui.internal.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import miui.util.AppConstants;
import miui.util.ResourceHelper;

public class ExtensionManager {
    private static final String TAG = "ExtensionManager";
    private static final String xX = "com.miui.sdk.extension";
    private static final String xY = "miui_extension";
    private static final String xZ = "extension";
    private static final String ya = "miui.system";
    private HashMap<String, ArrayList<Extension>> yb;

    private static class Holder {
        static final ExtensionManager yc = new ExtensionManager(AppConstants.getCurrentApplication());

        private Holder() {
        }
    }

    public static ExtensionManager getInstance() {
        return Holder.yc;
    }

    private ExtensionManager(Context context) {
        this.yb = new HashMap();
        n(context);
    }

    public void invoke(String str, String str2, Object... objArr) {
        ArrayList arrayList = (ArrayList) this.yb.get(str);
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Extension) it.next()).invoke(str2, objArr);
            }
        }
    }

    private void n(Context context) {
        XmlResourceParser loadXml = ResourceHelper.loadXml(context, xX, xY, ya);
        if (loadXml != null) {
            AttributeSet asAttributeSet = Xml.asAttributeSet(loadXml);
            try {
                for (int next = loadXml.next(); next != 1; next = loadXml.next()) {
                    if (next == 2) {
                        if (xZ.equals(loadXml.getName())) {
                            Extension a = a(context, asAttributeSet);
                            String target = a.getTarget();
                            ArrayList arrayList = (ArrayList) this.yb.get(target);
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                this.yb.put(target, arrayList);
                            }
                            arrayList.add(a);
                        }
                    }
                }
            } catch (Throwable e) {
                Log.e(TAG, "Fail to parse CTA config", e);
            } catch (Throwable e2) {
                Log.e(TAG, "Fail to parse CTA config", e2);
            } catch (Throwable th) {
                loadXml.close();
            }
            loadXml.close();
        }
    }

    private Extension a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DynamicExtension);
        String string = obtainStyledAttributes.getString(R.styleable.DynamicExtension_extensionTarget);
        String string2 = obtainStyledAttributes.getString(R.styleable.DynamicExtension_extensionAction);
        String string3 = obtainStyledAttributes.getString(R.styleable.DynamicExtension_extensionInvoker);
        obtainStyledAttributes.recycle();
        return new Extension(string, string2, string3);
    }
}
