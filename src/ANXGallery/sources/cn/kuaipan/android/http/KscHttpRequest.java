package cn.kuaipan.android.http;

import android.net.Uri;
import android.util.Log;
import cn.kuaipan.android.http.multipart.ByteArrayValuePair;
import cn.kuaipan.android.http.multipart.FilePart;
import cn.kuaipan.android.http.multipart.FileValuePair;
import cn.kuaipan.android.http.multipart.MultipartEntity;
import cn.kuaipan.android.http.multipart.Part;
import cn.kuaipan.android.http.multipart.StringPart;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.entity.AbstractHttpEntity;
import org.keyczar.Keyczar;

public class KscHttpRequest {
    private final IKscDecoder mDecoder;
    private final IKscTransferListener mListener;
    private final HttpMethod mMethod;
    private AbstractHttpEntity mPostEntity;
    private final ArrayList<NameValuePair> mPostForm;
    private HttpUriRequest mRequest;
    private boolean mTryGzip;
    private Uri mUri;

    public enum HttpMethod {
        GET,
        POST
    }

    public KscHttpRequest() {
        this((Uri) null);
    }

    public KscHttpRequest(Uri uri) {
        this(null, uri, null, null);
    }

    public KscHttpRequest(HttpMethod method, String uriString, IKscDecoder decoder, IKscTransferListener listener) {
        this(method, Uri.parse(uriString), null, decoder, listener);
    }

    public KscHttpRequest(HttpMethod method, Uri uri, IKscDecoder decoder, IKscTransferListener listener) {
        this(method, uri, null, decoder, listener);
    }

    public KscHttpRequest(HttpMethod method, Uri uri, AbstractHttpEntity postEntity, IKscDecoder decoder, IKscTransferListener listener) {
        this.mPostForm = new ArrayList();
        this.mTryGzip = false;
        this.mMethod = method;
        this.mUri = uri;
        this.mPostEntity = postEntity;
        this.mDecoder = decoder;
        this.mListener = listener;
    }

    private void checkRequest() {
        if (this.mRequest != null) {
            throw new RuntimeException("HttpRequest has been created. All input can't be changed.");
        }
    }

    private static ArrayList<NameValuePair> getMergedPostValue(AbstractHttpEntity entity, List<NameValuePair> postForm) {
        ArrayList<NameValuePair> pairs = new ArrayList();
        if (entity != null) {
            try {
                pairs.addAll(URLEncodedUtils.parse(entity));
            } catch (IOException e) {
                Log.e("KscHttpRequest", "Failed parse an user entity.", e);
                throw new RuntimeException("Failed parse an user entity. The user entity should be parseable by URLEncodedUtils.parse(HttpEntity)", e);
            }
        }
        pairs.addAll(postForm);
        return pairs;
    }

    public void setPostEntity(AbstractHttpEntity entity) {
        checkRequest();
        this.mPostEntity = entity;
        if (!isFormEntity(entity)) {
            this.mPostForm.clear();
        }
    }

    public HttpUriRequest getRequest() {
        if (this.mRequest == null) {
            this.mRequest = createHttpRequest();
        }
        return this.mRequest;
    }

    private HttpUriRequest createHttpRequest() {
        if (isValidUri(this.mUri)) {
            String uri = this.mUri.toString();
            HttpMethod method = this.mMethod;
            if (method == null) {
                method = (this.mPostEntity == null && this.mPostForm.isEmpty()) ? HttpMethod.GET : HttpMethod.POST;
            }
            HttpUriRequest result = null;
            switch (method) {
                case GET:
                    result = new HttpGet(uri);
                    if (!(this.mPostEntity == null && this.mPostForm.isEmpty())) {
                        Log.w("KscHttpRequest", "Post data is not empty, but method is GET. All post data is lost.");
                        break;
                    }
                case POST:
                    HttpPost post = new HttpPost(uri);
                    if (!this.mPostForm.isEmpty()) {
                        this.mPostEntity = makeFormEntity();
                    }
                    post.setEntity(this.mPostEntity);
                    Object result2 = post;
                    break;
            }
            if (this.mTryGzip) {
                result2.setHeader("Accept-Encoding", "gzip");
            }
            this.mRequest = result2;
            return result2;
        }
        throw new IllegalArgumentException("Request uri is not valid. uri=" + this.mUri);
    }

    private AbstractHttpEntity makeFormEntity() {
        AbstractHttpEntity srcEntity = this.mPostEntity;
        ArrayList<NameValuePair> postForm = this.mPostForm;
        if (this.mPostForm.isEmpty()) {
            return this.mPostEntity;
        }
        boolean multipart = srcEntity != null && (srcEntity instanceof MultipartEntity);
        if (!multipart) {
            Iterator it = postForm.iterator();
            while (it.hasNext()) {
                NameValuePair pair = (NameValuePair) it.next();
                if (!(pair instanceof FileValuePair)) {
                    if (pair instanceof ByteArrayValuePair) {
                    }
                }
                multipart = true;
            }
        }
        if (multipart) {
            AbstractHttpEntity entity;
            if (srcEntity == null || !(srcEntity instanceof MultipartEntity)) {
                entity = new MultipartEntity(toPartArray(getMergedPostValue(srcEntity, postForm)));
            } else {
                entity = (MultipartEntity) srcEntity;
                entity.appendPart(toPartArray(postForm));
            }
            return entity;
        }
        try {
            return new UrlEncodedFormEntity(this.mPostForm, Keyczar.DEFAULT_ENCODING);
        } catch (UnsupportedEncodingException e) {
            Log.e("KscHttpRequest", "JVM not support UTF_8?", e);
            throw new RuntimeException("JVM not support UTF_8?", e);
        }
    }

    private boolean isValidUri(Uri uri) {
        if (uri == null) {
            return false;
        }
        String scheme = uri.getScheme();
        if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
            return true;
        }
        return false;
    }

    public IKscDecoder getDecoder() {
        return this.mDecoder;
    }

    private static boolean isFormEntity(AbstractHttpEntity entity) {
        return entity == null || (entity instanceof MultipartEntity) || URLEncodedUtils.isEncoded(entity);
    }

    private static Part[] toPartArray(List<NameValuePair> pairs) {
        if (pairs == null || pairs.isEmpty()) {
            return null;
        }
        int size = pairs.size();
        Part[] parts = new Part[size];
        for (int i = 0; i < size; i++) {
            NameValuePair pair = (NameValuePair) pairs.get(i);
            if (pair instanceof FileValuePair) {
                try {
                    parts[i] = new FilePart(pair.getName(), ((FileValuePair) pair).getFile());
                } catch (FileNotFoundException e) {
                    throw new RuntimeException("The file to be sent should be exist. file=" + ((FileValuePair) pair).getFile(), e);
                }
            } else if (pair instanceof ByteArrayValuePair) {
                parts[i] = new FilePart(pair.getName(), pair.getValue(), ((ByteArrayValuePair) pair).getData());
            } else {
                parts[i] = new StringPart(pair.getName(), pair.getValue(), Keyczar.DEFAULT_ENCODING);
            }
        }
        return parts;
    }

    public IKscTransferListener getListener() {
        return this.mListener;
    }
}
