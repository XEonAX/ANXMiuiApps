package com.adobe.xmp;

import com.adobe.xmp.properties.XMPAliasInfo;

public interface XMPSchemaRegistry {
    XMPAliasInfo findAlias(String str);

    String getNamespacePrefix(String str);

    String getNamespaceURI(String str);

    String registerNamespace(String str, String str2) throws XMPException;
}
