package com.miui.internal.component.plugin;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class PluginManifestParser {
    protected static final String ATTR_GROUP = "group";
    protected static final String ATTR_LEVEL = "level";
    protected static final String ATTR_LOCATION = "location";
    protected static final String ATTR_MIN_CAPATIBLE_LEVEL = "minCapatibleLevel";
    protected static final String ATTR_MIN_LEVEL = "minLevel";
    protected static final String ATTR_NAME = "name";
    protected static final String ATTR_OPTIONAL = "optional";
    protected static final String ATTR_RESOURCES = "resources";
    protected static final String ATTR_TARGET_LEVEL = "targetLevel";
    protected static final String ATTR_VERSION_CODE = "versionCode";
    protected static final String ATTR_VERSION_NAME = "versionName";
    protected static final String ATTR_VISIBILITY = "visibility";
    protected static final String ELEMENT_ACTIVITY_EXTENSION = "activity-extension";
    protected static final String ELEMENT_ACTIVITY_OUTLET = "activity-outlet";
    protected static final String ELEMENT_DEPENDENCIES = "dependencies";
    protected static final String ELEMENT_DEPENDENCY = "dependency";
    protected static final String ELEMENT_EXTENSIONS = "extensions";
    protected static final String ELEMENT_FUNCTION_EXTENSION = "function-extension";
    protected static final String ELEMENT_FUNCTION_OUTLET = "function-outlet";
    protected static final String ELEMENT_OUTLETS = "outlets";
    protected static final String ELEMENT_PLUGIN = "plugin";

    public Plugin parsePlugin(File file) throws IOException, PluginParseException {
        return parsePlugin(new FileInputStream(file));
    }

    public Plugin parsePlugin(InputStream inputStream) throws IOException, PluginParseException {
        Plugin plugin = new Plugin();
        try {
            a(DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputStream).getDocumentElement(), plugin);
            return plugin;
        } catch (ParserConfigurationException e) {
            e.printStackTrace();
            throw new PluginParseException();
        } catch (SAXException e2) {
            e2.printStackTrace();
            throw new PluginParseException();
        } catch (Exception e3) {
            e3.printStackTrace();
            throw new PluginParseException();
        }
    }

    private String a(Element element, String str, boolean z, String str2) throws PluginParseException {
        String attribute = element.getAttribute(str);
        if (attribute != null && !"".equals(attribute)) {
            return attribute;
        }
        if (!z) {
            return str2;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("missing attribute ");
        stringBuilder.append(str);
        stringBuilder.append(" in element ");
        stringBuilder.append(element.getTagName());
        throw new PluginParseException(stringBuilder.toString());
    }

    private String a(Element element, String str) throws PluginParseException {
        return a(element, str, true, null);
    }

    private String a(Element element, String str, String str2) throws PluginParseException {
        return a(element, str, false, str2);
    }

    private boolean a(Element element, String str, boolean z) throws PluginParseException {
        return Boolean.parseBoolean(a(element, str, String.valueOf(z)));
    }

    private int a(Element element, String str, int i) throws PluginParseException {
        return Integer.parseInt(a(element, str, String.valueOf(i)));
    }

    private Demand a(Element element, String str, Demand demand) throws PluginParseException {
        return Demand.valueOf(a(element, str, demand.name()).toUpperCase());
    }

    private AccessPermission a(Element element, String str, AccessPermission accessPermission) throws PluginParseException {
        return AccessPermission.valueOf(a(element, str, accessPermission.name()).toUpperCase());
    }

    private void a(Element element, Plugin plugin) throws PluginParseException {
        plugin.setName(a(element, "name"));
        plugin.setGroup(a(element, ATTR_GROUP, plugin.getName()));
        int i = 0;
        plugin.setVersionCode(a(element, ATTR_VERSION_CODE, 0));
        plugin.setVersionName(a(element, ATTR_VERSION_NAME, String.valueOf(plugin.getVersionCode())));
        plugin.setLevel(a(element, "level", plugin.getVersionCode()));
        plugin.setMinCapatibleLevel(a(element, ATTR_MIN_CAPATIBLE_LEVEL, plugin.getLevel()));
        plugin.setResources(a(element, ATTR_RESOURCES, AccessPermission.PRIVATE));
        NodeList childNodes = element.getChildNodes();
        while (i < childNodes.getLength()) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == (short) 1) {
                Element element2 = (Element) item;
                String tagName = element2.getTagName();
                if (ELEMENT_DEPENDENCIES.equals(tagName)) {
                    b(element2, plugin);
                } else if (ELEMENT_EXTENSIONS.equals(tagName)) {
                    c(element2, plugin);
                } else if (ELEMENT_OUTLETS.equals(tagName)) {
                    d(element2, plugin);
                }
            }
            i++;
        }
    }

    private void b(Element element, Plugin plugin) throws PluginParseException {
        NodeList childNodes = element.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            boolean z = true;
            if (item.getNodeType() == (short) 1) {
                Element element2 = (Element) item;
                if (ELEMENT_DEPENDENCY.equals(element2.getTagName())) {
                    Dependency dependency = new Dependency();
                    dependency.setName(a(element2, "name"));
                    if (a(element2, ATTR_RESOURCES, Demand.PROHIBITED) != Demand.REQUIRED) {
                        z = false;
                    }
                    dependency.setResourcesRequired(z);
                    dependency.setOptional(a(element2, ATTR_OPTIONAL, false));
                    dependency.setMinLevel(a(element2, ATTR_MIN_LEVEL, 0));
                    dependency.setTargetLevel(a(element2, ATTR_TARGET_LEVEL, 0));
                    plugin.addDependency(dependency);
                }
            }
        }
    }

    private void c(Element element, Plugin plugin) throws PluginParseException {
        NodeList childNodes = element.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == (short) 1) {
                Element element2 = (Element) item;
                String tagName = element2.getTagName();
                if (ELEMENT_ACTIVITY_EXTENSION.equals(tagName) || ELEMENT_FUNCTION_EXTENSION.equals(tagName)) {
                    Extension extension = new Extension();
                    extension.setName(a(element2, "name"));
                    extension.setLocation(a(element2, "location"));
                    plugin.addExtension(extension);
                }
            }
        }
    }

    private void d(Element element, Plugin plugin) throws PluginParseException {
        NodeList childNodes = element.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == (short) 1) {
                Element element2 = (Element) item;
                String tagName = element2.getTagName();
                if (ELEMENT_ACTIVITY_OUTLET.equals(tagName) || ELEMENT_FUNCTION_OUTLET.equals(tagName)) {
                    Outlet outlet = new Outlet();
                    outlet.setName(a(element2, "name"));
                    outlet.setVisibility(a(element, ATTR_VISIBILITY, AccessPermission.PUBLIC));
                    plugin.addOutlet(outlet);
                }
            }
        }
    }
}
