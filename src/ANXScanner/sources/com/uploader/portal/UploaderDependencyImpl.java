package com.uploader.portal;

import android.content.Context;
import android.support.annotation.NonNull;
import com.uploader.export.IUploaderDependency;
import com.uploader.export.IUploaderEnvironment;
import com.uploader.export.IUploaderLog;
import com.uploader.export.IUploaderStatistics;
import com.uploader.export.UploaderGlobal;

public class UploaderDependencyImpl implements IUploaderDependency {
    static Context context;
    private IUploaderEnvironment environment;
    private IUploaderLog log;
    private IUploaderStatistics statistics;

    public UploaderDependencyImpl() {
        this(null, new UploaderEnvironmentImpl2(UploaderGlobal.retrieveContext()), new UploaderLogImpl(), new UploaderStatisticsImpl());
    }

    public UploaderDependencyImpl(Context context) {
        this(context, new UploaderEnvironmentImpl2(context), new UploaderLogImpl(), new UploaderStatisticsImpl());
    }

    public UploaderDependencyImpl(Context context, IUploaderEnvironment environment) {
        this(context, environment, new UploaderLogImpl(), new UploaderStatisticsImpl());
    }

    public UploaderDependencyImpl(Context context, IUploaderEnvironment environment, IUploaderLog log, IUploaderStatistics statistics) {
        if (context == null) {
            context = UploaderGlobal.retrieveContext();
        } else {
            context = context;
        }
        this.environment = environment;
        this.log = log;
        this.statistics = statistics;
    }

    public IUploaderLog getLog() {
        return this.log;
    }

    public IUploaderStatistics getStatistics() {
        return this.statistics;
    }

    @NonNull
    public IUploaderEnvironment getEnvironment() {
        return this.environment;
    }
}
