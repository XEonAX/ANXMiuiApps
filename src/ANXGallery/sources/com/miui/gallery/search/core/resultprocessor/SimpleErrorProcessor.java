package com.miui.gallery.search.core.resultprocessor;

import com.miui.gallery.search.SearchConstants;
import com.miui.gallery.search.core.result.ErrorInfo;
import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.utils.SearchUtils;
import java.util.List;

public class SimpleErrorProcessor {
    public ErrorInfo process(List<SourceResult> input) {
        if (input == null || input.isEmpty()) {
            return null;
        }
        if (input.size() == 1) {
            return ((SourceResult) input.get(0)).getErrorInfo();
        }
        ErrorInfo errorInfo = null;
        int errorStatus = -1;
        for (SourceResult sourceResult : input) {
            int sourceStatus = SearchUtils.getErrorStatus(sourceResult);
            if (SearchConstants.isErrorStatus(sourceStatus) && SearchConstants.compareErrorStatus(sourceStatus, errorStatus) > 0) {
                errorInfo = sourceResult.getErrorInfo();
                errorStatus = sourceStatus;
            }
        }
        return errorInfo;
    }
}
