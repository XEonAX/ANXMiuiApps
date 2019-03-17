package com.taobao.tao.remotebusiness;

import mtopsdk.mtop.common.MtopCacheEvent;
import mtopsdk.mtop.common.MtopListener;
import mtopsdk.mtop.domain.BaseOutDo;

public interface IRemoteCacheListener extends MtopListener {
    void onCached(MtopCacheEvent mtopCacheEvent, BaseOutDo baseOutDo, Object obj);
}
