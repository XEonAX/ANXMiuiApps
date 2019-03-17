package com.alibaba.fastjson.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import mtopsdk.common.util.SymbolExpUtil;

public class ServiceLoader {
    private static final String PREFIX = "META-INF/services/";
    private static final Set<String> loadedUrls = new HashSet();

    public static <T> Set<T> load(Class<T> clazz, ClassLoader classLoader) {
        if (classLoader == null) {
            return Collections.emptySet();
        }
        Set<T> services = new HashSet();
        String path = PREFIX + clazz.getName();
        Set<String> serviceNames = new HashSet();
        try {
            Enumeration<URL> urls = classLoader.getResources(path);
            while (urls.hasMoreElements()) {
                URL url = (URL) urls.nextElement();
                if (!loadedUrls.contains(url.toString())) {
                    load(url, (Set) serviceNames);
                    loadedUrls.add(url.toString());
                }
            }
        } catch (IOException e) {
        }
        for (String serviceName : serviceNames) {
            try {
                services.add(classLoader.loadClass(serviceName).newInstance());
            } catch (Exception e2) {
            }
        }
        return services;
    }

    public static void load(URL url, Set<String> set) throws IOException {
        Throwable th;
        InputStream is = null;
        BufferedReader reader = null;
        try {
            is = url.openStream();
            BufferedReader reader2 = new BufferedReader(new InputStreamReader(is, SymbolExpUtil.CHARSET_UTF8));
            while (true) {
                try {
                    String line = reader2.readLine();
                    if (line == null) {
                        IOUtils.close(reader2);
                        IOUtils.close(is);
                        return;
                    }
                    int ci = line.indexOf(35);
                    if (ci >= 0) {
                        line = line.substring(0, ci);
                    }
                    line = line.trim();
                    if (line.length() != 0) {
                        set.add(line);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    reader = reader2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            IOUtils.close(reader);
            IOUtils.close(is);
            throw th;
        }
    }
}
