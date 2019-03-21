package com.xiaomi.smack.packet;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.smack.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class CommonPacketExtension implements PacketExtension {
    private String[] mAttributeNames = null;
    private String[] mAttributeValues = null;
    private List<CommonPacketExtension> mChildrenEles = null;
    private String mExtensionElementName;
    private String mNamespace;
    private String mText;

    public CommonPacketExtension(String extensionElementName, String namespace, String[] attributeNames, String[] attributeValues) {
        this.mExtensionElementName = extensionElementName;
        this.mNamespace = namespace;
        this.mAttributeNames = attributeNames;
        this.mAttributeValues = attributeValues;
    }

    public CommonPacketExtension(String extensionElementName, String namespace, String[] attributeNames, String[] attributeValues, String text, List<CommonPacketExtension> children) {
        this.mExtensionElementName = extensionElementName;
        this.mNamespace = namespace;
        this.mAttributeNames = attributeNames;
        this.mAttributeValues = attributeValues;
        this.mText = text;
        this.mChildrenEles = children;
    }

    public String getElementName() {
        return this.mExtensionElementName;
    }

    public String getNamespace() {
        return this.mNamespace;
    }

    public String getText() {
        if (TextUtils.isEmpty(this.mText)) {
            return this.mText;
        }
        return StringUtils.unescapeFromXML(this.mText);
    }

    public String toString() {
        return toXML();
    }

    public String toXML() {
        StringBuilder sb = new StringBuilder();
        sb.append("<").append(this.mExtensionElementName);
        if (!TextUtils.isEmpty(this.mNamespace)) {
            sb.append(" ").append("xmlns=").append("\"").append(this.mNamespace).append("\"");
        }
        if (this.mAttributeNames != null && this.mAttributeNames.length > 0) {
            for (int n = 0; n < this.mAttributeNames.length; n++) {
                if (!TextUtils.isEmpty(this.mAttributeValues[n])) {
                    sb.append(" ").append(this.mAttributeNames[n]).append("=\"").append(StringUtils.escapeForXML(this.mAttributeValues[n])).append("\"");
                }
            }
        }
        if (!TextUtils.isEmpty(this.mText)) {
            sb.append(">").append(this.mText).append("</").append(this.mExtensionElementName).append(">");
        } else if (this.mChildrenEles == null || this.mChildrenEles.size() <= 0) {
            sb.append("/>");
        } else {
            sb.append(">");
            for (CommonPacketExtension cmmnPktExt : this.mChildrenEles) {
                sb.append(cmmnPktExt.toXML());
            }
            sb.append("</").append(this.mExtensionElementName).append(">");
        }
        return sb.toString();
    }

    public Bundle toBundle() {
        Bundle b = new Bundle();
        b.putString("ext_ele_name", this.mExtensionElementName);
        b.putString("ext_ns", this.mNamespace);
        b.putString("ext_text", this.mText);
        Bundle attributesBundle = new Bundle();
        if (this.mAttributeNames != null && this.mAttributeNames.length > 0) {
            for (int n = 0; n < this.mAttributeNames.length; n++) {
                attributesBundle.putString(this.mAttributeNames[n], this.mAttributeValues[n]);
            }
        }
        b.putBundle("attributes", attributesBundle);
        if (this.mChildrenEles != null && this.mChildrenEles.size() > 0) {
            b.putParcelableArray("children", toParcelableArray(this.mChildrenEles));
        }
        return b;
    }

    public Parcelable toParcelable() {
        return toBundle();
    }

    public static Parcelable[] toParcelableArray(CommonPacketExtension[] extensions) {
        if (extensions == null) {
            return null;
        }
        Parcelable[] parcelables = new Parcelable[extensions.length];
        for (int i = 0; i < extensions.length; i++) {
            parcelables[i] = extensions[i].toParcelable();
        }
        return parcelables;
    }

    public static Parcelable[] toParcelableArray(List<CommonPacketExtension> extensions) {
        return toParcelableArray((CommonPacketExtension[]) extensions.toArray(new CommonPacketExtension[extensions.size()]));
    }

    public static CommonPacketExtension parseFromBundle(Bundle b) {
        String extensionElement = b.getString("ext_ele_name");
        String extensionNamespace = b.getString("ext_ns");
        String text = b.getString("ext_text");
        Bundle attributesBundle = b.getBundle("attributes");
        Set<String> attributes = attributesBundle.keySet();
        String[] attributeNames = new String[attributes.size()];
        String[] attributeValues = new String[attributes.size()];
        List<CommonPacketExtension> childrenEles = null;
        int index = 0;
        for (String attr : attributes) {
            attributeNames[index] = attr;
            attributeValues[index] = attributesBundle.getString(attr);
            index++;
        }
        if (b.containsKey("children")) {
            Parcelable[] children = b.getParcelableArray("children");
            childrenEles = new ArrayList(children.length);
            for (Parcelable child : children) {
                childrenEles.add(parseFromBundle((Bundle) child));
            }
        }
        return new CommonPacketExtension(extensionElement, extensionNamespace, attributeNames, attributeValues, text, childrenEles);
    }

    public String getAttributeValue(String attributeName) {
        if (attributeName == null) {
            throw new IllegalArgumentException();
        }
        if (this.mAttributeNames != null) {
            for (int i = 0; i < this.mAttributeNames.length; i++) {
                if (attributeName.equals(this.mAttributeNames[i])) {
                    return this.mAttributeValues[i];
                }
            }
        }
        return null;
    }

    public void setText(String text) {
        if (TextUtils.isEmpty(text)) {
            this.mText = text;
        } else {
            this.mText = StringUtils.escapeForXML(text);
        }
    }
}
