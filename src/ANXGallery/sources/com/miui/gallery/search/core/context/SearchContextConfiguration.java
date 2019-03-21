package com.miui.gallery.search.core.context;

import android.content.Context;
import com.miui.gallery.search.core.display.SuggestionViewFactory;
import com.miui.gallery.search.core.source.Sources;

public interface SearchContextConfiguration {
    Context getContext();

    TaskExecutor getIconLoaderExecutor();

    PriorityTaskExecutor getQueryTaskExecutor();

    Sources getSources();

    SuggestionViewFactory getSuggestionViewFactory();
}
