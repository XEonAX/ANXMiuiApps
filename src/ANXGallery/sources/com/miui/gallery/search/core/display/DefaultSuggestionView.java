package com.miui.gallery.search.core.display;

import android.content.Context;
import android.view.View;
import com.miui.gallery.R;
import miui.provider.ExtraContacts.DefaultAccount;

public class DefaultSuggestionView extends View {

    public static class Factory extends SingleViewTypeFactory {
        public Factory(Context context) {
            super(DefaultAccount.NAME, R.layout.default_suggestion_item, context);
        }
    }
}
