package com.taobao.tao.remotebusiness;

import mtopsdk.mtop.domain.IMTOPDataObject;
import mtopsdk.mtop.domain.MtopRequest;

@Deprecated
public class RemoteBusiness extends MtopBusiness {
    private RemoteBusiness(IMTOPDataObject iMTOPDataObject, String str) {
        super(iMTOPDataObject, str);
    }

    private RemoteBusiness(MtopRequest mtopRequest, String str) {
        super(mtopRequest, str);
    }

    public static RemoteBusiness build(IMTOPDataObject iMTOPDataObject, String str) {
        return new RemoteBusiness(iMTOPDataObject, str);
    }

    public static RemoteBusiness build(IMTOPDataObject iMTOPDataObject) {
        return new RemoteBusiness(iMTOPDataObject, null);
    }

    public static RemoteBusiness build(MtopRequest mtopRequest, String str) {
        return new RemoteBusiness(mtopRequest, str);
    }

    public static RemoteBusiness build(MtopRequest mtopRequest) {
        return new RemoteBusiness(mtopRequest, null);
    }
}
