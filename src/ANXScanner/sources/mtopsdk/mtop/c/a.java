package mtopsdk.mtop.c;

import java.util.Map;
import mtopsdk.mtop.MtopProxy;
import mtopsdk.mtop.common.ApiID;
import mtopsdk.mtop.domain.MtopResponse;

/* compiled from: MtopTransform */
public interface a {
    MtopResponse a(MtopProxy mtopProxy, Map<String, String> map);

    ApiID b(MtopProxy mtopProxy, Map<String, String> map);
}
