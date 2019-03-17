package com.taobao.tao.remotebusiness;

import mtopsdk.mtop.common.MtopListener;
import mtopsdk.mtop.domain.MtopResponse;

public interface IRemoteParserListener extends MtopListener {
    void parseResponse(MtopResponse mtopResponse);
}
