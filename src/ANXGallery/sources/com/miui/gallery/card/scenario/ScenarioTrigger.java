package com.miui.gallery.card.scenario;

import com.miui.gallery.card.Card;
import com.miui.gallery.card.preprocess.ScenarioAlbumTask;
import com.miui.gallery.card.preprocess.ScenarioAlbumTask.CardResult;
import com.miui.gallery.card.preprocess.ScenarioTask;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.strategies.AssistantScenarioStrategy;
import com.miui.gallery.cloudcontrol.strategies.AssistantScenarioStrategy.CloudTimeScenarioRule;
import com.miui.gallery.cloudcontrol.strategies.AssistantScenarioStrategy.ScenarioRule;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.assistant.FlagUtil;
import com.miui.internal.vip.VipConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Random;
import java.util.TreeSet;
import miui.provider.ExtraTelephony.FirewallLog;

public class ScenarioTrigger {
    private int mFreeScenarioTriggerInterval = 6;
    private final List<Scenario> mFreeScenarios = new LinkedList();
    private final List<Scenario> mGuaranteeScenarios = new LinkedList();
    private final TreeSet<Scenario> mNormalScenarios = new TreeSet();

    public ScenarioTrigger() {
        AssistantScenarioStrategy assistantScenarioStrategy = CloudControlStrategyHelper.getAssistantScenarioStrategy();
        if (assistantScenarioStrategy != null) {
            Scenario.setDuplicateRemovalInterval(assistantScenarioStrategy.getDuplicateRemovalInterval());
            Scenario.setDefaultMinImageCount(assistantScenarioStrategy.getDefaultMinImageCount());
            Scenario.setDefaultMaxImageCount(assistantScenarioStrategy.getDefaultMaxImageCount());
            Scenario.setDefaultSelectedMinImageCount(assistantScenarioStrategy.getDefaultMinSelectedImageCount());
            Scenario.setDefaultSelectedMaxImageCount(assistantScenarioStrategy.getDefaultMaxSelectedImageCount());
            this.mFreeScenarioTriggerInterval = assistantScenarioStrategy.getFreeScenarioTriggerInterval();
            List<ScenarioRule> localRules = assistantScenarioStrategy.getLocalScenarioRules();
            if (BaseMiscUtil.isValid(localRules)) {
                for (ScenarioRule rule : localRules) {
                    Scenario localScenario = ScenarioFactory.createLocalScenario(rule);
                    if (localScenario != null) {
                        if (localScenario.getFlag() == 4) {
                            this.mFreeScenarios.add(localScenario);
                        } else if (localScenario.getFlag() == 16) {
                            this.mGuaranteeScenarios.add(localScenario);
                        } else {
                            this.mNormalScenarios.add(localScenario);
                        }
                    }
                }
            }
            List<CloudTimeScenarioRule> cloudTimeScenarioRules = assistantScenarioStrategy.getCloudTimeScenarioRules();
            if (BaseMiscUtil.isValid(cloudTimeScenarioRules)) {
                for (CloudTimeScenarioRule rule2 : cloudTimeScenarioRules) {
                    Scenario scenario = ScenarioFactory.createCloudTimeScenario(rule2);
                    if (scenario != null) {
                        this.mNormalScenarios.add(scenario);
                    }
                }
            }
        }
    }

    public synchronized void trigger() {
        int flagDisableMask = triggerInternal(this.mNormalScenarios, 0);
        if (flagDisableMask == 0 && BaseMiscUtil.isValid(this.mFreeScenarios) && !isCardGeneratedRecently(VipConstants.DAY * ((long) this.mFreeScenarioTriggerInterval))) {
            List<Scenario> freeScenario = new ArrayList(this.mFreeScenarios);
            randomSort(freeScenario);
            flagDisableMask = triggerInternal(freeScenario, flagDisableMask);
        }
        if (flagDisableMask == 0) {
            statScenarioTriggerFailed();
        }
    }

    public void triggerGuaranteeScenario() {
        Log.d("ScenarioTrigger", "Trigger guarantee scenarios");
        triggerInternal(this.mGuaranteeScenarios, 0);
    }

