package com.adobe.xmp.impl;

import com.adobe.xmp.XMPException;
import com.adobe.xmp.options.PropertyOptions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

class XMPNode implements Comparable {
    static final /* synthetic */ boolean $assertionsDisabled = (!XMPNode.class.desiredAssertionStatus());
    private boolean alias;
    private List children;
    private boolean hasAliases;
    private boolean hasValueChild;
    private boolean implicit;
    private String name;
    private PropertyOptions options;
    private XMPNode parent;
    private List qualifier;
    private String value;

    public XMPNode(String name, String value, PropertyOptions options) {
        this.children = null;
        this.qualifier = null;
        this.options = null;
        this.name = name;
        this.value = value;
        this.options = options;
    }

    public XMPNode(String name, PropertyOptions options) {
        this(name, null, options);
    }

    public XMPNode getParent() {
        return this.parent;
    }

    public XMPNode getChild(int index) {
        return (XMPNode) getChildren().get(index - 1);
    }

    public void addChild(XMPNode node) throws XMPException {
        assertChildNotExisting(node.getName());
        node.setParent(this);
        getChildren().add(node);
    }

    public void addChild(int index, XMPNode node) throws XMPException {
        assertChildNotExisting(node.getName());
        node.setParent(this);
        getChildren().add(index - 1, node);
    }

    public void replaceChild(int index, XMPNode node) {
        node.setParent(this);
        getChildren().set(index - 1, node);
    }

    public void removeChild(int itemIndex) {
        getChildren().remove(itemIndex - 1);
        cleanupChildren();
    }

    public void removeChild(XMPNode node) {
        getChildren().remove(node);
        cleanupChildren();
    }

    protected void cleanupChildren() {
        if (this.children.isEmpty()) {
            this.children = null;
        }
    }

    public void removeChildren() {
        this.children = null;
    }

    public int getChildrenLength() {
        return this.children != null ? this.children.size() : 0;
    }

    public XMPNode findChildByName(String expr) {
        return find(getChildren(), expr);
    }

    public XMPNode getQualifier(int index) {
        return (XMPNode) getQualifier().get(index - 1);
    }

    public int getQualifierLength() {
        return this.qualifier != null ? this.qualifier.size() : 0;
    }

    public void addQualifier(XMPNode qualNode) throws XMPException {
        int i = 0;
        assertQualifierNotExisting(qualNode.getName());
        qualNode.setParent(this);
        qualNode.getOptions().setQualifier(true);
        getOptions().setHasQualifiers(true);
        if (qualNode.isLanguageNode()) {
            this.options.setHasLanguage(true);
            getQualifier().add(0, qualNode);
        } else if (qualNode.isTypeNode()) {
            this.options.setHasType(true);
            List qualifier = getQualifier();
            if (this.options.getHasLanguage()) {
                i = 1;
            }
            qualifier.add(i, qualNode);
        } else {
            getQualifier().add(qualNode);
        }
    }

    public void removeQualifier(XMPNode qualNode) {
        PropertyOptions opts = getOptions();
        if (qualNode.isLanguageNode()) {
            opts.setHasLanguage(false);
        } else if (qualNode.isTypeNode()) {
            opts.setHasType(false);
        }
        getQualifier().remove(qualNode);
        if (this.qualifier.isEmpty()) {
            opts.setHasQualifiers(false);
            this.qualifier = null;
        }
    }

    public void removeQualifiers() {
        PropertyOptions opts = getOptions();
        opts.setHasQualifiers(false);
        opts.setHasLanguage(false);
        opts.setHasType(false);
        this.qualifier = null;
    }

    public XMPNode findQualifierByName(String expr) {
        return find(this.qualifier, expr);
    }

    public boolean hasChildren() {
        return this.children != null && this.children.size() > 0;
    }

    public Iterator iterateChildren() {
        if (this.children != null) {
            return getChildren().iterator();
        }
        return Collections.EMPTY_LIST.listIterator();
    }

