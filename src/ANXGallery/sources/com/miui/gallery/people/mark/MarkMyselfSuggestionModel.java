package com.miui.gallery.people.mark;

import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.miui.gallery.R;
import com.miui.gallery.model.PeopleContactInfo;
import com.miui.gallery.model.PeopleContactInfo.Relation;
import com.miui.gallery.people.mark.MarkPeopleSuggestionContract.LoadMarkSuggestionCallback;
import com.miui.gallery.people.mark.MarkPeopleSuggestionContract.MarkPeopleCallback;
import com.miui.gallery.people.mark.MarkPeopleSuggestionContract.Model;
import com.miui.gallery.people.model.People;
import com.miui.gallery.preference.GalleryPreferences.Face;
import com.miui.gallery.provider.GalleryContract.PeopleFace;
import com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.face.PeopleCursorHelper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

public class MarkMyselfSuggestionModel implements Model {

    private static class LoadPeopleTask extends AsyncTask<Void, Void, Pair<Integer, ArrayList<People>>> {
        private final int RT_INVALID = 0;
        private final int RT_NORMAL = 1;
        private final int RT_NO_NEED_MARK = 2;
        private LoadMarkSuggestionCallback mCallback;
        private WeakReference<Context> mContextRef;
        private Bundle mMarkInfo;

        public LoadPeopleTask(Context context, Bundle markInfo, LoadMarkSuggestionCallback callback) {
            this.mContextRef = new WeakReference(context);
            this.mMarkInfo = markInfo;
            this.mCallback = callback;
        }

        protected Pair<Integer, ArrayList<People>> doInBackground(Void... params) {
            final Context context = (Context) this.mContextRef.get();
            if (context == null) {
                return null;
            }
            return (Pair) SafeDBUtil.safeQuery(context, PeopleFace.PERSONS_URI, PeopleCursorHelper.PROJECTION, null, null, null, new QueryHandler<Pair<Integer, ArrayList<People>>>() {
                public Pair<Integer, ArrayList<People>> handle(Cursor cursor) {
                    Map<String, String> reportParams = new HashMap();
                    int resultType = 0;
                    ArrayList<People> peopleList = null;
                    int myselfGroupCount = 0;
                    int defaultNameCount = 0;
                    if (cursor != null && cursor.moveToFirst()) {
                        final String defaultName = PeopleContactInfo.getDefaultNameForMyself(context);
                        peopleList = new ArrayList(cursor.getCount());
                        do {
                            int relationType = PeopleCursorHelper.getRelationType(cursor);
                            if (relationType != Relation.child.getRelationType()) {
                                People people = PeopleCursorHelper.toPeople(cursor);
                                peopleList.add(people);
                                if (relationType == Relation.myself.getRelationType()) {
                                    myselfGroupCount++;
                                }
                                if (defaultName.equalsIgnoreCase(people.getName())) {
                                    defaultNameCount++;
                                }
                            }
                        } while (cursor.moveToNext());
                        if (myselfGroupCount == 1) {
                            resultType = 2;
                            reportParams.put("suggestType", "No need mark");
                        } else if (peopleList.size() > 0) {
                            resultType = 1;
                            Collections.sort(peopleList, new Comparator<People>() {
                                public int compare(People o1, People o2) {
                                    int p1 = LoadPeopleTask.this.getPeopleTypePriorityForMyself(o1, defaultName);
                                    int p2 = LoadPeopleTask.this.getPeopleTypePriorityForMyself(o2, defaultName);
                                    return p1 == p2 ? o2.getFaceCount() - o1.getFaceCount() : p1 - p2;
                                }
                            });
                            int suggestionLimit = LoadPeopleTask.this.mMarkInfo.getInt("option_suggestion_limit", -1);
                            if (suggestionLimit > 0 && peopleList.size() > suggestionLimit) {
                                peopleList = new ArrayList(peopleList.subList(0, suggestionLimit));
                            }
                            reportParams.put("suggestType", "Normal");
                            reportParams.put("peopleOfMyself", String.valueOf(myselfGroupCount));
                            reportParams.put("peopleNameOfMe", String.valueOf(defaultNameCount));
                        }
                    }
                    if (peopleList == null || peopleList.isEmpty()) {
                        reportParams.put("suggestType", "No people");
                    }
                    BaseSamplingStatHelper.recordCountEvent("people_mark", "mark_myself_triggered", reportParams);
                    return new Pair(Integer.valueOf(resultType), peopleList);
                }
            });
        }

