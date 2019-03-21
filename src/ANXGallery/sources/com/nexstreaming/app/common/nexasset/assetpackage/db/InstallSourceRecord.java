package com.nexstreaming.app.common.nexasset.assetpackage.db;

import com.nexstreaming.app.common.nexasset.assetpackage.InstallSourceType;
import com.nexstreaming.app.common.norm.b;
import com.nexstreaming.app.common.norm.b.e;
import com.nexstreaming.app.common.norm.b.g;

public class InstallSourceRecord extends b {
    public long _id;
    @g
    @e
    public String installSourceId;
    public InstallSourceType installSourceType;
    public long installSourceVersion;
}
