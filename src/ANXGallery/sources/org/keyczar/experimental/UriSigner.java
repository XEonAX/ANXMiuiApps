package org.keyczar.experimental;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.TreeSet;
import org.keyczar.Signer;
import org.keyczar.annotations.Experimental;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.KeyczarReader;

@Experimental
public class UriSigner {
    private static final String DEFAULT_SIG_PARAM = "sig";
    private Signer signer;

    public UriSigner(KeyczarReader keyczarReader) throws KeyczarException {
        this.signer = new Signer(keyczarReader);
    }

    public UriSigner(String str) throws KeyczarException {
        this.signer = new Signer(str);
    }

    public URI sign(URI uri) throws KeyczarException {
        return sign(uri, DEFAULT_SIG_PARAM);
    }

    public URI sign(URI uri, String str) throws KeyczarException {
        try {
            URI canonicalUri = canonicalUri(uri);
            String str2 = str + "=" + this.signer.sign(canonicalUri.toASCIIString());
            String query = canonicalUri.getQuery();
            if (query != null) {
                str2 = query + "&" + str2;
            }
            try {
                return new URI(canonicalUri.getScheme(), canonicalUri.getAuthority(), canonicalUri.getPath(), str2, canonicalUri.getFragment());
            } catch (Throwable e) {
                throw new KeyczarException(e);
            }
        } catch (Throwable e2) {
            throw new KeyczarException(e2);
        }
    }

    public boolean verify(URI uri) throws KeyczarException {
        return verify(uri, DEFAULT_SIG_PARAM);
    }

    public boolean verify(URI uri, String str) throws KeyczarException {
        String str2 = null;
        if (uri == null) {
            return false;
        }
        String query = uri.getQuery();
        if (query == null) {
            return false;
        }
        StringBuffer stringBuffer = new StringBuffer();
        String[] split = query.split("&");
        int length = split.length;
        int i = 0;
        while (i < length) {
            query = split[i];
            if (query.startsWith(str)) {
                String[] split2 = query.split("=");
                if (split2.length == 2) {
                    query = split2[1];
                }
                query = str2;
            } else {
                stringBuffer.append(query).append('&');
                query = str2;
            }
            i++;
            str2 = query;
        }
        if (str2 == null) {
            return false;
        }
        try {
            URI uri2;
            if (stringBuffer.length() > 0) {
                stringBuffer.deleteCharAt(stringBuffer.length() - 1);
                uri2 = new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), stringBuffer.toString(), uri.getFragment());
            } else {
                uri2 = new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), null, uri.getFragment());
            }
            return this.signer.verify(canonicalUri(uri2).toASCIIString(), str2);
        } catch (URISyntaxException e) {
            return false;
        }
    }

    private String canonicalQuery(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        TreeSet treeSet = new TreeSet();
        if (str != null) {
            for (Object add : str.split("&")) {
                treeSet.add(add);
            }
            Iterator it = treeSet.iterator();
            while (it.hasNext()) {
                stringBuffer.append((String) it.next()).append('&');
            }
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        return stringBuffer.toString();
    }

    private URI canonicalUri(URI uri) throws URISyntaxException {
        if (uri == null) {
            return null;
        }
        return new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), canonicalQuery(uri.getQuery()), uri.getFragment());
    }
}