    public boolean hasQualifier() {
        return this.qualifier != null && this.qualifier.size() > 0;
    }

    public Iterator iterateQualifier() {
        if (this.qualifier == null) {
            return Collections.EMPTY_LIST.iterator();
        }
        final Iterator it = getQualifier().iterator();
        return new Iterator() {
            public boolean hasNext() {
                return it.hasNext();
            }

            public Object next() {
                return it.next();
            }

            public void remove() {
                throw new UnsupportedOperationException("remove() is not allowed due to the internal contraints");
            }
        };
    }

    public Object clone() {
        PropertyOptions newOptions;
        try {
            newOptions = new PropertyOptions(getOptions().getOptions());
        } catch (XMPException e) {
            newOptions = new PropertyOptions();
        }
        XMPNode newNode = new XMPNode(this.name, this.value, newOptions);
        cloneSubtree(newNode);
        return newNode;
    }

    public void cloneSubtree(XMPNode destination) {
        try {
            Iterator it = iterateChildren();
            while (it.hasNext()) {
                destination.addChild((XMPNode) ((XMPNode) it.next()).clone());
            }
            it = iterateQualifier();
            while (it.hasNext()) {
                destination.addQualifier((XMPNode) ((XMPNode) it.next()).clone());
            }
        } catch (XMPException e) {
            if (!$assertionsDisabled) {
                throw new AssertionError();
            }
        }
    }

    public int compareTo(Object xmpNode) {
        if (getOptions().isSchemaNode()) {
            return this.value.compareTo(((XMPNode) xmpNode).getValue());
        }
        return this.name.compareTo(((XMPNode) xmpNode).getName());
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public PropertyOptions getOptions() {
        if (this.options == null) {
            this.options = new PropertyOptions();
        }
        return this.options;
    }

    public void setOptions(PropertyOptions options) {
        this.options = options;
    }

    public boolean isImplicit() {
        return this.implicit;
    }

    public void setImplicit(boolean implicit) {
        this.implicit = implicit;
    }

    public boolean getHasAliases() {
        return this.hasAliases;
    }

    public void setHasAliases(boolean hasAliases) {
        this.hasAliases = hasAliases;
    }

    public boolean isAlias() {
        return this.alias;
    }

    public void setAlias(boolean alias) {
        this.alias = alias;
    }

    public boolean getHasValueChild() {
        return this.hasValueChild;
    }

    public void setHasValueChild(boolean hasValueChild) {
        this.hasValueChild = hasValueChild;
    }

    private boolean isLanguageNode() {
        return "xml:lang".equals(this.name);
    }

    private boolean isTypeNode() {
        return "rdf:type".equals(this.name);
    }

    private List getChildren() {
        if (this.children == null) {
            this.children = new ArrayList(0);
        }
        return this.children;
    }

    public List getUnmodifiableChildren() {
        return Collections.unmodifiableList(new ArrayList(getChildren()));
    }

    private List getQualifier() {
        if (this.qualifier == null) {
            this.qualifier = new ArrayList(0);
        }
        return this.qualifier;
    }

    protected void setParent(XMPNode parent) {
        this.parent = parent;
    }

    private XMPNode find(List list, String expr) {
        if (list != null) {
            for (XMPNode child : list) {
                if (child.getName().equals(expr)) {
                    return child;
                }
            }
        }
        return null;
    }

    private void assertChildNotExisting(String childName) throws XMPException {
        if (!"[]".equals(childName) && findChildByName(childName) != null) {
            throw new XMPException("Duplicate property or field node '" + childName + "'", 203);
        }
    }

    private void assertQualifierNotExisting(String qualifierName) throws XMPException {
        if (!"[]".equals(qualifierName) && findQualifierByName(qualifierName) != null) {
            throw new XMPException("Duplicate '" + qualifierName + "' qualifier", 203);
        }
    }
}
