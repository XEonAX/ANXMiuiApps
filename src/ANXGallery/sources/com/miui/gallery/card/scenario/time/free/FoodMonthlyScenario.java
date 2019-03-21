package com.miui.gallery.card.scenario.time.free;

import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.ScenarioConstants;
import java.util.List;

public class FoodMonthlyScenario extends TagMonthlyScenario {
    public FoodMonthlyScenario() {
        super(403, ScenarioConstants.TAGS_FOODS);
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        return GalleryApp.sGetAndroidContext().getResources().getString(R.string.card_title_monthly_foods);
    }
}
