package com.adobe.xmp.impl.xpath;

import java.util.ArrayList;
import java.util.List;

public class XMPPath {
    private List segments = new ArrayList(5);

    public void add(XMPPathSegment segment) {
        this.segments.add(segment);
    }

    public XMPPathSegment getSegment(int index) {
        return (XMPPathSegment) this.segments.get(index);
    }

    public int size() {
        return this.segments.size();
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        for (int index = 1; index < size(); index++) {
            result.append(getSegment(index));
            if (index < size() - 1) {
                int kind = getSegment(index + 1).getKind();
                if (kind == 1 || kind == 2) {
                    result.append('/');
                }
            }
        }
        return result.toString();
    }
}
