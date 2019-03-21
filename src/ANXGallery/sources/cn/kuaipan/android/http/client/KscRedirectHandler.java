package cn.kuaipan.android.http.client;

import java.net.URI;
import java.util.LinkedList;
import java.util.List;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.protocol.HttpContext;

public class KscRedirectHandler extends DefaultRedirectHandler {
    public URI getLocationURI(HttpResponse response, HttpContext context) throws ProtocolException {
        URI result = super.getLocationURI(response, context);
        List<HttpMessage> messages = (List) context.getAttribute("ksc.message_list");
        if (messages == null) {
            messages = new LinkedList();
            context.setAttribute("ksc.message_list", messages);
        }
        messages.add(response);
        return result;
    }
}
