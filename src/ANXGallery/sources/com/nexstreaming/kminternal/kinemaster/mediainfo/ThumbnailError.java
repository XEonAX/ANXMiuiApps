package com.nexstreaming.kminternal.kinemaster.mediainfo;

import android.content.Context;
import com.nexstreaming.app.common.task.Task.TaskError;

enum ThumbnailError implements TaskError {
    RawFileNotFound,
    RawFileTooSmall,
    NoThumbailsFound,
    UnknownFormat,
    ParameterError;

    public Exception getException() {
        return null;
    }

    public String getMessage() {
        return name();
    }

    public String getLocalizedMessage(Context context) {
        return name();
    }
}
