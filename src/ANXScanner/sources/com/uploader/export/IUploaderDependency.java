package com.uploader.export;

import android.support.annotation.NonNull;

public interface IUploaderDependency {
    @NonNull
    IUploaderEnvironment getEnvironment();

    IUploaderLog getLog();

    IUploaderStatistics getStatistics();
}
