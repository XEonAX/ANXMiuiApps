package com.uploader.export;

import android.content.Context;
import android.os.Handler;
import android.support.annotation.NonNull;

public interface IUploaderManager {
    boolean cancelAsync(@NonNull IUploaderTask iUploaderTask);

    boolean initialize(@NonNull Context context, @NonNull IUploaderDependency iUploaderDependency);

    boolean isInitialized();

    boolean uploadAsync(@NonNull IUploaderTask iUploaderTask, @NonNull ITaskListener iTaskListener, Handler handler);
}
