package com.miui.gallery.search.resultpage;

import com.miui.gallery.search.core.result.SourceResult;
import com.miui.gallery.search.core.resultprocessor.ResultProcessor;
import java.util.List;

public class DataListResultProcessor extends ResultProcessor<DataListSourceResult> {
    protected DataListSourceResult getMergedResult(List<SourceResult> sourceResults) {
        for (SourceResult sourceResult : sourceResults) {
            if (sourceResult instanceof DataListSourceResult) {
                return (DataListSourceResult) sourceResult;
            }
        }
        return null;
    }
}
