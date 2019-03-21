package com.miui.gallery.search.core.context;

import android.content.Context;
import com.miui.gallery.search.core.display.SuggestionViewFactory;
import com.miui.gallery.search.core.display.SuggestionViewFactoryImpl;
import com.miui.gallery.search.core.source.SearchableSources;
import com.miui.gallery.search.core.source.Sources;

public class SearchContextConfigurationImp implements SearchContextConfiguration {
    Builder mBuilder;

    public static class Builder {
        private Context context;
        private TaskExecutor iconLoaderExecutor;
        private int iconLoaderExecutorSize = 2;
        private PriorityTaskExecutor queryTaskExecutor;
        private int queryTaskExecutorSize = 2;
        private Sources sources;
        private SuggestionViewFactory suggestionViewFactory;

        public Builder(Context context) {
            this.context = context;
        }

        public SearchContextConfigurationImp build() {
            initEmptyFieldsWithDefaultValues();
            return new SearchContextConfigurationImp(this);
        }

        private void initEmptyFieldsWithDefaultValues() {
            if (this.queryTaskExecutor == null) {
                this.queryTaskExecutor = new PriorityTaskExecutor(this.queryTaskExecutorSize);
            }
            if (this.suggestionViewFactory == null) {
                this.suggestionViewFactory = new SuggestionViewFactoryImpl(this.context);
            }
            if (this.sources == null) {
                this.sources = new SearchableSources(this.context);
            }
            if (this.iconLoaderExecutor == null) {
                this.iconLoaderExecutor = new SimpleTaskExecutor(this.iconLoaderExecutorSize);
            }
        }
    }

    public PriorityTaskExecutor getQueryTaskExecutor() {
        return this.mBuilder.queryTaskExecutor;
    }

    public TaskExecutor getIconLoaderExecutor() {
        return this.mBuilder.iconLoaderExecutor;
    }

    public SuggestionViewFactory getSuggestionViewFactory() {
        return this.mBuilder.suggestionViewFactory;
    }

    public Sources getSources() {
        return this.mBuilder.sources;
    }

    public Context getContext() {
        return this.mBuilder.context;
    }

    public static SearchContextConfigurationImp createDefault(Context context) {
        return new Builder(context).build();
    }

    private SearchContextConfigurationImp(Builder builder) {
        this.mBuilder = builder;
    }
}