    private int triggerInternal(Collection<Scenario> scenarios, int flagDisableMask) {
        for (Scenario scenario : scenarios) {
            Log.d("ScenarioTrigger", "%s,scenario: %s %s start...", DateUtils.getDateFormat(DateUtils.getCurrentTimeMillis()), scenario.getName(), Integer.valueOf(scenario.getScenarioId()));
            if (FlagUtil.hasFlag(flagDisableMask, scenario.getFlag()) || !scenario.prepare(scenario.findRecords(), scenario.findCards())) {
                Log.d("ScenarioTrigger", "prepare failed");
            } else {
                List<Long> list = scenario.loadMediaItem();
                Record record = new Record(scenario, list);
                if (list == null || list.size() < scenario.getMinImageCount()) {
                    Log.d("ScenarioTrigger", "media items is too few %s", Integer.valueOf(list == null ? 0 : list.size()));
                    addFailedRecord(record, scenario);
                } else if (addRecord(record)) {
                    boolean z;
                    flagDisableMask |= scenario.getFlagDisableMask();
                    Log.d("ScenarioTrigger", "Scenario %s trigger successfully. Try generate card!", scenario.getClass().getSimpleName());
                    ScenarioAlbumTask scenarioAlbumTask = new ScenarioAlbumTask(2);
                    if (scenario.getFlag() == 16) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (scenarioAlbumTask.generateCard(null, record, z) == CardResult.HAVE_UNPROCESSED_IMAGES) {
                        ScenarioTask.post(2, String.valueOf(record.getId()), record.getId());
                    }
                } else {
                    Log.e("ScenarioTrigger", "add record error");
                }
            }
        }
        return flagDisableMask;
    }

    private void statScenarioTriggerFailed() {
        Log.d("ScenarioTrigger", "Scenario Trigger Failed.");
        HashMap<String, String> params = new HashMap();
        params.put(FirewallLog.REASON, "No triggered scenario");
        BaseSamplingStatHelper.recordCountEvent("assistant", "assistant_card_create_failed", params);
    }

    private void randomSort(List<Scenario> scenarios) {
        if (BaseMiscUtil.isValid(scenarios)) {
            Scenario[] scenarioArray = (Scenario[]) scenarios.toArray(new Scenario[scenarios.size()]);
            int index = scenarioArray.length;
            Random random = new Random();
            int index2 = index;
            while (index2 > 0) {
                index = index2 - 1;
                int random_index = random.nextInt(index2);
                Scenario randomOne = scenarioArray[random_index];
                scenarioArray[random_index] = scenarioArray[index];
                scenarioArray[index] = randomOne;
                index2 = index;
            }
            ListIterator<Scenario> i = scenarios.listIterator();
            for (Object obj : scenarioArray) {
                i.next();
                i.set(obj);
            }
        }
    }

    private static boolean addRecord(Record record) {
        return GalleryEntityManager.getInstance().insert((Entity) record);
    }

    private static boolean addFailedRecord(Record record, Scenario scenario) {
        record.setState(0);
        return addRecord(record);
    }

    private boolean isCardGeneratedRecently(long period) {
        List<Card> list = GalleryEntityManager.getInstance().query(Card.class, "ignored = 0", null, "createTime desc", String.format(Locale.US, "%s,%s", new Object[]{Integer.valueOf(0), Integer.valueOf(1)}));
        if (!BaseMiscUtil.isValid(list)) {
            return false;
        }
        if (DateUtils.getCurrentTimeMillis() - period < ((Card) list.get(0)).getCreateTime()) {
            return true;
        }
        return false;
    }

    public Scenario getScenarioById(int scenarioId) {
        Scenario scenario;
        Iterator it = this.mNormalScenarios.iterator();
        while (it.hasNext()) {
            scenario = (Scenario) it.next();
            if (scenario.getScenarioId() == scenarioId) {
                return scenario;
            }
        }
        for (Scenario scenario2 : this.mFreeScenarios) {
            if (scenario2.getScenarioId() == scenarioId) {
                return scenario2;
            }
        }
        for (Scenario scenario22 : this.mGuaranteeScenarios) {
            if (scenario22.getScenarioId() == scenarioId) {
                return scenario22;
            }
        }
        return null;
    }
}