        protected void onPostExecute(Pair<Integer, ArrayList<People>> result) {
            if (this.mCallback == null) {
                return;
            }
            if (((Integer) result.first).intValue() == 2) {
                this.mCallback.onNoNeedMark();
            } else if (((Integer) result.first).intValue() == 0 || result.second == null) {
                this.mCallback.onPeopleSuggestionLoadFailed();
            } else {
                this.mCallback.onPeopleSuggestionLoaded((ArrayList) result.second);
            }
        }

        private int getPeopleTypePriorityForMyself(People people, String defaultName) {
            if (Relation.myself == PeopleContactInfo.getRelation(people.getRelationType())) {
                return 0;
            }
            if (defaultName == null || !defaultName.equalsIgnoreCase(people.getName())) {
                return 2;
            }
            return 1;
        }
    }

    private static class MarkPeopleTask extends AsyncTask<Bundle, Void, Boolean> {
        private MarkPeopleCallback mCallback;
        private WeakReference<Context> mContextRef;
        private People mMarkPeople;

        public MarkPeopleTask(Context context, People markPeople, MarkPeopleCallback callback) {
            this.mContextRef = new WeakReference(context);
            this.mMarkPeople = markPeople;
            this.mCallback = callback;
        }

        protected Boolean doInBackground(Bundle... bundles) {
            Context context = (Context) this.mContextRef.get();
            boolean z = context != null && NormalPeopleFaceMediaSet.moveFaceToMyselfGroup(context, this.mMarkPeople.getId());
            return Boolean.valueOf(z);
        }

        protected void onPostExecute(Boolean result) {
            Context context = (Context) this.mContextRef.get();
            if (context != null && this.mCallback != null) {
                if (result == null || !result.booleanValue()) {
                    this.mCallback.onMarkPeopleFailed(context.getString(R.string.mark_operation_failed));
                } else {
                    this.mCallback.onMarkPeopleSucceeded();
                }
            }
        }
    }

    public boolean needMark(Bundle markInfo) {
        return isMarkingMyself(markInfo) && Face.getMarkMyselfTriggeredCount() <= 0 && Face.isFirstSyncCompleted();
    }

    public void loadMarkSuggestion(Context context, Bundle markInfo, LoadMarkSuggestionCallback callback) {
        if (isMarkingMyself(markInfo)) {
            new LoadPeopleTask(context, markInfo, callback).execute(new Void[0]);
        } else {
            callback.onPeopleSuggestionLoadFailed();
        }
    }

    public void markPeople(Context context, People people, Bundle markInfo, MarkPeopleCallback callback) {
        if (isMarkingMyself(markInfo)) {
            new MarkPeopleTask(context, people, callback).execute(new Bundle[]{markInfo});
            return;
        }
        callback.onMarkPeopleFailed(null);
    }

    public void onMarkSuggestionTriggered(Bundle markInfo) {
        if (isMarkingMyself(markInfo)) {
            Face.onMarkMyselfTriggered();
        }
    }

    public void setMarkResult(Bundle markInfo, boolean result) {
        if (isMarkingMyself(markInfo)) {
            Face.setMarkMyselfResult(result);
        }
    }

    private boolean isMarkingMyself(Bundle markInfo) {
        String markRelation = markInfo.getString("option_mark_relation");
        return !TextUtils.isEmpty(markRelation) && PeopleContactInfo.getRelationType(markRelation) == Relation.myself.getRelationType();
    }
}
