package com.miui.gallery.search.core.suggestion;

import java.util.Collection;

public interface SuggestionExtras {
    String getExtra(String str);

    Collection<String> getExtraColumnNames();
}
