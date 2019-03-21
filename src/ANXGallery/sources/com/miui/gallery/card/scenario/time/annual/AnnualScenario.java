package com.miui.gallery.card.scenario.time.annual;

import com.miui.gallery.card.Card;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.time.TimeScenario;
import com.miui.gallery.util.BaseMiscUtil;
import java.util.List;

public abstract class AnnualScenario extends TimeScenario {
    public AnnualScenario(int id) {
        super(id, 8, 7);
    }

    public boolean onPrepare(List<Record> records, List<Card> cards) {
        long now = DateUtils.getCurrentTimeMillis();
        long lastDayOfYearTime = DateUtils.getEndDayOfYearTime(now);
        if (now <= lastDayOfYearTime - 172800000 || now >= lastDayOfYearTime + 86400000 || BaseMiscUtil.isValid(records) || BaseMiscUtil.isValid(cards)) {
            return false;
        }
        setStartTime(DateUtils.getFirstDayOfYearTime(now));
        setEndTime(DateUtils.getEndDayOfYearTime(now) + 86400000);
        return true;
    }
}
