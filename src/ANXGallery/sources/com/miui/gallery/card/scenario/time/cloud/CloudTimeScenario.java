package com.miui.gallery.card.scenario.time.cloud;

import android.text.TextUtils;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.time.TimeScenario;
import com.miui.gallery.cloudcontrol.strategies.AssistantScenarioStrategy.CloudTimeScenarioRule;
import com.miui.gallery.cloudcontrol.strategies.AssistantScenarioStrategy.ScenarioRule;
import com.miui.gallery.util.BaseMiscUtil;
import java.util.List;

public class CloudTimeScenario extends TimeScenario {
    private String mDescription;
    private long mEndTime;
    private long mStartTime;
    private String mTitle;

    public CloudTimeScenario(int id) {
        super(id, 4, 0);
    }

    public void onFillScenarioRule(ScenarioRule rule) {
        super.onFillScenarioRule(rule);
        if (rule != null && (rule instanceof CloudTimeScenarioRule)) {
            this.mTitle = ((CloudTimeScenarioRule) rule).getTitle();
            this.mDescription = ((CloudTimeScenarioRule) rule).getDescription();
            this.mStartTime = ((CloudTimeScenarioRule) rule).getStartTime();
            this.mEndTime = ((CloudTimeScenarioRule) rule).getEndTime();
        }
    }

    public boolean onPrepare(List<Record> records, List<Card> cards) {
        if (BaseMiscUtil.isValid(records) || BaseMiscUtil.isValid(cards) || this.mStartTime <= 0 || this.mEndTime <= this.mStartTime || TextUtils.isEmpty(this.mTitle) || TextUtils.isEmpty(this.mDescription)) {
            return false;
        }
        setStartTime(this.mStartTime);
        setEndTime(this.mEndTime);
        return true;
    }

    public String generateTitle(Record record, List<MediaFeatureItem> list) {
        return this.mTitle;
    }

    public String generateDescription(Record record, List<MediaFeatureItem> list) {
        return this.mDescription;
    }
}
