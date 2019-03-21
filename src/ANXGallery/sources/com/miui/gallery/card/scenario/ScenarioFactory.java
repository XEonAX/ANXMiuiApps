package com.miui.gallery.card.scenario;

import android.util.SparseArray;
import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;
import com.miui.gallery.card.scenario.time.annual.AnnualEventsScenario;
import com.miui.gallery.card.scenario.time.annual.AnnualFoodsScenario;
import com.miui.gallery.card.scenario.time.annual.AnnualPetsScenario;
import com.miui.gallery.card.scenario.time.annual.AnnualTravelsScenario;
import com.miui.gallery.card.scenario.time.cloud.CloudTimeScenario;
import com.miui.gallery.card.scenario.time.free.CatMonthlyScenario;
import com.miui.gallery.card.scenario.time.free.DogMonthlyScenario;
import com.miui.gallery.card.scenario.time.free.FoodMonthlyScenario;
import com.miui.gallery.card.scenario.time.free.PastTravelScenario;
import com.miui.gallery.card.scenario.time.free.PastWeekendScenario;
import com.miui.gallery.card.scenario.time.guarantee.RecentMemoryScenario;
import com.miui.gallery.card.scenario.time.pastyear.ChineseHolidayScenario;
import com.miui.gallery.card.scenario.time.pastyear.PastYearActivities;
import com.miui.gallery.card.scenario.time.pastyear.PastYearMonthScenario;
import com.miui.gallery.card.scenario.time.pastyear.PastYearParty;
import com.miui.gallery.card.scenario.time.pastyear.PastYearSeasonScenario;
import com.miui.gallery.card.scenario.time.pastyear.PastYearSports;
import com.miui.gallery.card.scenario.time.pastyear.SolarHolidayScenario;
import com.miui.gallery.card.scenario.time.recent.LastMonthScenario;
import com.miui.gallery.card.scenario.time.recent.LastSeasonScenario;
import com.miui.gallery.card.scenario.time.recent.LastWeekendScenario;
import com.miui.gallery.card.scenario.time.recent.RecentTravelScenario;
import com.miui.gallery.card.scenario.time.recent.YesterdayActivitiesScenario;
import com.miui.gallery.card.scenario.time.recent.YesterdayPartyScenario;
import com.miui.gallery.card.scenario.time.recent.YesterdaySportsScenario;
import com.miui.gallery.cloudcontrol.strategies.AssistantScenarioStrategy.CloudTimeScenarioRule;
import com.miui.gallery.cloudcontrol.strategies.AssistantScenarioStrategy.ScenarioRule;
import com.miui.gallery.util.Log;

public class ScenarioFactory {
    private static final SparseArray<Class<? extends Scenario>> sScenarioClass = new SparseArray();

    static {
        sScenarioClass.put(BaiduSceneResult.SUBWAY, AnnualTravelsScenario.class);
        sScenarioClass.put(BaiduSceneResult.BICYCLE, AnnualEventsScenario.class);
        sScenarioClass.put(BaiduSceneResult.MOTORCYCLE, AnnualPetsScenario.class);
        sScenarioClass.put(BaiduSceneResult.STATION, AnnualFoodsScenario.class);
        sScenarioClass.put(BaiduSceneResult.CHURCH, LastMonthScenario.class);
        sScenarioClass.put(BaiduSceneResult.ANCIENT_CHINESE_ARCHITECTURE, LastSeasonScenario.class);
        sScenarioClass.put(BaiduSceneResult.CASTLE, LastWeekendScenario.class);
        sScenarioClass.put(BaiduSceneResult.BRIDGE, RecentTravelScenario.class);
        sScenarioClass.put(BaiduSceneResult.CAR, YesterdayActivitiesScenario.class);
        sScenarioClass.put(BaiduSceneResult.BUILDING_OTHER, YesterdayPartyScenario.class);
        sScenarioClass.put(BaiduSceneResult.FERRY, YesterdaySportsScenario.class);
        sScenarioClass.put(BaiduSceneResult.SHOOTING, ChineseHolidayScenario.class);
        sScenarioClass.put(BaiduSceneResult.STREET_VIEW, PastYearActivities.class);
        sScenarioClass.put(BaiduSceneResult.MOUNTAINEERING, PastYearMonthScenario.class);
        sScenarioClass.put(BaiduSceneResult.WESTERN_ARCHITECTURE, PastYearParty.class);
        sScenarioClass.put(BaiduSceneResult.SPORTS_OTHER, PastYearSeasonScenario.class);
        sScenarioClass.put(BaiduSceneResult.FOUNTAIN, PastYearSports.class);
        sScenarioClass.put(BaiduSceneResult.TAEKWONDO, SolarHolidayScenario.class);
        sScenarioClass.put(401, CatMonthlyScenario.class);
        sScenarioClass.put(402, DogMonthlyScenario.class);
        sScenarioClass.put(403, FoodMonthlyScenario.class);
        sScenarioClass.put(201, PastTravelScenario.class);
        sScenarioClass.put(404, PastWeekendScenario.class);
        sScenarioClass.put(501, RecentMemoryScenario.class);
    }

    public static Scenario createLocalScenario(ScenarioRule rule) {
        if (rule != null) {
            Class<? extends Scenario> scenarioClass = (Class) sScenarioClass.get(rule.getScenarioId());
            if (scenarioClass != null) {
                try {
                    Scenario scenario = (Scenario) scenarioClass.newInstance();
                    scenario.onFillScenarioRule(rule);
                    return scenario;
                } catch (Throwable e) {
                    Log.w("ScenarioFactory", e);
                    throw new IllegalStateException(e);
                } catch (Throwable e2) {
                    Log.w("ScenarioFactory", e2);
                    throw new IllegalStateException(e2);
                }
            }
        }
        return null;
    }

    public static Scenario createCloudTimeScenario(CloudTimeScenarioRule rule) {
        if (rule == null) {
            return null;
        }
        CloudTimeScenario cloudTimeScenario = new CloudTimeScenario(rule.getScenarioId());
        cloudTimeScenario.onFillScenarioRule(rule);
        return cloudTimeScenario;
    }
}
