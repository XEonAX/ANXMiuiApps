package com.miui.gallery.search.core.suggestion;

import com.miui.gallery.search.core.source.Source;

public interface Suggestion {
    String getIntentActionURI();

    SuggestionExtras getSuggestionExtras();

    String getSuggestionIcon();

    Source getSuggestionSource();

    String getSuggestionSubTitle();

    String getSuggestionTitle();
}
